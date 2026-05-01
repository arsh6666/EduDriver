using Rootfly.Mobile.Core.Networking.SignalR;
using Volo.Abp.DependencyInjection;

namespace EduDriver.Shared.Education.Services;

public interface IBusTrackingHubService
{
    bool IsConnected { get; }
    Task ConnectAsync(Guid tripId);
    Task DisconnectAsync();
    Task SendLocationUpdateAsync(double latitude, double longitude, double? speed, double? heading);
    Task NotifyBoardingAsync(Guid studentId, Guid stopId, string action, DateTime timestamp);
    event Action<BusLocationUpdate>? LocationReceived;
}

public class BusLocationUpdate
{
    public double Latitude { get; set; }
    public double Longitude { get; set; }
    public double? Speed { get; set; }
    public double? Heading { get; set; }
    public DateTime Timestamp { get; set; }
}
