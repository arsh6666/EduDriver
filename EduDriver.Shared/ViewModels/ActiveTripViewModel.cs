using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Rootfly.Mobile.Core.Common.Abstractions;
using Rootfly.Mobile.Core.Common.ViewModels;
using EduDriver.Shared.Education.Dtos;
using EduDriver.Shared.Education.Services;

namespace EduDriver.Shared.ViewModels;

public partial class ActiveTripViewModel : BaseViewModel
{
    private readonly IDriverApiService _driverApi;
    private readonly IBusTrackingHubService _busHub;
    private readonly ILocalizationService _l;

    [ObservableProperty] private BusTripDto? _activeTrip;
    [ObservableProperty] private List<TransportStopDto> _stops = [];
    [ObservableProperty] private List<StudentTransportDto> _allStudents = [];
    [ObservableProperty] private List<StudentChecklistItem> _currentStopStudents = [];
    [ObservableProperty] private TransportStopDto? _currentStop;
    [ObservableProperty] private int _currentStopIndex;
    [ObservableProperty] private int _totalStops;
    [ObservableProperty] private string _progressText = "0 of 0 stops";
    [ObservableProperty] private string _tripDuration = "--";
    [ObservableProperty] private bool _canEndTrip;
    [ObservableProperty] private bool _isLastStop;

    public ActiveTripViewModel(
        IDriverApiService driverApi,
        IBusTrackingHubService busTrackingHub,
        ILocalizationService localizationService)
    {
        _driverApi = driverApi;
        _busHub = busTrackingHub;
        _l = localizationService;
        Title = "Active Trip";
    }

    public Guid? RouteId { get; set; }

    public override async Task OnAppearingAsync()
    {
        if (RouteId is null) return;

        await ExecuteBusyAsync(async () =>
        {
            Title = await _l.GetStringAsync("ActiveTrip");

            // Get active trip
            var tripResult = await _driverApi.GetActiveTripAsync(RouteId.Value);
            if (!tripResult.IsSuccess || tripResult.Data is null)
            {
                ErrorMessage = "No active trip found";
                return;
            }
            ActiveTrip = tripResult.Data;

            // Load stops
            var stopsResult = await _driverApi.GetRouteStopsAsync(RouteId.Value);
            if (stopsResult.IsSuccess && stopsResult.Data is not null)
            {
                Stops = stopsResult.Data.Items.OrderBy(s => s.SequenceOrder).ToList();
                TotalStops = Stops.Count;
            }

            // Load students
            var studentsResult = await _driverApi.GetRouteStudentsAsync(RouteId.Value);
            if (studentsResult.IsSuccess && studentsResult.Data is not null)
            {
                AllStudents = studentsResult.Data.Items;
            }

            // Connect to SignalR hub for real-time tracking
            await _busHub.ConnectAsync(ActiveTrip.Id);

            // Load boarding log to determine current stop progress
            var logResult = await _driverApi.GetTripBoardingLogAsync(ActiveTrip.Id);
            var boardedStudentIds = new HashSet<Guid>();
            if (logResult.IsSuccess && logResult.Data is not null)
            {
                boardedStudentIds = logResult.Data.Items
                    .Where(l => l.Action == BoardingAction.Boarded)
                    .Select(l => l.StudentId)
                    .ToHashSet();
            }

            // Determine current stop (first stop with unboarded students)
            DetermineCurrentStop(boardedStudentIds);
            UpdateTripDuration();
        });
    }

    private void DetermineCurrentStop(HashSet<Guid> boardedStudentIds)
    {
        for (int i = 0; i < Stops.Count; i++)
        {
            var stop = Stops[i];
            var studentsAtStop = AllStudents
                .Where(s => s.PickupStopId == stop.Id)
                .ToList();

            var hasUnboarded = studentsAtStop.Any(s => !boardedStudentIds.Contains(s.StudentId));
            if (hasUnboarded || i == Stops.Count - 1)
            {
                CurrentStopIndex = i + 1;
                CurrentStop = stop;
                IsLastStop = i == Stops.Count - 1;
                CanEndTrip = IsLastStop;
                ProgressText = $"{i + 1} of {TotalStops} stops";

                CurrentStopStudents = studentsAtStop.Select(s => new StudentChecklistItem
                {
                    StudentId = s.StudentId,
                    StudentName = s.StudentName,
                    IsBoarded = boardedStudentIds.Contains(s.StudentId)
                }).ToList();
                return;
            }
        }

        // All stops completed
        CurrentStopIndex = TotalStops;
        ProgressText = $"{TotalStops} of {TotalStops} stops";
        CanEndTrip = true;
        IsLastStop = true;
    }

    private void UpdateTripDuration()
    {
        if (ActiveTrip is null) return;
        var elapsed = DateTime.UtcNow - ActiveTrip.StartTime;
        TripDuration = elapsed.TotalHours >= 1
            ? $"{(int)elapsed.TotalHours}h {elapsed.Minutes}m"
            : $"{elapsed.Minutes}m";
    }

    [RelayCommand]
    private async Task ToggleBoardedAsync(StudentChecklistItem student)
    {
        if (ActiveTrip is null || CurrentStop is null) return;

        var newAction = student.IsBoarded ? BoardingAction.Alighted : BoardingAction.Boarded;
        var result = await _driverApi.LogBoardingAsync(
            ActiveTrip.Id, student.StudentId, CurrentStop.Id, newAction);

        if (result.IsSuccess)
        {
            student.IsBoarded = !student.IsBoarded;
            CurrentStopStudents = [.. CurrentStopStudents]; // trigger UI update

            // Notify via SignalR for real-time parent notifications
            await _busHub.NotifyBoardingAsync(
                student.StudentId, CurrentStop.Id,
                newAction == BoardingAction.Boarded ? "Boarded" : "Alighted",
                DateTime.UtcNow);
        }
        else
        {
            await Dialog.ShowToastAsync(result.Error ?? "Failed to log boarding");
        }
    }

    public async Task SendLocationPingAsync(double latitude, double longitude, double? speed, double? heading)
    {
        if (!_busHub.IsConnected) return;
        await _busHub.SendLocationUpdateAsync(latitude, longitude, speed, heading);
    }

    [RelayCommand]
    private async Task MarkAllBoardedAsync()
    {
        if (ActiveTrip is null || CurrentStop is null) return;

        await ExecuteBusyAsync(async () =>
        {
            foreach (var student in CurrentStopStudents.Where(s => !s.IsBoarded))
            {
                await _driverApi.LogBoardingAsync(
                    ActiveTrip.Id, student.StudentId, CurrentStop.Id, BoardingAction.Boarded);
                student.IsBoarded = true;
            }
            CurrentStopStudents = [.. CurrentStopStudents];
        });
    }

    [RelayCommand]
    private async Task NextStopAsync()
    {
        if (CurrentStopIndex >= TotalStops) return;

        // Reload to advance
        await OnAppearingAsync();
    }

    [RelayCommand]
    private async Task EndTripAsync()
    {
        if (ActiveTrip is null) return;

        var confirmed = await Dialog.ShowConfirmAsync("End Trip", "Are you sure you want to end this trip?");
        if (!confirmed) return;

        await ExecuteBusyAsync(async () =>
        {
            var result = await _driverApi.EndTripAsync(ActiveTrip.Id);
            if (result.IsSuccess)
            {
                await Dialog.ShowToastAsync("Trip completed!");
                await Navigation.NavigateToAsync("//Main/Dashboard");
            }
            else
            {
                ErrorMessage = result.Error;
            }
        });
    }

    public override async Task OnDisappearingAsync()
    {
        await _busHub.DisconnectAsync();
    }

    [RelayCommand]
    private async Task GoBackAsync()
    {
        await Navigation.GoBackAsync();
    }
}

public partial class StudentChecklistItem : ObservableObject
{
    public Guid StudentId { get; set; }
    public string StudentName { get; set; } = string.Empty;

    [ObservableProperty] private bool _isBoarded;
}
