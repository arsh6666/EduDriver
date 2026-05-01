using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.Collections.ObjectModel;
using Rootfly.Mobile.Core.Common.Abstractions;
using Rootfly.Mobile.Core.Common.ViewModels;
using EduDriver.Shared.Chat.Dtos;
using EduDriver.Shared.Chat.Services;

namespace EduDriver.Shared.ViewModels;

public partial class ChatListViewModel : BaseViewModel
{
    private readonly IChatApiService _chatApi;
    private readonly ILocalizationService _l;

    [ObservableProperty] private int _totalUnread;
    [ObservableProperty] private string _searchQuery = string.Empty;

    private List<ChatContactDto> _allContacts = [];
    public ObservableCollection<ChatContactDto> Contacts { get; } = [];

    public ChatListViewModel(IChatApiService chatApi, ILocalizationService localizationService)
    {
        _chatApi = chatApi;
        _l = localizationService;
        Title = "Chat";
    }

    public override async Task OnAppearingAsync()
    {
        await ExecuteBusyAsync(async () =>
        {
            var result = await _chatApi.GetContactsAsync();
            if (result.IsSuccess && result.Data is not null)
            {
                _allContacts = result.Data;
                ApplyFilter();
            }

            TotalUnread = await _chatApi.GetTotalUnreadCountAsync();
        });
    }

    [RelayCommand]
    private void Search()
    {
        ApplyFilter();
    }

    [RelayCommand]
    private async Task OpenConversation(ChatContactDto contact)
    {
        await Navigation.NavigateToAsync("Conversation", new Dictionary<string, object>
        {
            ["TargetUserId"] = contact.UserId,
            ["TargetUserName"] = contact.UserName
        });
    }

    private void ApplyFilter()
    {
        Contacts.Clear();
        var filtered = string.IsNullOrWhiteSpace(SearchQuery)
            ? _allContacts
            : _allContacts.Where(c => c.UserName.Contains(SearchQuery, StringComparison.OrdinalIgnoreCase)).ToList();

        foreach (var contact in filtered)
            Contacts.Add(contact);
    }
}
