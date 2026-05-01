using Rootfly.Mobile.Core.Common.Abstractions;
using Rootfly.Mobile.Core.UI.Pages;
using EduDriver.Shared.ViewModels;

namespace EduDriver.Views.Phone;

public partial class ProfilePhonePage : BaseContentPage<PlaceholderViewModel>
{
    public ProfilePhonePage(PlaceholderViewModel viewModel, INavigationService navigation, IDialogService dialog, IDeviceInfoService deviceInfo)
        : base(viewModel, navigation, dialog, deviceInfo)
    {
        InitializeComponent();
    }
}
