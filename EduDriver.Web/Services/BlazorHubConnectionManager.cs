using Rootfly.Mobile.Core.Networking.SignalR;

namespace EduDriver.Web.Services;

#pragma warning disable CS0067
public class BlazorHubConnectionManager : IHubConnectionManager
{
    public bool IsConnected => false;
    public event Action<Exception?>? ConnectionClosed;
    public event Action<string?>? Reconnecting;
    public event Action<string?>? Reconnected;

    public Task ConnectAsync(string hubUrl, CancellationToken ct = default) => Task.CompletedTask;
    public Task DisconnectAsync(CancellationToken ct = default) => Task.CompletedTask;
    public IDisposable On<T>(string method, Action<T> handler) => new NoopDisposable();
    public IDisposable On(string method, Action handler) => new NoopDisposable();
    public Task SendAsync(string method, object? arg = null, CancellationToken ct = default) => Task.CompletedTask;
    public Task<T> InvokeAsync<T>(string method, object? arg = null, CancellationToken ct = default) => Task.FromResult(default(T)!);

    private class NoopDisposable : IDisposable { public void Dispose() { } }
}
