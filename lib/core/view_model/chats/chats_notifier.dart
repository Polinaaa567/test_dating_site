import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_dating_site/core/models/email/message.dart';
import 'package:test_dating_site/core/models/users/users.dart';
import 'package:test_dating_site/core/repositories/chats_repository.dart';
import 'package:test_dating_site/core/view_model/chats/chats_state.dart';

class ChatsNotifier extends StateNotifier<ChatsState> {
  final IChatsRepository repository;

  ChatsNotifier(this.repository)
    : super(ChatsState(chatsList: const AsyncValue.loading(), error: null)) {
    fetchAllChats();
  }

  Future<void> fetchAllChats() async {
    try {
      state = state.copyWith(
        chatsList: const AsyncValue.loading(),
        error: null,
      );

      final chats = await repository.fetchAllChats();

      state = state.copyWith(chatsList: AsyncValue.data(chats), error: null);
    } catch (e, stackTrace) {
      state = state.copyWith(
        chatsList: AsyncValue.error(e, stackTrace),
        error: 'Произошла ошибка: $e',
      );
    }
  }

  void addMessage() {
    final List<Message> updatedList = [
      ...state.messageList ?? [],
      Message(lastMessage: state.message),
    ];

    state = state.copyWith(messageList: updatedList);
  }

  void stateUser(Users? user) {
    state = state.copyWith(user: user);
  }

  void updateMessage(String message) {
    state = state.copyWith(message: message);
  }
}
