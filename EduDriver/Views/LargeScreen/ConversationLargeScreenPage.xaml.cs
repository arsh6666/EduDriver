using Rootfly.Mobile.Core.UI.Pages;
using EduDriver.Shared.ViewModels;

namespace EduDriver.Views.LargeScreen;

public partial class ConversationLargeScreenPage : BaseContentPage<ConversationViewModel>
{
    public ConversationLargeScreenPage(ConversationViewModel viewModel) : base(viewModel)
    {
        InitializeComponent();
    }
}
