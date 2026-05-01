using Rootfly.Mobile.Core.Common.Abstractions;

namespace EduDriver.Web.Services;

public class BlazorDeviceInfoService : IDeviceInfoService
{
    public bool IsPhone => false;
    public bool IsTablet => false;
    public bool IsDesktop => true;
    public double ScreenWidth => 1920;
    public double ScreenHeight => 1080;
}
