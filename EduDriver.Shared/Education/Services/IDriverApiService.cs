using EduDriver.Shared.Education.Dtos;
using Rootfly.Mobile.Core.Common.Results;

namespace EduDriver.Shared.Education.Services;

public interface IDriverApiService
{
    Task<ApiResult<AbpPagedResultDto<TransportRouteDto>>> GetMyRouteAsync(Guid driverUserId);
    Task<ApiResult<AbpPagedResultDto<TransportStopDto>>> GetRouteStopsAsync(Guid routeId);
    Task<ApiResult<TransportVehicleDto>> GetVehicleAsync(Guid vehicleId);
    Task<ApiResult<AbpPagedResultDto<StudentTransportDto>>> GetRouteStudentsAsync(Guid routeId);
    Task<ApiResult<BusTripDto>> StartTripAsync(Guid routeId, Guid vehicleId);
    Task<ApiResult<BusTripDto>> EndTripAsync(Guid tripId);
    Task<ApiResult<BusTripDto?>> GetActiveTripAsync(Guid routeId);
    Task<ApiResult> PushLocationAsync(Guid tripId, double latitude, double longitude, double? speed, double? heading);
    Task<ApiResult> LogBoardingAsync(Guid tripId, Guid studentId, Guid stopId, BoardingAction action);
    Task<ApiResult<AbpPagedResultDto<StudentBoardingLogDto>>> GetTripBoardingLogAsync(Guid tripId);
    Task<ApiResult<AbpPagedResultDto<AnnouncementDto>>> GetAnnouncementsAsync(int skipCount = 0, int maxResultCount = 10);
}
