using Rootfly.Mobile.Core.Common.Abstractions;
using Rootfly.Mobile.Core.UI.Pages;
using EduDriver.Shared.ViewModels;

namespace EduDriver.Views.Phone;

public partial class RoutePhonePage : BaseContentPage<RouteDetailViewModel>
{
    public RoutePhonePage(RouteDetailViewModel viewModel, INavigationService navigation, IDialogService dialog, IDeviceInfoService deviceInfo)
        : base(viewModel, navigation, dialog, deviceInfo)
    {
        InitializeComponent();
    }
}
