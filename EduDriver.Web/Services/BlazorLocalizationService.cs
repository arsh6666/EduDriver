using Rootfly.Mobile.Core.Common.Abstractions;
using Volo.Abp.DependencyInjection;

namespace EduDriver.Web.Services;

public class BlazorLocalizationService : ILocalizationService, ISingletonDependency
{
    public Task<string> GetStringAsync(string key) => Task.FromResult(key);
    public Task<string> GetStringAsync(string resourceName, string key) => Task.FromResult(key);
    public Task SetCultureAsync(string culture) => Task.CompletedTask;
    public string GetCurrentCulture() => "en";
    public IReadOnlyList<string> GetSupportedCultures() => ["en"];
}
