using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using MudBlazor.Services;
using EduDriver.Web;
using EduDriver.Web.Services;
using EduDriver.Shared.Education.Services;
using EduDriver.Shared.Chat.Services;
using EduDriver.Shared.ViewModels;
using Rootfly.Mobile.Core.Common.Abstractions;
using Rootfly.Mobile.Core.Networking.REST;
using Rootfly.Mobile.Core.Networking.REST.ApplicationConfiguration;
using Rootfly.Mobile.Core.Networking.SignalR;
using Rootfly.Mobile.Core.Security.Interfaces;

var builder = WebAssemblyHostBuilder.CreateDefault(args);
builder.RootComponents.Add<App>("#app");
builder.RootComponents.Add<HeadOutlet>("head::after");

builder.Services.AddMudServices();
builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri(builder.HostEnvironment.BaseAddress) });

// Core
builder.Services.AddScoped<INavigationService, BlazorNavigationService>();
builder.Services.AddScoped<Rootfly.Mobile.Core.Common.Abstractions.IDialogService, BlazorDialogService>();
builder.Services.AddScoped<IDeviceInfoService, BlazorDeviceInfoService>();
builder.Services.AddScoped<IApiClient, BlazorApiClient>();
builder.Services.AddScoped<IAuthService, BlazorAuthService>();
builder.Services.AddScoped<ILocalizationService, BlazorLocalizationService>();
builder.Services.AddScoped<IAbpApplicationConfigurationService, BlazorAppConfigurationService>();
builder.Services.AddScoped<IHubConnectionManager, BlazorHubConnectionManager>();

// Shared services
builder.Services.AddScoped<IDriverApiService, DriverApiService>();
builder.Services.AddScoped<IBusTrackingHubService, BusTrackingHubService>();
builder.Services.AddScoped<IChatApiService, ChatApiService>();

// ViewModels
builder.Services.AddTransient<LoginViewModel>();
builder.Services.AddTransient<DashboardViewModel>();
builder.Services.AddTransient<RouteDetailViewModel>();
builder.Services.AddTransient<ActiveTripViewModel>();
builder.Services.AddTransient<StudentChecklistViewModel>();
builder.Services.AddTransient<ChatListViewModel>();
builder.Services.AddTransient<ConversationViewModel>();

await builder.Build().RunAsync();
