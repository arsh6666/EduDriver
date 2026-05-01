namespace EduDriver.Shared.Education.Dtos;

public class TransportRouteDto
{
    public Guid Id { get; set; }
    public string Name { get; set; } = string.Empty;
    public string? Description { get; set; }
    public bool IsActive { get; set; }
    public int StopsCount { get; set; }
}
