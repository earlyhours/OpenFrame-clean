// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserDto {

 String get id; String get email; String get name; bool get isAdmin; DateTime? get updatedAt; DateTime get profileChangedAt; AvatarColor get avatarColor; bool get memoryEnabled; bool get inTimeline; bool get isPartnerSharedBy; bool get isPartnerSharedWith; bool get hasProfileImage; int get quotaUsageInBytes; int get quotaSizeInBytes;
/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDtoCopyWith<UserDto> get copyWith => _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);





@override
String toString() {
  return 'UserDto(id: $id, email: $email, name: $name, isAdmin: $isAdmin, updatedAt: $updatedAt, profileChangedAt: $profileChangedAt, avatarColor: $avatarColor, memoryEnabled: $memoryEnabled, inTimeline: $inTimeline, isPartnerSharedBy: $isPartnerSharedBy, isPartnerSharedWith: $isPartnerSharedWith, hasProfileImage: $hasProfileImage, quotaUsageInBytes: $quotaUsageInBytes, quotaSizeInBytes: $quotaSizeInBytes)';
}


}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res>  {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) = _$UserDtoCopyWithImpl;
@useResult
$Res call({
 String id, String email, String name, bool isAdmin, DateTime? updatedAt, DateTime profileChangedAt, AvatarColor avatarColor, bool memoryEnabled, bool inTimeline, bool isPartnerSharedBy, bool isPartnerSharedWith, bool hasProfileImage, int quotaUsageInBytes, int quotaSizeInBytes
});




}
/// @nodoc
class _$UserDtoCopyWithImpl<$Res>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._self, this._then);

  final UserDto _self;
  final $Res Function(UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? name = null,Object? isAdmin = null,Object? updatedAt = freezed,Object? profileChangedAt = null,Object? avatarColor = null,Object? memoryEnabled = null,Object? inTimeline = null,Object? isPartnerSharedBy = null,Object? isPartnerSharedWith = null,Object? hasProfileImage = null,Object? quotaUsageInBytes = null,Object? quotaSizeInBytes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,profileChangedAt: null == profileChangedAt ? _self.profileChangedAt : profileChangedAt // ignore: cast_nullable_to_non_nullable
as DateTime,avatarColor: null == avatarColor ? _self.avatarColor : avatarColor // ignore: cast_nullable_to_non_nullable
as AvatarColor,memoryEnabled: null == memoryEnabled ? _self.memoryEnabled : memoryEnabled // ignore: cast_nullable_to_non_nullable
as bool,inTimeline: null == inTimeline ? _self.inTimeline : inTimeline // ignore: cast_nullable_to_non_nullable
as bool,isPartnerSharedBy: null == isPartnerSharedBy ? _self.isPartnerSharedBy : isPartnerSharedBy // ignore: cast_nullable_to_non_nullable
as bool,isPartnerSharedWith: null == isPartnerSharedWith ? _self.isPartnerSharedWith : isPartnerSharedWith // ignore: cast_nullable_to_non_nullable
as bool,hasProfileImage: null == hasProfileImage ? _self.hasProfileImage : hasProfileImage // ignore: cast_nullable_to_non_nullable
as bool,quotaUsageInBytes: null == quotaUsageInBytes ? _self.quotaUsageInBytes : quotaUsageInBytes // ignore: cast_nullable_to_non_nullable
as int,quotaSizeInBytes: null == quotaSizeInBytes ? _self.quotaSizeInBytes : quotaSizeInBytes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDto].
extension UserDtoPatterns on UserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDto value)  $default,){
final _that = this;
switch (_that) {
case _UserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String name,  bool isAdmin,  DateTime? updatedAt,  DateTime profileChangedAt,  AvatarColor avatarColor,  bool memoryEnabled,  bool inTimeline,  bool isPartnerSharedBy,  bool isPartnerSharedWith,  bool hasProfileImage,  int quotaUsageInBytes,  int quotaSizeInBytes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.id,_that.email,_that.name,_that.isAdmin,_that.updatedAt,_that.profileChangedAt,_that.avatarColor,_that.memoryEnabled,_that.inTimeline,_that.isPartnerSharedBy,_that.isPartnerSharedWith,_that.hasProfileImage,_that.quotaUsageInBytes,_that.quotaSizeInBytes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String name,  bool isAdmin,  DateTime? updatedAt,  DateTime profileChangedAt,  AvatarColor avatarColor,  bool memoryEnabled,  bool inTimeline,  bool isPartnerSharedBy,  bool isPartnerSharedWith,  bool hasProfileImage,  int quotaUsageInBytes,  int quotaSizeInBytes)  $default,) {final _that = this;
switch (_that) {
case _UserDto():
return $default(_that.id,_that.email,_that.name,_that.isAdmin,_that.updatedAt,_that.profileChangedAt,_that.avatarColor,_that.memoryEnabled,_that.inTimeline,_that.isPartnerSharedBy,_that.isPartnerSharedWith,_that.hasProfileImage,_that.quotaUsageInBytes,_that.quotaSizeInBytes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String name,  bool isAdmin,  DateTime? updatedAt,  DateTime profileChangedAt,  AvatarColor avatarColor,  bool memoryEnabled,  bool inTimeline,  bool isPartnerSharedBy,  bool isPartnerSharedWith,  bool hasProfileImage,  int quotaUsageInBytes,  int quotaSizeInBytes)?  $default,) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.id,_that.email,_that.name,_that.isAdmin,_that.updatedAt,_that.profileChangedAt,_that.avatarColor,_that.memoryEnabled,_that.inTimeline,_that.isPartnerSharedBy,_that.isPartnerSharedWith,_that.hasProfileImage,_that.quotaUsageInBytes,_that.quotaSizeInBytes);case _:
  return null;

}
}

}

/// @nodoc


class _UserDto extends UserDto {
  const _UserDto({required this.id, required this.email, required this.name, this.isAdmin = false, this.updatedAt, required this.profileChangedAt, this.avatarColor = AvatarColor.primary, this.memoryEnabled = true, this.inTimeline = false, this.isPartnerSharedBy = false, this.isPartnerSharedWith = false, this.hasProfileImage = false, this.quotaUsageInBytes = 0, this.quotaSizeInBytes = 0}): super._();
  

@override final  String id;
@override final  String email;
@override final  String name;
@override@JsonKey() final  bool isAdmin;
@override final  DateTime? updatedAt;
@override final  DateTime profileChangedAt;
@override@JsonKey() final  AvatarColor avatarColor;
@override@JsonKey() final  bool memoryEnabled;
@override@JsonKey() final  bool inTimeline;
@override@JsonKey() final  bool isPartnerSharedBy;
@override@JsonKey() final  bool isPartnerSharedWith;
@override@JsonKey() final  bool hasProfileImage;
@override@JsonKey() final  int quotaUsageInBytes;
@override@JsonKey() final  int quotaSizeInBytes;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDtoCopyWith<_UserDto> get copyWith => __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);





@override
String toString() {
  return 'UserDto(id: $id, email: $email, name: $name, isAdmin: $isAdmin, updatedAt: $updatedAt, profileChangedAt: $profileChangedAt, avatarColor: $avatarColor, memoryEnabled: $memoryEnabled, inTimeline: $inTimeline, isPartnerSharedBy: $isPartnerSharedBy, isPartnerSharedWith: $isPartnerSharedWith, hasProfileImage: $hasProfileImage, quotaUsageInBytes: $quotaUsageInBytes, quotaSizeInBytes: $quotaSizeInBytes)';
}


}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) = __$UserDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String name, bool isAdmin, DateTime? updatedAt, DateTime profileChangedAt, AvatarColor avatarColor, bool memoryEnabled, bool inTimeline, bool isPartnerSharedBy, bool isPartnerSharedWith, bool hasProfileImage, int quotaUsageInBytes, int quotaSizeInBytes
});




}
/// @nodoc
class __$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(this._self, this._then);

  final _UserDto _self;
  final $Res Function(_UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? name = null,Object? isAdmin = null,Object? updatedAt = freezed,Object? profileChangedAt = null,Object? avatarColor = null,Object? memoryEnabled = null,Object? inTimeline = null,Object? isPartnerSharedBy = null,Object? isPartnerSharedWith = null,Object? hasProfileImage = null,Object? quotaUsageInBytes = null,Object? quotaSizeInBytes = null,}) {
  return _then(_UserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,profileChangedAt: null == profileChangedAt ? _self.profileChangedAt : profileChangedAt // ignore: cast_nullable_to_non_nullable
as DateTime,avatarColor: null == avatarColor ? _self.avatarColor : avatarColor // ignore: cast_nullable_to_non_nullable
as AvatarColor,memoryEnabled: null == memoryEnabled ? _self.memoryEnabled : memoryEnabled // ignore: cast_nullable_to_non_nullable
as bool,inTimeline: null == inTimeline ? _self.inTimeline : inTimeline // ignore: cast_nullable_to_non_nullable
as bool,isPartnerSharedBy: null == isPartnerSharedBy ? _self.isPartnerSharedBy : isPartnerSharedBy // ignore: cast_nullable_to_non_nullable
as bool,isPartnerSharedWith: null == isPartnerSharedWith ? _self.isPartnerSharedWith : isPartnerSharedWith // ignore: cast_nullable_to_non_nullable
as bool,hasProfileImage: null == hasProfileImage ? _self.hasProfileImage : hasProfileImage // ignore: cast_nullable_to_non_nullable
as bool,quotaUsageInBytes: null == quotaUsageInBytes ? _self.quotaUsageInBytes : quotaUsageInBytes // ignore: cast_nullable_to_non_nullable
as int,quotaSizeInBytes: null == quotaSizeInBytes ? _self.quotaSizeInBytes : quotaSizeInBytes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
