namespace EduDriver.Shared.Education.Dtos;

public class StudentBoardingLogDto
{
    public Guid TripId { get; set; }
    public Guid StudentId { get; set; }
    public Guid StopId { get; set; }
    public BoardingAction Action { get; set; }
    public DateTime Timestamp { get; set; }
    public string? StudentName { get; set; }
    public string? StopName { get; set; }
}

public enum BoardingAction
{
    Boarded,
    Alighted
}
