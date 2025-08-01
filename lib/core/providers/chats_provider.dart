import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_dating_site/core/repositories/chats_repository.dart';
import 'package:test_dating_site/core/view_model/chats/chats_notifier.dart';
import 'package:test_dating_site/core/view_model/chats/chats_state.dart';

final chatsRepositoryProvider = Provider<IChatsRepository>((ref) {
  return ChatsRepository();
});

final chatsProvider = StateNotifierProvider<ChatsNotifier, ChatsState>((ref) {
  return ChatsNotifier(ref.watch(chatsRepositoryProvider));
});