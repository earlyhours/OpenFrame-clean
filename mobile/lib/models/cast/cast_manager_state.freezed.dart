// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_manager_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CastManagerState {

 bool get isCasting; String get receiverName; CastState get castState; Duration get currentTime; Duration get duration;
/// Create a copy of CastManagerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CastManagerStateCopyWith<CastManagerState> get copyWith => _$CastManagerStateCopyWithImpl<CastManagerState>(this as CastManagerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CastManagerState&&(identical(other.isCasting, isCasting) || other.isCasting == isCasting)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.castState, castState) || other.castState == castState)&&(identical(other.currentTime, currentTime) || other.currentTime == currentTime)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,isCasting,receiverName,castState,currentTime,duration);

@override
String toString() {
  return 'CastManagerState(isCasting: $isCasting, receiverName: $receiverName, castState: $castState, currentTime: $currentTime, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $CastManagerStateCopyWith<$Res>  {
  factory $CastManagerStateCopyWith(CastManagerState value, $Res Function(CastManagerState) _then) = _$CastManagerStateCopyWithImpl;
@useResult
$Res call({
 bool isCasting, String receiverName, CastState castState, Duration currentTime, Duration duration
});




}
/// @nodoc
class _$CastManagerStateCopyWithImpl<$Res>
    implements $CastManagerStateCopyWith<$Res> {
  _$CastManagerStateCopyWithImpl(this._self, this._then);

  final CastManagerState _self;
  final $Res Function(CastManagerState) _then;

/// Create a copy of CastManagerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isCasting = null,Object? receiverName = null,Object? castState = null,Object? currentTime = null,Object? duration = null,}) {
  return _then(_self.copyWith(
isCasting: null == isCasting ? _self.isCasting : isCasting // ignore: cast_nullable_to_non_nullable
as bool,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,castState: null == castState ? _self.castState : castState // ignore: cast_nullable_to_non_nullable
as CastState,currentTime: null == currentTime ? _self.currentTime : currentTime // ignore: cast_nullable_to_non_nullable
as Duration,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}

}


/// Adds pattern-matching-related methods to [CastManagerState].
extension CastManagerStatePatterns on CastManagerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CastManagerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CastManagerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CastManagerState value)  $default,){
final _that = this;
switch (_that) {
case _CastManagerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CastManagerState value)?  $default,){
final _that = this;
switch (_that) {
case _CastManagerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isCasting,  String receiverName,  CastState castState,  Duration currentTime,  Duration duration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CastManagerState() when $default != null:
return $default(_that.isCasting,_that.receiverName,_that.castState,_that.currentTime,_that.duration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isCasting,  String receiverName,  CastState castState,  Duration currentTime,  Duration duration)  $default,) {final _that = this;
switch (_that) {
case _CastManagerState():
return $default(_that.isCasting,_that.receiverName,_that.castState,_that.currentTime,_that.duration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isCasting,  String receiverName,  CastState castState,  Duration currentTime,  Duration duration)?  $default,) {final _that = this;
switch (_that) {
case _CastManagerState() when $default != null:
return $default(_that.isCasting,_that.receiverName,_that.castState,_that.currentTime,_that.duration);case _:
  return null;

}
}

}

/// @nodoc


class _CastManagerState implements CastManagerState {
  const _CastManagerState({required this.isCasting, required this.receiverName, required this.castState, required this.currentTime, required this.duration});
  

@override final  bool isCasting;
@override final  String receiverName;
@override final  CastState castState;
@override final  Duration currentTime;
@override final  Duration duration;

/// Create a copy of CastManagerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CastManagerStateCopyWith<_CastManagerState> get copyWith => __$CastManagerStateCopyWithImpl<_CastManagerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CastManagerState&&(identical(other.isCasting, isCasting) || other.isCasting == isCasting)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.castState, castState) || other.castState == castState)&&(identical(other.currentTime, currentTime) || other.currentTime == currentTime)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,isCasting,receiverName,castState,currentTime,duration);

@override
String toString() {
  return 'CastManagerState(isCasting: $isCasting, receiverName: $receiverName, castState: $castState, currentTime: $currentTime, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$CastManagerStateCopyWith<$Res> implements $CastManagerStateCopyWith<$Res> {
  factory _$CastManagerStateCopyWith(_CastManagerState value, $Res Function(_CastManagerState) _then) = __$CastManagerStateCopyWithImpl;
@override @useResult
$Res call({
 bool isCasting, String receiverName, CastState castState, Duration currentTime, Duration duration
});




}
/// @nodoc
class __$CastManagerStateCopyWithImpl<$Res>
    implements _$CastManagerStateCopyWith<$Res> {
  __$CastManagerStateCopyWithImpl(this._self, this._then);

  final _CastManagerState _self;
  final $Res Function(_CastManagerState) _then;

/// Create a copy of CastManagerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isCasting = null,Object? receiverName = null,Object? castState = null,Object? currentTime = null,Object? duration = null,}) {
  return _then(_CastManagerState(
isCasting: null == isCasting ? _self.isCasting : isCasting // ignore: cast_nullable_to_non_nullable
as bool,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,castState: null == castState ? _self.castState : castState // ignore: cast_nullable_to_non_nullable
as CastState,currentTime: null == currentTime ? _self.currentTime : currentTime // ignore: cast_nullable_to_non_nullable
as Duration,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

// dart format on
