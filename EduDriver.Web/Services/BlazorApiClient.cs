using System.Net.Http.Json;
using System.Text.Json;
using Rootfly.Mobile.Core.Common.Results;
using Rootfly.Mobile.Core.Networking.REST;

namespace EduDriver.Web.Services;

public class BlazorApiClient : IApiClient
{
    private readonly HttpClient _http;
    private readonly JsonSerializerOptions _jsonOptions = new()
    {
        PropertyNameCaseInsensitive = true,
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase
    };

    public BlazorApiClient(HttpClient http) => _http = http;

    public async Task<ApiResult<T>> GetAsync<T>(string url, CancellationToken ct = default)
    {
        try
        {
            var response = await _http.GetAsync(url, ct);
            return await HandleResponseAsync<T>(response);
        }
        catch (Exception ex) { return ApiResult.Failure<T>(ex.Message); }
    }

    public Task<ApiResult<T>> GetAsync<T>(string url, object queryParams, CancellationToken ct = default) => GetAsync<T>(url, ct);

    public async Task<ApiResult<T>> PostAsync<T>(string url, object body, CancellationToken ct = default)
    {
        try
        {
            var response = await _http.PostAsJsonAsync(url, body, _jsonOptions, ct);
            return await HandleResponseAsync<T>(response);
        }
        catch (Exception ex) { return ApiResult.Failure<T>(ex.Message); }
    }

    public async Task<ApiResult<T>> PutAsync<T>(string url, object body, CancellationToken ct = default)
    {
        try
        {
            var response = await _http.PutAsJsonAsync(url, body, _jsonOptions, ct);
            return await HandleResponseAsync<T>(response);
        }
        catch (Exception ex) { return ApiResult.Failure<T>(ex.Message); }
    }

    public async Task<ApiResult<T>> PatchAsync<T>(string url, object body, CancellationToken ct = default)
    {
        try
        {
            var response = await _http.PatchAsJsonAsync(url, body, _jsonOptions, ct);
            return await HandleResponseAsync<T>(response);
        }
        catch (Exception ex) { return ApiResult.Failure<T>(ex.Message); }
    }

    public async Task<ApiResult> DeleteAsync(string url, CancellationToken ct = default)
    {
        try
        {
            var response = await _http.DeleteAsync(url, ct);
            return response.IsSuccessStatusCode
                ? ApiResult.Success((int)response.StatusCode)
                : ApiResult.Failure(await response.Content.ReadAsStringAsync(ct), (int)response.StatusCode);
        }
        catch (Exception ex) { return ApiResult.Failure(ex.Message); }
    }

    public async Task<ApiResult<PagedResult<T>>> GetPagedAsync<T>(string url, object? queryParams = null, CancellationToken ct = default)
    {
        try
        {
            var response = await _http.GetAsync(url, ct);
            if (!response.IsSuccessStatusCode)
                return ApiResult.Failure<PagedResult<T>>(await response.Content.ReadAsStringAsync(ct), (int)response.StatusCode);
            var result = await response.Content.ReadFromJsonAsync<PagedResult<T>>(_jsonOptions, ct);
            return ApiResult.Success(result!, (int)response.StatusCode);
        }
        catch (Exception ex) { return ApiResult.Failure<PagedResult<T>>(ex.Message); }
    }

    private async Task<ApiResult<T>> HandleResponseAsync<T>(HttpResponseMessage response)
    {
        if (!response.IsSuccessStatusCode)
        {
            var error = await response.Content.ReadAsStringAsync();
            return ApiResult.Failure<T>(error, (int)response.StatusCode);
        }
        var data = await response.Content.ReadFromJsonAsync<T>(_jsonOptions);
        return ApiResult.Success(data!, (int)response.StatusCode);
    }
}
