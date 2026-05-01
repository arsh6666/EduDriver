using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.Collections.ObjectModel;
using Rootfly.Mobile.Core.Common.ViewModels;
using EduDriver.Shared.Chat.Dtos;
using EduDriver.Shared.Chat.Services;

namespace EduDriver.Shared.ViewModels;

public partial class ConversationViewModel : BaseViewModel
{
    private readonly IChatApiService _chatApi;
    private int _skipCount;
    private bool _hasMore = true;

    [ObservableProperty] private Guid _targetUserId;
    [ObservableProperty] private string _targetUserName = string.Empty;
    [ObservableProperty] private string _messageText = string.Empty;

    public ObservableCollection<ChatMessageDto> Messages { get; } = [];

    public ConversationViewModel(IChatApiService chatApi)
    {
        _chatApi = chatApi;
    }

    public async Task InitializeAsync(Guid targetUserId, string targetUserName)
    {
        TargetUserId = targetUserId;
        TargetUserName = targetUserName;
        Title = targetUserName;

        await ExecuteBusyAsync(async () =>
        {
            _skipCount = 0;
            Messages.Clear();
            await LoadMessagesAsync();
            await _chatApi.MarkAsReadAsync(targetUserId);
        });
    }

    [RelayCommand]
    private async Task SendMessage()
    {
        var text = MessageText?.Trim();
        if (string.IsNullOrEmpty(text)) return;

        MessageText = string.Empty;

        var result = await _chatApi.SendMessageAsync(TargetUserId, text);
        if (result.IsSuccess && result.Data is not null)
        {
            Messages.Add(result.Data);
        }
    }

    [RelayCommand]
    private async Task LoadMore()
    {
        if (IsBusy || !_hasMore) return;
        await ExecuteBusyAsync(LoadMessagesAsync);
    }

    private async Task LoadMessagesAsync()
    {
        var result = await _chatApi.GetConversationAsync(TargetUserId, _skipCount);
        if (result.IsSuccess && result.Data is not null)
        {
            foreach (var msg in result.Data.Items)
            {
                if (_skipCount == 0)
                    Messages.Add(msg);
                else
                    Messages.Insert(0, msg);
            }
            _skipCount += result.Data.Items.Count;
            _hasMore = _skipCount < result.Data.TotalCount;
        }
    }
}
