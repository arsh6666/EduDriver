using Rootfly.Mobile.Core.Common.Module;
using Rootfly.Mobile.Core.Security.Module;
using Rootfly.Mobile.Core.WhiteLabel.Module;
using Rootfly.Mobile.Core.Networking.Module;
using Volo.Abp.Modularity;

namespace EduDriver.Shared;

[DependsOn(
    typeof(RootflyCommonModule),
    typeof(RootflySecurityModule),
    typeof(RootflyWhiteLabelModule),
    typeof(RootflyNetworkingModule)
)]
public class EduDriverSharedModule : AbpModule
{
}
