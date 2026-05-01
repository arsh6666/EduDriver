namespace EduDriver.Shared.Chat.Dtos;

public class ChatMessageDto
{
    public Guid Id { get; set; }
    public Guid SenderId { get; set; }
    public string SenderName { get; set; } = string.Empty;
    public string Text { get; set; } = string.Empty;
    public DateTime CreationTime { get; set; }
    public bool IsRead { get; set; }
    public bool IsOwnMessage { get; set; }
}
