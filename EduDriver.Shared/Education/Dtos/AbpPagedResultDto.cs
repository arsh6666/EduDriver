namespace EduDriver.Shared.Education.Dtos;

public class AbpPagedResultDto<T>
{
    public int TotalCount { get; set; }
    public List<T> Items { get; set; } = [];
}
