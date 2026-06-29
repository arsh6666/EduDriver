using Rootfly.Mobile.Core.Networking.REST.ApplicationConfiguration;
using Rootfly.Mobile.Core.Networking.REST.ApplicationConfiguration.Dtos;
using Volo.Abp.DependencyInjection;

namespace EduDriver.Web.Services;

[ExposeServices(typeof(IAbpApplicationConfigurationService))]
public class BlazorAppConfigurationService : IAbpApplicationConfigurationService, ISingletonDependency
{
    private AbpApplicationConfigurationDto _config = new();
    public bool IsLoaded { get; private set; }
    public AbpCurrentUserDto? CurrentUser => IsLoaded ? _config.CurrentUser : null;
    public AbpCurrentTenantDto? CurrentTenant => IsLoaded ? _config.CurrentTenant : null;

    public Task<AbpApplicationConfigurationDto> GetAsync(CancellationToken ct = default)
    {
        IsLoaded = true;
        return Task.FromResult(_config);
    }

    public Task<AbpApplicationConfigurationDto> RefreshAsync(CancellationToken ct = default) => GetAsync(ct);
    public string? GetSetting(string key) => _config.Setting.Values.TryGetValue(key, out var val) ? val : null;
    public string? GetFeature(string key) => _config.Features.Values.TryGetValue(key, out var val) ? val : null;
    public bool IsGranted(string policyName) => _config.Auth.GrantedPolicies.ContainsKey(policyName);

    public void Clear()
    {
        _config = new();
        IsLoaded = false;
    }
}
