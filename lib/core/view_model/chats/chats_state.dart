import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:test_dating_site/core/models/email/message.dart';
import 'package:test_dating_site/core/models/message_user/message_user.dart';
import 'package:test_dating_site/core/models/users/users.dart';

class ChatsState {
  final AsyncValue<List<MessageUser>> chatsList;
  final List<Message>? messageList;
  TextEditingController messageController = TextEditingController();
  final String? error;
  final String? message;
  final Users? user;

  ChatsState({
    this.error,
    this.chatsList = const AsyncValue.loading(),
    this.messageList,
    this.message,
    this.user,
    TextEditingController? messageController,
  }) : messageController = messageController ?? TextEditingController();

  ChatsState copyWith({
    AsyncValue<List<MessageUser>>? chatsList,
    List<Message>? messageList,
    TextEditingController? messageController,
    String? error,
    String? message,
    Users? user,
  }) {
    return ChatsState(
      chatsList: chatsList ?? this.chatsList,
      messageList: messageList ?? this.messageList,
      messageController: messageController ?? this.messageController,
      error: error ?? this.error,
      message: message ?? this.message,
      user: user ?? this.user,
    );
  }
}
