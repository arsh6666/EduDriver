using Microsoft.AspNetCore.Components;
using Rootfly.Mobile.Core.Common.Abstractions;

namespace EduDriver.Web.Services;

public class BlazorNavigationService : INavigationService
{
    private readonly NavigationManager _nav;
    public BlazorNavigationService(NavigationManager nav) => _nav = nav;

    public Task NavigateToAsync<TViewModel>(object? parameter = null) where TViewModel : class
    {
        var name = typeof(TViewModel).Name.Replace("ViewModel", "").ToLowerInvariant();
        _nav.NavigateTo($"/{name}");
        return Task.CompletedTask;
    }

    public Task NavigateToAsync(string route, object? parameter = null)
    {
        _nav.NavigateTo(route.StartsWith('/') ? route : $"/{route}");
        return Task.CompletedTask;
    }

    public Task GoBackAsync() { _nav.NavigateTo("javascript:history.back()"); return Task.CompletedTask; }
    public Task NavigateToRootAsync() { _nav.NavigateTo("/"); return Task.CompletedTask; }

    public Task OpenUriAsync(Uri uri)
    {
        _nav.NavigateTo(uri.ToString(), forceLoad: true);
        return Task.CompletedTask;
    }
}
