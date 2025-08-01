import 'package:freezed_annotation/freezed_annotation.dart';

part 'users.g.dart';
part 'users.freezed.dart';

@freezed
abstract class Users with _$Users {
  const factory Users({String? image}) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}
