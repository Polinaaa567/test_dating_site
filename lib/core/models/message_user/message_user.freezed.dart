// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageUser {

 Users? get user; Message? get message;
/// Create a copy of MessageUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageUserCopyWith<MessageUser> get copyWith => _$MessageUserCopyWithImpl<MessageUser>(this as MessageUser, _$identity);

  /// Serializes this MessageUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageUser&&(identical(other.user, user) || other.user == user)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,message);

@override
String toString() {
  return 'MessageUser(user: $user, message: $message)';
}


}

/// @nodoc
abstract mixin class $MessageUserCopyWith<$Res>  {
  factory $MessageUserCopyWith(MessageUser value, $Res Function(MessageUser) _then) = _$MessageUserCopyWithImpl;
@useResult
$Res call({
 Users? user, Message? message
});


$UsersCopyWith<$Res>? get user;$MessageCopyWith<$Res>? get message;

}
/// @nodoc
class _$MessageUserCopyWithImpl<$Res>
    implements $MessageUserCopyWith<$Res> {
  _$MessageUserCopyWithImpl(this._self, this._then);

  final MessageUser _self;
  final $Res Function(MessageUser) _then;

/// Create a copy of MessageUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as Users?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as Message?,
  ));
}
/// Create a copy of MessageUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsersCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UsersCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of MessageUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCopyWith<$Res>? get message {
    if (_self.message == null) {
    return null;
  }

  return $MessageCopyWith<$Res>(_self.message!, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// Adds pattern-matching-related methods to [MessageUser].
extension MessageUserPatterns on MessageUser {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageUser() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageUser value)  $default,){
final _that = this;
switch (_that) {
case _MessageUser():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageUser value)?  $default,){
final _that = this;
switch (_that) {
case _MessageUser() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Users? user,  Message? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageUser() when $default != null:
return $default(_that.user,_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Users? user,  Message? message)  $default,) {final _that = this;
switch (_that) {
case _MessageUser():
return $default(_that.user,_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Users? user,  Message? message)?  $default,) {final _that = this;
switch (_that) {
case _MessageUser() when $default != null:
return $default(_that.user,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageUser implements MessageUser {
  const _MessageUser({this.user, this.message});
  factory _MessageUser.fromJson(Map<String, dynamic> json) => _$MessageUserFromJson(json);

@override final  Users? user;
@override final  Message? message;

/// Create a copy of MessageUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageUserCopyWith<_MessageUser> get copyWith => __$MessageUserCopyWithImpl<_MessageUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageUser&&(identical(other.user, user) || other.user == user)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,message);

@override
String toString() {
  return 'MessageUser(user: $user, message: $message)';
}


}

/// @nodoc
abstract mixin class _$MessageUserCopyWith<$Res> implements $MessageUserCopyWith<$Res> {
  factory _$MessageUserCopyWith(_MessageUser value, $Res Function(_MessageUser) _then) = __$MessageUserCopyWithImpl;
@override @useResult
$Res call({
 Users? user, Message? message
});


@override $UsersCopyWith<$Res>? get user;@override $MessageCopyWith<$Res>? get message;

}
/// @nodoc
class __$MessageUserCopyWithImpl<$Res>
    implements _$MessageUserCopyWith<$Res> {
  __$MessageUserCopyWithImpl(this._self, this._then);

  final _MessageUser _self;
  final $Res Function(_MessageUser) _then;

/// Create a copy of MessageUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? message = freezed,}) {
  return _then(_MessageUser(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as Users?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as Message?,
  ));
}

/// Create a copy of MessageUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsersCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UsersCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of MessageUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCopyWith<$Res>? get message {
    if (_self.message == null) {
    return null;
  }

  return $MessageCopyWith<$Res>(_self.message!, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

// dart format on
