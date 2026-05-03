using Rootfly.Mobile.Core.UI.Pages;
using EduDriver.Shared.ViewModels;

namespace EduDriver.Views.LargeScreen;

public partial class LoginLargeScreenPage : BaseContentPage<LoginViewModel>
{
    public LoginLargeScreenPage(LoginViewModel viewModel) : base(viewModel)
    {
        InitializeComponent();
    }
}
