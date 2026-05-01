namespace EduDriver.Shared.Education.Dtos;

public class TransportVehicleDto
{
    public Guid Id { get; set; }
    public string VehicleNumber { get; set; } = string.Empty;
    public string? Make { get; set; }
    public string? Model { get; set; }
    public int Capacity { get; set; }
    public bool IsActive { get; set; }
}
