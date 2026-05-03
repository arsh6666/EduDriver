using Rootfly.Mobile.Core.UI.Pages;
using EduDriver.Shared.ViewModels;

namespace EduDriver.Views.LargeScreen;

public partial class ChatListLargeScreenPage : BaseContentPage<ChatListViewModel>
{
    public ChatListLargeScreenPage(ChatListViewModel viewModel) : base(viewModel)
    {
        InitializeComponent();
    }
}
