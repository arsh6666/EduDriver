namespace EduDriver.Shared.Education.Dtos;

public class TransportStopDto
{
    public Guid Id { get; set; }
    public Guid RouteId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string? Address { get; set; }
    public double Latitude { get; set; }
    public double Longitude { get; set; }
    public int SequenceOrder { get; set; }
    public TimeSpan? PickupTime { get; set; }
    public TimeSpan? DropoffTime { get; set; }
}
