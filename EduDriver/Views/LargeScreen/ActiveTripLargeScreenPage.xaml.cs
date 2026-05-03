using Rootfly.Mobile.Core.UI.Pages;
using EduDriver.Shared.ViewModels;

namespace EduDriver.Views.LargeScreen;

public partial class ActiveTripLargeScreenPage : BaseContentPage<ActiveTripViewModel>
{
    public ActiveTripLargeScreenPage(ActiveTripViewModel viewModel) : base(viewModel)
    {
        InitializeComponent();
    }
}
