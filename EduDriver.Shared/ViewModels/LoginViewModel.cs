using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Rootfly.Mobile.Core.Common.Abstractions;
using Rootfly.Mobile.Core.Common.ViewModels;
using Rootfly.Mobile.Core.Networking.REST.ApplicationConfiguration;
using Rootfly.Mobile.Core.Security.Interfaces;

namespace EduDriver.Shared.ViewModels;

public partial class LoginViewModel : BaseViewModel
{
    private readonly IAuthService _authService;
    private readonly ILocalizationService _l;

    [ObservableProperty]
    [NotifyCanExecuteChangedFor(nameof(LoginCommand))]
    private string _email = string.Empty;

    [ObservableProperty]
    [NotifyCanExecuteChangedFor(nameof(LoginCommand))]
    private string _password = string.Empty;

    [ObservableProperty] private string _loginButtonText = "Sign In";
    [ObservableProperty] private string _emailPlaceholder = "Email";
    [ObservableProperty] private string _passwordPlaceholder = "Password";

    public LoginViewModel(IAuthService authService, ILocalizationService localizationService)
    {
        _authService = authService;
        _l = localizationService;
        Title = "Sign In";
    }

    public override async Task OnAppearingAsync()
    {
        LoginButtonText = await _l.GetStringAsync("Login");
        EmailPlaceholder = await _l.GetStringAsync("EmailAddress");
        PasswordPlaceholder = await _l.GetStringAsync("Password");
        Title = await _l.GetStringAsync("Login");
    }

    private bool CanLogin =>
        !string.IsNullOrWhiteSpace(Email) && !string.IsNullOrWhiteSpace(Password);

    [RelayCommand(CanExecute = nameof(CanLogin))]
    private async Task LoginAsync()
    {
        await ExecuteBusyAsync(async () =>
        {
            var result = await _authService.LoginAsync(Email, Password);
            if (!result.IsSuccess)
            {
                ErrorMessage = result.Error;
                return;
            }
            await Navigation.NavigateToAsync("//Dashboard");
        });
    }
}
