using Rootfly.Mobile.Core.Networking.SignalR;
using Volo.Abp.DependencyInjection;

namespace EduDriver.Shared.Education.Services;

public class BusTrackingHubService : IBusTrackingHubService, ISingletonDependency
{
    private readonly IHubConnectionManager _hub;
    private IDisposable? _locationSub;

    public bool IsConnected => _hub.IsConnected;
    public event Action<BusLocationUpdate>? LocationReceived;

    public BusTrackingHubService(IHubConnectionManager hub)
    {
        _hub = hub;
    }

    public async Task ConnectAsync(Guid tripId)
    {
        await _hub.ConnectAsync($"/signalr-hubs/bus-tracking?tripId={tripId}");
        _locationSub = _hub.On<BusLocationUpdate>("ReceiveLocationUpdate", loc =>
            LocationReceived?.Invoke(loc));
    }

    public Task DisconnectAsync()
    {
        _locationSub?.Dispose();
        return _hub.DisconnectAsync();
    }

    public Task SendLocationUpdateAsync(double latitude, double longitude, double? speed, double? heading)
        => _hub.SendAsync("SendLocationUpdate", new { latitude, longitude, speed, heading, timestamp = DateTime.UtcNow });

    public Task NotifyBoardingAsync(Guid studentId, Guid stopId, string action, DateTime timestamp)
        => _hub.SendAsync("NotifyBoarding", new { studentId, stopId, action, timestamp });
}
