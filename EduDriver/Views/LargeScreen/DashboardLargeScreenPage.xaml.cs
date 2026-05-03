using Rootfly.Mobile.Core.UI.Pages;
using EduDriver.Shared.ViewModels;

namespace EduDriver.Views.LargeScreen;

public partial class DashboardLargeScreenPage : BaseContentPage<DashboardViewModel>
{
    public DashboardLargeScreenPage(DashboardViewModel viewModel) : base(viewModel)
    {
        InitializeComponent();
    }
}
