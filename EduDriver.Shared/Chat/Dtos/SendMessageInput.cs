namespace EduDriver.Shared.Chat.Dtos;

public class SendMessageInput
{
    public Guid TargetUserId { get; set; }
    public string Message { get; set; } = string.Empty;
}
