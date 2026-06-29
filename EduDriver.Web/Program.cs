using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using Microsoft.Extensions.DependencyInjection;
using MudBlazor.Services;
using EduDriver.Web;
using EduDriver.Web.Services;
using Rootfly.Mobile.Core.Security.Interfaces;

var builder = WebAssemblyHostBuilder.CreateDefault(args);
builder.RootComponents.Add<App>("#app");
builder.RootComponents.Add<HeadOutlet>("head::after");

// --- Framework services (not provided by ABP conventional DI) ---
builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri(builder.HostEnvironment.BaseAddress) });
builder.Services.AddMudServices();

// --- ABP conventional DI ---
// Scans EduDriverWebModule -> EduDriverSharedModule -> Core modules and auto-registers
// every Blazor platform service, Shared API service and ViewModel via their
// ISingletonDependency / ITransientDependency markers — the same way the MAUI host does.
var application = await builder.Services.AddApplicationAsync<EduDriverWebModule>();

// --- Composition-root override (the ONLY manual registration needed) ---
// IAuthService can have multiple implementations; selecting the Blazor one is a
// composition-root decision. Last registration wins.
builder.Services.AddSingleton<IAuthService, BlazorAuthService>();

var host = builder.Build();
await application.InitializeAsync(host.Services);
await host.RunAsync();
