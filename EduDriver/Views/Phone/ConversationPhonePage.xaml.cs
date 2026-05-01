using Rootfly.Mobile.Core.Common.Abstractions;
using Rootfly.Mobile.Core.UI.Pages;
using EduDriver.Shared.ViewModels;

namespace EduDriver.Views.Phone;

[QueryProperty(nameof(TargetUserId), "TargetUserId")]
[QueryProperty(nameof(TargetUserName), "TargetUserName")]
public partial class ConversationPhonePage : BaseContentPage<ConversationViewModel>
{
    public string TargetUserId { get; set; } = string.Empty;
    public string TargetUserName { get; set; } = string.Empty;

    public ConversationPhonePage(ConversationViewModel viewModel, INavigationService navigation, IDialogService dialog, IDeviceInfoService deviceInfo)
        : base(viewModel, navigation, dialog, deviceInfo)
    {
        InitializeComponent();
    }

    protected override async void OnNavigatedTo(NavigatedToEventArgs args)
    {
        base.OnNavigatedTo(args);
        if (Guid.TryParse(TargetUserId, out var userId))
        {
            await ViewModel.InitializeAsync(userId, TargetUserName);
        }
    }
}
