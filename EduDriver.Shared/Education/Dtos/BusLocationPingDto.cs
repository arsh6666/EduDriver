namespace EduDriver.Shared.Education.Dtos;

public class BusLocationPingDto
{
    public Guid TripId { get; set; }
    public double Latitude { get; set; }
    public double Longitude { get; set; }
    public double? Speed { get; set; }
    public double? Heading { get; set; }
    public double? Accuracy { get; set; }
    public DateTime Timestamp { get; set; }
}
