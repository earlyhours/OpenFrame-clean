// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slideshow_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SlideshowConfig implements DiagnosticableTreeMixin {

 bool get repeat; int get duration; SlideshowLook get look; SlideshowDirection get direction;
/// Create a copy of SlideshowConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SlideshowConfigCopyWith<SlideshowConfig> get copyWith => _$SlideshowConfigCopyWithImpl<SlideshowConfig>(this as SlideshowConfig, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SlideshowConfig'))
    ..add(DiagnosticsProperty('repeat', repeat))..add(DiagnosticsProperty('duration', duration))..add(DiagnosticsProperty('look', look))..add(DiagnosticsProperty('direction', direction));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SlideshowConfig&&(identical(other.repeat, repeat) || other.repeat == repeat)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.look, look) || other.look == look)&&(identical(other.direction, direction) || other.direction == direction));
}


@override
int get hashCode => Object.hash(runtimeType,repeat,duration,look,direction);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SlideshowConfig(repeat: $repeat, duration: $duration, look: $look, direction: $direction)';
}


}

/// @nodoc
abstract mixin class $SlideshowConfigCopyWith<$Res>  {
  factory $SlideshowConfigCopyWith(SlideshowConfig value, $Res Function(SlideshowConfig) _then) = _$SlideshowConfigCopyWithImpl;
@useResult
$Res call({
 bool repeat, int duration, SlideshowLook look, SlideshowDirection direction
});




}
/// @nodoc
class _$SlideshowConfigCopyWithImpl<$Res>
    implements $SlideshowConfigCopyWith<$Res> {
  _$SlideshowConfigCopyWithImpl(this._self, this._then);

  final SlideshowConfig _self;
  final $Res Function(SlideshowConfig) _then;

/// Create a copy of SlideshowConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? repeat = null,Object? duration = null,Object? look = null,Object? direction = null,}) {
  return _then(_self.copyWith(
repeat: null == repeat ? _self.repeat : repeat // ignore: cast_nullable_to_non_nullable
as bool,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,look: null == look ? _self.look : look // ignore: cast_nullable_to_non_nullable
as SlideshowLook,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as SlideshowDirection,
  ));
}

}


/// Adds pattern-matching-related methods to [SlideshowConfig].
extension SlideshowConfigPatterns on SlideshowConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SlideshowConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SlideshowConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SlideshowConfig value)  $default,){
final _that = this;
switch (_that) {
case _SlideshowConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SlideshowConfig value)?  $default,){
final _that = this;
switch (_that) {
case _SlideshowConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool repeat,  int duration,  SlideshowLook look,  SlideshowDirection direction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SlideshowConfig() when $default != null:
return $default(_that.repeat,_that.duration,_that.look,_that.direction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool repeat,  int duration,  SlideshowLook look,  SlideshowDirection direction)  $default,) {final _that = this;
switch (_that) {
case _SlideshowConfig():
return $default(_that.repeat,_that.duration,_that.look,_that.direction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool repeat,  int duration,  SlideshowLook look,  SlideshowDirection direction)?  $default,) {final _that = this;
switch (_that) {
case _SlideshowConfig() when $default != null:
return $default(_that.repeat,_that.duration,_that.look,_that.direction);case _:
  return null;

}
}

}

/// @nodoc


class _SlideshowConfig with DiagnosticableTreeMixin implements SlideshowConfig {
  const _SlideshowConfig({this.repeat = true, this.duration = 5, this.look = SlideshowLook.blurredBackground, this.direction = SlideshowDirection.forward});
  

@override@JsonKey() final  bool repeat;
@override@JsonKey() final  int duration;
@override@JsonKey() final  SlideshowLook look;
@override@JsonKey() final  SlideshowDirection direction;

/// Create a copy of SlideshowConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SlideshowConfigCopyWith<_SlideshowConfig> get copyWith => __$SlideshowConfigCopyWithImpl<_SlideshowConfig>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SlideshowConfig'))
    ..add(DiagnosticsProperty('repeat', repeat))..add(DiagnosticsProperty('duration', duration))..add(DiagnosticsProperty('look', look))..add(DiagnosticsProperty('direction', direction));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SlideshowConfig&&(identical(other.repeat, repeat) || other.repeat == repeat)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.look, look) || other.look == look)&&(identical(other.direction, direction) || other.direction == direction));
}


@override
int get hashCode => Object.hash(runtimeType,repeat,duration,look,direction);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SlideshowConfig(repeat: $repeat, duration: $duration, look: $look, direction: $direction)';
}


}

/// @nodoc
abstract mixin class _$SlideshowConfigCopyWith<$Res> implements $SlideshowConfigCopyWith<$Res> {
  factory _$SlideshowConfigCopyWith(_SlideshowConfig value, $Res Function(_SlideshowConfig) _then) = __$SlideshowConfigCopyWithImpl;
@override @useResult
$Res call({
 bool repeat, int duration, SlideshowLook look, SlideshowDirection direction
});




}
/// @nodoc
class __$SlideshowConfigCopyWithImpl<$Res>
    implements _$SlideshowConfigCopyWith<$Res> {
  __$SlideshowConfigCopyWithImpl(this._self, this._then);

  final _SlideshowConfig _self;
  final $Res Function(_SlideshowConfig) _then;

/// Create a copy of SlideshowConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? repeat = null,Object? duration = null,Object? look = null,Object? direction = null,}) {
  return _then(_SlideshowConfig(
repeat: null == repeat ? _self.repeat : repeat // ignore: cast_nullable_to_non_nullable
as bool,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,look: null == look ? _self.look : look // ignore: cast_nullable_to_non_nullable
as SlideshowLook,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as SlideshowDirection,
  ));
}


}

// dart format on
