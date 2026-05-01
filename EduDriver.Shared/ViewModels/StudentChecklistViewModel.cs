using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Rootfly.Mobile.Core.Common.Abstractions;
using Rootfly.Mobile.Core.Common.ViewModels;
using EduDriver.Shared.Education.Dtos;
using EduDriver.Shared.Education.Services;

namespace EduDriver.Shared.ViewModels;

public partial class StudentChecklistViewModel : BaseViewModel
{
    private readonly IDriverApiService _driverApi;
    private readonly IBusTrackingHubService _busHub;
    private readonly ILocalizationService _l;

    [ObservableProperty] private TransportStopDto? _currentStop;
    [ObservableProperty] private List<StudentChecklistItem> _students = [];
    [ObservableProperty] private int _boardedCount;
    [ObservableProperty] private int _totalCount;
    [ObservableProperty] private string _statusText = "0 / 0 boarded";

    public StudentChecklistViewModel(
        IDriverApiService driverApi,
        IBusTrackingHubService busTrackingHub,
        ILocalizationService localizationService)
    {
        _driverApi = driverApi;
        _busHub = busTrackingHub;
        _l = localizationService;
        Title = "Student Checklist";
    }

    public Guid? TripId { get; set; }
    public Guid? StopId { get; set; }
    public List<StudentTransportDto>? StopStudents { get; set; }

    public override async Task OnAppearingAsync()
    {
        await ExecuteBusyAsync(async () =>
        {
            Title = await _l.GetStringAsync("StudentChecklist");

            if (StopStudents is null || TripId is null) return;

            // Load existing boarding log for this trip
            var logResult = await _driverApi.GetTripBoardingLogAsync(TripId.Value);
            var boardedIds = new HashSet<Guid>();
            if (logResult.IsSuccess && logResult.Data is not null)
            {
                boardedIds = logResult.Data.Items
                    .Where(l => l.Action == BoardingAction.Boarded && l.StopId == StopId)
                    .Select(l => l.StudentId)
                    .ToHashSet();
            }

            Students = StopStudents.Select(s => new StudentChecklistItem
            {
                StudentId = s.StudentId,
                StudentName = s.StudentName,
                IsBoarded = boardedIds.Contains(s.StudentId)
            }).ToList();

            TotalCount = Students.Count;
            UpdateCounts();
        });
    }

    private void UpdateCounts()
    {
        BoardedCount = Students.Count(s => s.IsBoarded);
        StatusText = $"{BoardedCount} / {TotalCount} boarded";
    }

    [RelayCommand]
    private async Task ToggleStudentAsync(StudentChecklistItem student)
    {
        if (TripId is null || StopId is null) return;

        var action = student.IsBoarded ? BoardingAction.Alighted : BoardingAction.Boarded;
        var result = await _driverApi.LogBoardingAsync(TripId.Value, student.StudentId, StopId.Value, action);
        if (result.IsSuccess)
        {
            student.IsBoarded = !student.IsBoarded;
            Students = [.. Students];
            UpdateCounts();

            // Notify via SignalR for real-time parent notifications
            await _busHub.NotifyBoardingAsync(
                student.StudentId, StopId.Value,
                action == BoardingAction.Boarded ? "Boarded" : "Alighted",
                DateTime.UtcNow);
        }
    }

    [RelayCommand]
    private async Task MarkAllBoardedAsync()
    {
        if (TripId is null || StopId is null) return;

        await ExecuteBusyAsync(async () =>
        {
            foreach (var student in Students.Where(s => !s.IsBoarded))
            {
                await _driverApi.LogBoardingAsync(TripId.Value, student.StudentId, StopId.Value, BoardingAction.Boarded);
                student.IsBoarded = true;
            }
            Students = [.. Students];
            UpdateCounts();
        });
    }

    [RelayCommand]
    private async Task ConfirmAndNextAsync()
    {
        await Dialog.ShowToastAsync("Stop confirmed!");
        await Navigation.GoBackAsync();
    }
}
