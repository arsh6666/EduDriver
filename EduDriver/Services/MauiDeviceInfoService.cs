using Rootfly.Mobile.Core.Common.Abstractions;
using Volo.Abp.DependencyInjection;

namespace EduDriver.Services;

public class MauiDeviceInfoService : IDeviceInfoService, ISingletonDependency
{
    public bool IsPhone => DeviceInfo.Current.Idiom == DeviceIdiom.Phone;
    public bool IsTablet => DeviceInfo.Current.Idiom == DeviceIdiom.Tablet;
    public bool IsDesktop => DeviceInfo.Current.Idiom == DeviceIdiom.Desktop;
    public double ScreenWidth => DeviceDisplay.Current.MainDisplayInfo.Width / DeviceDisplay.Current.MainDisplayInfo.Density;
    public double ScreenHeight => DeviceDisplay.Current.MainDisplayInfo.Height / DeviceDisplay.Current.MainDisplayInfo.Density;
}
