using EduDriver.Views.Phone;

namespace EduDriver;

public partial class AppShell : Shell
{
    public AppShell()
    {
        InitializeComponent();

        Routing.RegisterRoute("RouteDetail", typeof(RoutePhonePage));
        Routing.RegisterRoute("ActiveTrip", typeof(ActiveTripPhonePage));
        Routing.RegisterRoute("Conversation", typeof(ConversationPhonePage));
    }
}
