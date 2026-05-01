using Rootfly.Mobile.Core.Security.Interfaces;
using Rootfly.Mobile.Core.Security.Models;
using Volo.Abp.DependencyInjection;

namespace EduDriver.Services;

public class MauiTokenStorage : ITokenStorage, ISingletonDependency
{
    private const string AccessTokenKey = "auth_access_token";
    private const string RefreshTokenKey = "auth_refresh_token";
    private const string ExpiresAtKey = "auth_expires_at";

    public async Task SaveAsync(AuthToken token)
    {
        await SecureStorage.Default.SetAsync(AccessTokenKey, token.AccessToken);
        await SecureStorage.Default.SetAsync(RefreshTokenKey, token.RefreshToken);
        await SecureStorage.Default.SetAsync(ExpiresAtKey, token.ExpiresAt.ToString("O"));
    }

    public async Task<AuthToken?> GetAsync()
    {
        var accessToken = await SecureStorage.Default.GetAsync(AccessTokenKey);
        if (string.IsNullOrEmpty(accessToken))
            return null;

        var refreshToken = await SecureStorage.Default.GetAsync(RefreshTokenKey) ?? string.Empty;
        var expiresAtStr = await SecureStorage.Default.GetAsync(ExpiresAtKey);
        var expiresAt = DateTime.TryParse(expiresAtStr, out var dt) ? dt : DateTime.MinValue;

        return new AuthToken
        {
            AccessToken = accessToken,
            RefreshToken = refreshToken,
            ExpiresAt = expiresAt
        };
    }

    public Task ClearAsync()
    {
        SecureStorage.Default.Remove(AccessTokenKey);
        SecureStorage.Default.Remove(RefreshTokenKey);
        SecureStorage.Default.Remove(ExpiresAtKey);
        return Task.CompletedTask;
    }
}
