using EduDriver.Shared.Chat.Dtos;
using EduDriver.Shared.Education.Dtos;
using Rootfly.Mobile.Core.Common.Results;

namespace EduDriver.Shared.Chat.Services;

public interface IChatApiService
{
    Task<ApiResult<List<ChatContactDto>>> GetContactsAsync();
    Task<ApiResult<AbpPagedResultDto<ChatMessageDto>>> GetConversationAsync(Guid targetUserId, int skipCount = 0, int maxResultCount = 20);
    Task<ApiResult<ChatMessageDto>> SendMessageAsync(Guid targetUserId, string message);
    Task<ApiResult> MarkAsReadAsync(Guid targetUserId);
    Task<int> GetTotalUnreadCountAsync();
}
