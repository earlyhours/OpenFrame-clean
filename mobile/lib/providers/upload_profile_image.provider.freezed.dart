// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_profile_image.provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadProfileImageState {

 UploadProfileStatus get status; String get profileImagePath;
/// Create a copy of UploadProfileImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadProfileImageStateCopyWith<UploadProfileImageState> get copyWith => _$UploadProfileImageStateCopyWithImpl<UploadProfileImageState>(this as UploadProfileImageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadProfileImageState&&(identical(other.status, status) || other.status == status)&&(identical(other.profileImagePath, profileImagePath) || other.profileImagePath == profileImagePath));
}


@override
int get hashCode => Object.hash(runtimeType,status,profileImagePath);

@override
String toString() {
  return 'UploadProfileImageState(status: $status, profileImagePath: $profileImagePath)';
}


}

/// @nodoc
abstract mixin class $UploadProfileImageStateCopyWith<$Res>  {
  factory $UploadProfileImageStateCopyWith(UploadProfileImageState value, $Res Function(UploadProfileImageState) _then) = _$UploadProfileImageStateCopyWithImpl;
@useResult
$Res call({
 UploadProfileStatus status, String profileImagePath
});




}
/// @nodoc
class _$UploadProfileImageStateCopyWithImpl<$Res>
    implements $UploadProfileImageStateCopyWith<$Res> {
  _$UploadProfileImageStateCopyWithImpl(this._self, this._then);

  final UploadProfileImageState _self;
  final $Res Function(UploadProfileImageState) _then;

/// Create a copy of UploadProfileImageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? profileImagePath = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UploadProfileStatus,profileImagePath: null == profileImagePath ? _self.profileImagePath : profileImagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadProfileImageState].
extension UploadProfileImageStatePatterns on UploadProfileImageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadProfileImageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadProfileImageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadProfileImageState value)  $default,){
final _that = this;
switch (_that) {
case _UploadProfileImageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadProfileImageState value)?  $default,){
final _that = this;
switch (_that) {
case _UploadProfileImageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UploadProfileStatus status,  String profileImagePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadProfileImageState() when $default != null:
return $default(_that.status,_that.profileImagePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UploadProfileStatus status,  String profileImagePath)  $default,) {final _that = this;
switch (_that) {
case _UploadProfileImageState():
return $default(_that.status,_that.profileImagePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UploadProfileStatus status,  String profileImagePath)?  $default,) {final _that = this;
switch (_that) {
case _UploadProfileImageState() when $default != null:
return $default(_that.status,_that.profileImagePath);case _:
  return null;

}
}

}

/// @nodoc


class _UploadProfileImageState implements UploadProfileImageState {
  const _UploadProfileImageState({required this.status, required this.profileImagePath});
  

@override final  UploadProfileStatus status;
@override final  String profileImagePath;

/// Create a copy of UploadProfileImageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadProfileImageStateCopyWith<_UploadProfileImageState> get copyWith => __$UploadProfileImageStateCopyWithImpl<_UploadProfileImageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadProfileImageState&&(identical(other.status, status) || other.status == status)&&(identical(other.profileImagePath, profileImagePath) || other.profileImagePath == profileImagePath));
}


@override
int get hashCode => Object.hash(runtimeType,status,profileImagePath);

@override
String toString() {
  return 'UploadProfileImageState(status: $status, profileImagePath: $profileImagePath)';
}


}

/// @nodoc
abstract mixin class _$UploadProfileImageStateCopyWith<$Res> implements $UploadProfileImageStateCopyWith<$Res> {
  factory _$UploadProfileImageStateCopyWith(_UploadProfileImageState value, $Res Function(_UploadProfileImageState) _then) = __$UploadProfileImageStateCopyWithImpl;
@override @useResult
$Res call({
 UploadProfileStatus status, String profileImagePath
});




}
/// @nodoc
class __$UploadProfileImageStateCopyWithImpl<$Res>
    implements _$UploadProfileImageStateCopyWith<$Res> {
  __$UploadProfileImageStateCopyWithImpl(this._self, this._then);

  final _UploadProfileImageState _self;
  final $Res Function(_UploadProfileImageState) _then;

/// Create a copy of UploadProfileImageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? profileImagePath = null,}) {
  return _then(_UploadProfileImageState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UploadProfileStatus,profileImagePath: null == profileImagePath ? _self.profileImagePath : profileImagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
