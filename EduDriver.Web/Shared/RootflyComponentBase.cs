using System.ComponentModel;
using Microsoft.AspNetCore.Components;
using Rootfly.Mobile.Core.Common.Abstractions;
using Rootfly.Mobile.Core.Common.ViewModels;

namespace EduDriver.Web.Shared;

public abstract class RootflyComponentBase<TViewModel> : ComponentBase, IDisposable
    where TViewModel : BaseViewModel
{
    [Inject] public TViewModel ViewModel { get; set; } = null!;
    [Inject] public INavigationService Navigation { get; set; } = null!;
    [Inject] public Rootfly.Mobile.Core.Common.Abstractions.IDialogService Dialog { get; set; } = null!;
    [Inject] public IDeviceInfoService DeviceInfo { get; set; } = null!;

    protected override async Task OnInitializedAsync()
    {
        ViewModel.Navigation = Navigation;
        ViewModel.Dialog = Dialog;
        ViewModel.DeviceInfo = DeviceInfo;
        ViewModel.PropertyChanged += OnViewModelPropertyChanged;
        await ViewModel.OnAppearingAsync();
    }

    private void OnViewModelPropertyChanged(object? sender, PropertyChangedEventArgs e)
    {
        InvokeAsync(StateHasChanged);
    }

    public void Dispose()
    {
        ViewModel.PropertyChanged -= OnViewModelPropertyChanged;
        GC.SuppressFinalize(this);
    }
}
