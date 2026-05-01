using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Rootfly.Mobile.Core.Common.Abstractions;
using Rootfly.Mobile.Core.Common.ViewModels;
using EduDriver.Shared.Education.Dtos;
using EduDriver.Shared.Education.Services;

namespace EduDriver.Shared.ViewModels;

public partial class RouteDetailViewModel : BaseViewModel
{
    private readonly IDriverApiService _driverApi;
    private readonly ILocalizationService _l;

    [ObservableProperty] private TransportRouteDto? _route;
    [ObservableProperty] private List<TransportStopDto> _stops = [];
    [ObservableProperty] private List<StudentTransportDto> _students = [];
    [ObservableProperty] private int _totalStudents;

    public RouteDetailViewModel(
        IDriverApiService driverApi,
        ILocalizationService localizationService)
    {
        _driverApi = driverApi;
        _l = localizationService;
        Title = "Route Details";
    }

    public Guid? RouteId { get; set; }

    public override async Task OnAppearingAsync()
    {
        if (RouteId is null) return;

        await ExecuteBusyAsync(async () =>
        {
            Title = await _l.GetStringAsync("RouteDetails");

            var stopsResult = await _driverApi.GetRouteStopsAsync(RouteId.Value);
            if (stopsResult.IsSuccess && stopsResult.Data is not null)
            {
                Stops = stopsResult.Data.Items
                    .OrderBy(s => s.SequenceOrder)
                    .ToList();
            }

            var studentsResult = await _driverApi.GetRouteStudentsAsync(RouteId.Value);
            if (studentsResult.IsSuccess && studentsResult.Data is not null)
            {
                Students = studentsResult.Data.Items;
                TotalStudents = studentsResult.Data.TotalCount;
            }
        });
    }

    [RelayCommand]
    private async Task GoBackAsync()
    {
        await Navigation.GoBackAsync();
    }
}
