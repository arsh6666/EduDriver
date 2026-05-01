using Rootfly.Mobile.Core.Common.Abstractions;
using Volo.Abp.DependencyInjection;

namespace EduDriver.Services;

public class ShellNavigationService : INavigationService, ISingletonDependency
{
    public Task NavigateToAsync<TViewModel>(object? parameter = null) where TViewModel : class
        => throw new NotSupportedException("Use route-based navigation via NavigateToAsync(string route).");

    public Task NavigateToAsync(string route, object? parameter = null)
        => Shell.Current.GoToAsync(route);

    public Task GoBackAsync()
        => Shell.Current.GoToAsync("..");

    public Task NavigateToRootAsync()
        => Shell.Current.GoToAsync("//Login");
}
