using Rootfly.Mobile.Core.UI.Pages;
using EduDriver.Shared.ViewModels;

namespace EduDriver.Views.LargeScreen;

public partial class RouteLargeScreenPage : BaseContentPage<RouteDetailViewModel>
{
    public RouteLargeScreenPage(RouteDetailViewModel viewModel) : base(viewModel)
    {
        InitializeComponent();
    }
}
