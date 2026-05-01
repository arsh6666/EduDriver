using Rootfly.Mobile.Core.Common.Abstractions;

namespace EduDriver.Web.Services;

public class BlazorDialogService : Rootfly.Mobile.Core.Common.Abstractions.IDialogService
{
    public Task ShowAlertAsync(string title, string message, string cancel = "OK") => Task.CompletedTask;
    public Task<bool> ShowConfirmAsync(string title, string message, string accept = "Yes", string cancel = "No") => Task.FromResult(true);
    public Task<string?> ShowActionSheetAsync(string title, string cancel, string? destruction, params string[] buttons) => Task.FromResult<string?>(null);
    public Task ShowToastAsync(string message) => Task.CompletedTask;
    public Task ShowLoadingAsync(string? message = null) => Task.CompletedTask;
    public void HideLoading() { }
}
