import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_dating_site/core/models/email/message.dart';
import 'package:test_dating_site/core/models/users/users.dart';

part 'message_user.g.dart';
part 'message_user.freezed.dart';

@freezed
abstract class MessageUser with _$MessageUser {
  const factory MessageUser({Users? user, Message? message}) = _MessageUser;

  factory MessageUser.fromJson(Map<String, dynamic> json) =>
      _$MessageUserFromJson(json);
}
