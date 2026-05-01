using Controls.UserDialogs.Maui;
using Rootfly.Mobile.Core.Common.Abstractions;
using Volo.Abp.DependencyInjection;

namespace EduDriver.Services;

public class UserDialogsService : IDialogService, ISingletonDependency
{
    public Task ShowAlertAsync(string title, string message, string cancel = "OK")
        => UserDialogs.Instance.AlertAsync(message, title, cancel);

    public async Task<bool> ShowConfirmAsync(string title, string message, string accept = "Yes", string cancel = "No")
        => await UserDialogs.Instance.ConfirmAsync(message, title, accept, cancel);

    public async Task<string?> ShowActionSheetAsync(string title, string cancel, string? destruction, params string[] buttons)
        => await UserDialogs.Instance.ActionSheetAsync(title, cancel, destruction, buttons: buttons);

    public Task ShowToastAsync(string message)
    {
        UserDialogs.Instance.ShowToast(message);
        return Task.CompletedTask;
    }

    public Task ShowLoadingAsync(string? message = null)
    {
        UserDialogs.Instance.ShowLoading(message ?? string.Empty);
        return Task.CompletedTask;
    }

    public void HideLoading() => UserDialogs.Instance.HideHud();
}
