using EduDriver.Shared.Education.Dtos;
using Rootfly.Mobile.Core.Common.DTOs;
using Rootfly.Mobile.Core.Common.Results;
using Rootfly.Mobile.Core.Networking.REST;
using Volo.Abp.DependencyInjection;

namespace EduDriver.Shared.Education.Services;

public class DriverApiService : IDriverApiService, ISingletonDependency
{
    private readonly IApiClient _api;

    public DriverApiService(IApiClient api)
    {
        _api = api;
    }

    public Task<ApiResult<AbpPagedResultDto<TransportRouteDto>>> GetMyRouteAsync(Guid driverUserId)
        => _api.GetAsync<AbpPagedResultDto<TransportRouteDto>>(
            $"api/education/transport-route?DriverUserId={driverUserId}&MaxResultCount=10");

    public Task<ApiResult<AbpPagedResultDto<TransportStopDto>>> GetRouteStopsAsync(Guid routeId)
        => _api.GetAsync<AbpPagedResultDto<TransportStopDto>>(
            $"api/education/transport-route/{routeId}/stops?MaxResultCount=50");

    public Task<ApiResult<TransportVehicleDto>> GetVehicleAsync(Guid vehicleId)
        => _api.GetAsync<TransportVehicleDto>($"api/education/transport-vehicle/{vehicleId}");

    public Task<ApiResult<AbpPagedResultDto<StudentTransportDto>>> GetRouteStudentsAsync(Guid routeId)
        => _api.GetAsync<AbpPagedResultDto<StudentTransportDto>>(
            $"api/education/student-transport?RouteId={routeId}&MaxResultCount=100");

    public Task<ApiResult<BusTripDto>> StartTripAsync(Guid routeId, Guid vehicleId)
        => _api.PostAsync<BusTripDto>("api/education/bus-trip/start", new { routeId, vehicleId });

    public Task<ApiResult<BusTripDto>> EndTripAsync(Guid tripId)
        => _api.PostAsync<BusTripDto>($"api/education/bus-trip/{tripId}/end", new { });

    public Task<ApiResult<BusTripDto?>> GetActiveTripAsync(Guid routeId)
        => _api.GetAsync<BusTripDto?>($"api/education/bus-trip/active?RouteId={routeId}");

    public Task<ApiResult> PushLocationAsync(Guid tripId, double latitude, double longitude, double? speed, double? heading)
        => _api.PostAsync<object>("api/education/bus-location-ping", new
        {
            tripId,
            latitude,
            longitude,
            speed,
            heading,
            timestamp = DateTime.UtcNow
        }).AsNonGeneric();

    public Task<ApiResult> LogBoardingAsync(Guid tripId, Guid studentId, Guid stopId, BoardingAction action)
        => _api.PostAsync<object>("api/education/boarding-log", new
        {
            tripId,
            studentId,
            stopId,
            action = action.ToString(),
            timestamp = DateTime.UtcNow
        }).AsNonGeneric();

    public Task<ApiResult<AbpPagedResultDto<StudentBoardingLogDto>>> GetTripBoardingLogAsync(Guid tripId)
        => _api.GetAsync<AbpPagedResultDto<StudentBoardingLogDto>>(
            $"api/education/boarding-log?TripId={tripId}&MaxResultCount=200");

    public Task<ApiResult<AbpPagedResultDto<AnnouncementDto>>> GetAnnouncementsAsync(int skipCount = 0, int maxResultCount = 10)
        => _api.GetAsync<AbpPagedResultDto<AnnouncementDto>>(
            $"api/education/announcement?Audience=Driver&SkipCount={skipCount}&MaxResultCount={maxResultCount}");
}

internal static class ApiResultExtensions
{
    public static async Task<ApiResult> AsNonGeneric<T>(this Task<ApiResult<T>> task)
    {
        var result = await task;
        return result.IsSuccess
            ? ApiResult.Success()
            : ApiResult.Failure(result.Error ?? "Unknown error");
    }
}
