// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageUser _$MessageUserFromJson(Map<String, dynamic> json) => _MessageUser(
  user: json['user'] == null
      ? null
      : Users.fromJson(json['user'] as Map<String, dynamic>),
  message: json['message'] == null
      ? null
      : Message.fromJson(json['message'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MessageUserToJson(_MessageUser instance) =>
    <String, dynamic>{'user': instance.user, 'message': instance.message};
