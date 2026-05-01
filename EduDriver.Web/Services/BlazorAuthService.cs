using Rootfly.Mobile.Core.Security.Interfaces;
using Rootfly.Mobile.Core.Security.Models;

namespace EduDriver.Web.Services;

public class BlazorAuthService : IAuthService
{
    public bool IsAuthenticated { get; private set; }
    private AuthToken? _currentToken;

    public Task<AuthResult> LoginAsync(string email, string password)
    {
        IsAuthenticated = true;
        _currentToken = new AuthToken { AccessToken = "placeholder", RefreshToken = "placeholder", ExpiresAt = DateTime.UtcNow.AddHours(1) };
        return Task.FromResult(AuthResult.Success(_currentToken));
    }

    public Task<AuthResult> RefreshTokenAsync()
    {
        if (_currentToken is null) return Task.FromResult(AuthResult.Failure("No token"));
        return Task.FromResult(AuthResult.Success(_currentToken));
    }

    public Task LogoutAsync() { IsAuthenticated = false; _currentToken = null; return Task.CompletedTask; }

    public Task<UserDto?> GetCurrentUserAsync()
    {
        if (!IsAuthenticated) return Task.FromResult<UserDto?>(null);
        return Task.FromResult<UserDto?>(new UserDto { Name = "Driver User", Email = "driver@test.com" });
    }
}
