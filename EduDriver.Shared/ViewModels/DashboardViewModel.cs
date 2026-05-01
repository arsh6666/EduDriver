using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Rootfly.Mobile.Core.Common.Abstractions;
using Rootfly.Mobile.Core.Common.ViewModels;
using Rootfly.Mobile.Core.Networking.REST.ApplicationConfiguration;
using Rootfly.Mobile.Core.Security.Interfaces;
using Rootfly.Mobile.Core.Security.Models;
using EduDriver.Shared.Education.Dtos;
using EduDriver.Shared.Education.Services;

namespace EduDriver.Shared.ViewModels;

public partial class DashboardViewModel : BaseViewModel
{
    private readonly IAuthService _authService;
    private readonly ILocalizationService _l;
    private readonly IAbpApplicationConfigurationService _appConfig;
    private readonly IDriverApiService _driverApi;

    [ObservableProperty] private UserDto? _currentUser;
    [ObservableProperty] private string _welcomeMessage = string.Empty;
    [ObservableProperty] private string _todayDate = string.Empty;
    [ObservableProperty] private string _todayRoute = "--";
    [ObservableProperty] private string _vehicleInfo = "--";
    [ObservableProperty] private string _studentCount = "--";
    [ObservableProperty] private TransportRouteDto? _route;
    [ObservableProperty] private TransportVehicleDto? _vehicle;
    [ObservableProperty] private int _routeStudentCount;
    [ObservableProperty] private bool _hasActiveTrip;
    [ObservableProperty] private BusTripDto? _activeTrip;
    [ObservableProperty] private string _tripStatus = "No active trip";
    [ObservableProperty] private string _startTripButtonText = "▶  Start Trip";

    public DashboardViewModel(
        IAuthService authService,
        ILocalizationService localizationService,
        IAbpApplicationConfigurationService appConfig,
        IDriverApiService driverApi)
    {
        _authService = authService;
        _l = localizationService;
        _appConfig = appConfig;
        _driverApi = driverApi;
        Title = "Dashboard";
    }

    public override async Task OnAppearingAsync()
    {
        await ExecuteBusyAsync(async () =>
        {
            Title = await _l.GetStringAsync("Dashboard");
            TodayDate = DateTime.Now.ToString("dddd, MMMM dd");

            var user = await _authService.GetCurrentUserAsync();
            if (user is not null)
            {
                CurrentUser = user;
                var greeting = await _l.GetStringAsync("Welcome");
                WelcomeMessage = $"{greeting}, {CurrentUser.Name}!";
                await LoadRouteDataAsync(user.Id);
            }
        });
    }

    private async Task LoadRouteDataAsync(Guid userId)
    {
        var routeResult = await _driverApi.GetMyRouteAsync(userId);
        if (routeResult.IsSuccess && routeResult.Data?.Items.Count > 0)
        {
            Route = routeResult.Data.Items[0];
            TodayRoute = Route.Name;

            // Load students
            var studentsResult = await _driverApi.GetRouteStudentsAsync(Route.Id);
            if (studentsResult.IsSuccess)
            {
                RouteStudentCount = studentsResult.Data?.TotalCount ?? 0;
                StudentCount = RouteStudentCount.ToString();
            }

            // Check active trip
            var tripResult = await _driverApi.GetActiveTripAsync(Route.Id);
            if (tripResult.IsSuccess && tripResult.Data is not null)
            {
                ActiveTrip = tripResult.Data;
                HasActiveTrip = true;
                TripStatus = "Trip in progress";
                StartTripButtonText = "📍  View Active Trip";
            }
            else
            {
                HasActiveTrip = false;
                TripStatus = "No active trip";
                StartTripButtonText = "▶  Start Trip";
            }
        }
        else
        {
            TodayRoute = "No route assigned";
        }
    }

    [RelayCommand]
    private async Task StartTripAsync()
    {
        if (HasActiveTrip)
        {
            await Navigation.NavigateToAsync("ActiveTrip");
            return;
        }

        if (Route is null)
        {
            await Dialog.ShowToastAsync("No route assigned");
            return;
        }

        if (Vehicle is null)
        {
            await Dialog.ShowToastAsync("No vehicle assigned");
            return;
        }

        var confirmed = await Dialog.ShowConfirmAsync("Start Trip", "Are you sure you want to start the trip?");
        if (!confirmed) return;

        await ExecuteBusyAsync(async () =>
        {
            var result = await _driverApi.StartTripAsync(Route.Id, Vehicle.Id);
            if (result.IsSuccess)
            {
                ActiveTrip = result.Data;
                HasActiveTrip = true;
                TripStatus = "Trip in progress";
                StartTripButtonText = "📍  View Active Trip";
                await Navigation.NavigateToAsync("ActiveTrip");
            }
            else
            {
                ErrorMessage = result.Error;
            }
        });
    }

    [RelayCommand]
    private async Task ViewRouteAsync()
    {
        await Navigation.NavigateToAsync("RouteDetail");
    }

    [RelayCommand]
    private async Task SosAsync()
    {
        var confirmed = await Dialog.ShowConfirmAsync("SOS", "Are you sure you want to send an emergency alert?");
        if (confirmed)
        {
            await Dialog.ShowToastAsync("Emergency alert sent!");
        }
    }

    [RelayCommand]
    private async Task LogoutAsync()
    {
        await _authService.LogoutAsync();
        await Navigation.NavigateToAsync("//Login");
    }
}
