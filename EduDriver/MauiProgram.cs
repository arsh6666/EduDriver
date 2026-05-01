using CommunityToolkit.Maui;
using Controls.UserDialogs.Maui;
using Rootfly.Mobile.Core;

namespace EduDriver;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();

        builder
            .UseMauiApp<App>()
            .UseMauiCommunityToolkit()
            .UseUserDialogs(() =>
            {
                ToastConfig.DefaultCornerRadius = 12;
            });

        builder.UseRootfly<EduDriverModule>(options =>
        {
            options.ClientProfile = "default";
        });

        return builder.Build();
    }
}
