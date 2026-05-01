namespace EduDriver.Shared.Education.Dtos;

public class StudentTransportDto
{
    public Guid StudentId { get; set; }
    public Guid RouteId { get; set; }
    public Guid? PickupStopId { get; set; }
    public Guid? DropoffStopId { get; set; }
    public string StudentName { get; set; } = string.Empty;
    public string? PickupStopName { get; set; }
    public string? DropoffStopName { get; set; }
}
