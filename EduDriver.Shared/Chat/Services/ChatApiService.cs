using EduDriver.Shared.Chat.Dtos;
using EduDriver.Shared.Education.Dtos;
using Rootfly.Mobile.Core.Common.Results;
using Rootfly.Mobile.Core.Networking.REST;
using Volo.Abp.DependencyInjection;

namespace EduDriver.Shared.Chat.Services;

public class ChatApiService : IChatApiService, ITransientDependency
{
    private readonly IApiClient _api;

    public ChatApiService(IApiClient api)
    {
        _api = api;
    }

    public async Task<ApiResult<List<ChatContactDto>>> GetContactsAsync()
        => await _api.GetAsync<List<ChatContactDto>>("api/chat/contacts");

    public async Task<ApiResult<AbpPagedResultDto<ChatMessageDto>>> GetConversationAsync(Guid targetUserId, int skipCount = 0, int maxResultCount = 20)
        => await _api.GetAsync<AbpPagedResultDto<ChatMessageDto>>(
            $"api/chat/conversation?TargetUserId={targetUserId}&SkipCount={skipCount}&MaxResultCount={maxResultCount}");

    public async Task<ApiResult<ChatMessageDto>> SendMessageAsync(Guid targetUserId, string message)
        => await _api.PostAsync<ChatMessageDto>("api/chat/conversation/send-message",
            new SendMessageInput { TargetUserId = targetUserId, Message = message });

    public async Task<ApiResult> MarkAsReadAsync(Guid targetUserId)
        => await _api.PostAsync<object>("api/chat/conversation/mark-as-read",
            new { TargetUserId = targetUserId });

    public async Task<int> GetTotalUnreadCountAsync()
    {
        var result = await _api.GetAsync<int>("api/chat/contacts/unread-count");
        return result.IsSuccess ? result.Data : 0;
    }
}
