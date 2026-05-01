namespace EduDriver.Shared.Education.Dtos;

public class AnnouncementDto
{
    public Guid Id { get; set; }
    public string Title { get; set; } = string.Empty;
    public string Content { get; set; } = string.Empty;
    public string? Audience { get; set; }
    public bool IsPinned { get; set; }
    public bool IsPublished { get; set; }
    public DateTime CreationTime { get; set; }
    public string? CreatorName { get; set; }
}
