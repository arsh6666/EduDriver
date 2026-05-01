namespace EduDriver.Shared.Chat.Dtos;

public class ChatContactDto
{
    public Guid UserId { get; set; }
    public string UserName { get; set; } = string.Empty;
    public string? AvatarBlobName { get; set; }
    public string? LastMessage { get; set; }
    public DateTime? LastMessageTime { get; set; }
    public int UnreadCount { get; set; }
    public bool IsOnline { get; set; }
}
