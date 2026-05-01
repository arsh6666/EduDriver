using Rootfly.Mobile.Core;
using EduDriver.Shared;
using Volo.Abp.Modularity;

namespace EduDriver;

[DependsOn(
    typeof(RootflyCoreModule),
    typeof(EduDriverSharedModule)
)]
public class EduDriverModule : AbpModule
{
}
