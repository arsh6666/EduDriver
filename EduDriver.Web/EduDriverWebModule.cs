using EduDriver.Shared;
using Volo.Abp.Modularity;

namespace EduDriver.Web;

/// <summary>
/// ABP module for the Blazor WASM host. Bringing the Web assembly into the ABP
/// module graph lets the conventional DI scanner auto-register every Blazor
/// platform service and Shared ViewModel/service via its ISingletonDependency /
/// ITransientDependency marker — exactly like the MAUI host does.
/// </summary>
[DependsOn(typeof(EduDriverSharedModule))]
public class EduDriverWebModule : AbpModule
{
}
