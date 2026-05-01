namespace EduDriver.Shared.Education.Dtos;

public class BusTripDto
{
    public Guid Id { get; set; }
    public Guid RouteId { get; set; }
    public Guid VehicleId { get; set; }
    public Guid DriverUserId { get; set; }
    public DateTime StartTime { get; set; }
    public DateTime? EndTime { get; set; }
    public BusTripStatus Status { get; set; }
    public string? RouteName { get; set; }
    public string? VehicleNumber { get; set; }
}

public enum BusTripStatus
{
    Active,
    Completed,
    Cancelled
}
