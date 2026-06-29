using Controls.UserDialogs.Maui;
using Rootfly.Mobile.Core.Common.Abstractions;
using Volo.Abp.DependencyInjection;

namespace EduDriver.Services;

// DI note: ABP only auto-exposes an interface when the class name ends with the interface
// name minus the leading "I". "UserDialogsService" does not end with "DialogService", so
// IDialogService must be exposed explicitly. Every call is marshalled onto the UI thread —
// ViewModels invoke these from background threads (ExecuteBusyAsync) and the native dialog
// APIs crash on Android when called off the main thread.
[ExposeServices(typeof(IDialogService))]
public class UserDialogsService : IDialogService, ISingletonDependency
{
    public Task ShowAlertAsync(string title, string message, string cancel = "OK")
        => MainThread.InvokeOnMainThreadAsync(() => UserDialogs.Instance.AlertAsync(message, title, cancel));

    public Task<bool> ShowConfirmAsync(string title, string message, string accept = "Yes", string cancel = "No")
        => MainThread.InvokeOnMainThreadAsync(() => UserDialogs.Instance.ConfirmAsync(message, title, accept, cancel));

    public async Task<string?> ShowActionSheetAsync(string title, string cancel, string? destruction, params string[] buttons)
        => await MainThread.InvokeOnMainThreadAsync(
            () => UserDialogs.Instance.ActionSheetAsync(title, cancel, destruction, buttons: buttons));

    public Task ShowToastAsync(string message)
        => MainThread.InvokeOnMainThreadAsync(() => UserDialogs.Instance.ShowToast(message));

    public Task ShowLoadingAsync(string? message = null)
        => MainThread.InvokeOnMainThreadAsync(() => UserDialogs.Instance.ShowLoading(message ?? string.Empty));

    public void HideLoading()
        => MainThread.BeginInvokeOnMainThread(() => UserDialogs.Instance.HideHud());
}
