// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeConfig implements DiagnosticableTreeMixin {

 ThemeMode get mode; ImmichColorPreset get primaryColor; bool get dynamicTheme; bool get colorfulInterface;
/// Create a copy of ThemeConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeConfigCopyWith<ThemeConfig> get copyWith => _$ThemeConfigCopyWithImpl<ThemeConfig>(this as ThemeConfig, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ThemeConfig'))
    ..add(DiagnosticsProperty('mode', mode))..add(DiagnosticsProperty('primaryColor', primaryColor))..add(DiagnosticsProperty('dynamicTheme', dynamicTheme))..add(DiagnosticsProperty('colorfulInterface', colorfulInterface));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeConfig&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.primaryColor, primaryColor) || other.primaryColor == primaryColor)&&(identical(other.dynamicTheme, dynamicTheme) || other.dynamicTheme == dynamicTheme)&&(identical(other.colorfulInterface, colorfulInterface) || other.colorfulInterface == colorfulInterface));
}


@override
int get hashCode => Object.hash(runtimeType,mode,primaryColor,dynamicTheme,colorfulInterface);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ThemeConfig(mode: $mode, primaryColor: $primaryColor, dynamicTheme: $dynamicTheme, colorfulInterface: $colorfulInterface)';
}


}

/// @nodoc
abstract mixin class $ThemeConfigCopyWith<$Res>  {
  factory $ThemeConfigCopyWith(ThemeConfig value, $Res Function(ThemeConfig) _then) = _$ThemeConfigCopyWithImpl;
@useResult
$Res call({
 ThemeMode mode, ImmichColorPreset primaryColor, bool dynamicTheme, bool colorfulInterface
});




}
/// @nodoc
class _$ThemeConfigCopyWithImpl<$Res>
    implements $ThemeConfigCopyWith<$Res> {
  _$ThemeConfigCopyWithImpl(this._self, this._then);

  final ThemeConfig _self;
  final $Res Function(ThemeConfig) _then;

/// Create a copy of ThemeConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mode = null,Object? primaryColor = null,Object? dynamicTheme = null,Object? colorfulInterface = null,}) {
  return _then(_self.copyWith(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as ThemeMode,primaryColor: null == primaryColor ? _self.primaryColor : primaryColor // ignore: cast_nullable_to_non_nullable
as ImmichColorPreset,dynamicTheme: null == dynamicTheme ? _self.dynamicTheme : dynamicTheme // ignore: cast_nullable_to_non_nullable
as bool,colorfulInterface: null == colorfulInterface ? _self.colorfulInterface : colorfulInterface // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ThemeConfig].
extension ThemeConfigPatterns on ThemeConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThemeConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThemeConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThemeConfig value)  $default,){
final _that = this;
switch (_that) {
case _ThemeConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThemeConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ThemeConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ThemeMode mode,  ImmichColorPreset primaryColor,  bool dynamicTheme,  bool colorfulInterface)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThemeConfig() when $default != null:
return $default(_that.mode,_that.primaryColor,_that.dynamicTheme,_that.colorfulInterface);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ThemeMode mode,  ImmichColorPreset primaryColor,  bool dynamicTheme,  bool colorfulInterface)  $default,) {final _that = this;
switch (_that) {
case _ThemeConfig():
return $default(_that.mode,_that.primaryColor,_that.dynamicTheme,_that.colorfulInterface);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ThemeMode mode,  ImmichColorPreset primaryColor,  bool dynamicTheme,  bool colorfulInterface)?  $default,) {final _that = this;
switch (_that) {
case _ThemeConfig() when $default != null:
return $default(_that.mode,_that.primaryColor,_that.dynamicTheme,_that.colorfulInterface);case _:
  return null;

}
}

}

/// @nodoc


class _ThemeConfig with DiagnosticableTreeMixin implements ThemeConfig {
  const _ThemeConfig({this.mode = ThemeMode.system, this.primaryColor = ImmichColorPreset.indigo, this.dynamicTheme = false, this.colorfulInterface = true});
  

@override@JsonKey() final  ThemeMode mode;
@override@JsonKey() final  ImmichColorPreset primaryColor;
@override@JsonKey() final  bool dynamicTheme;
@override@JsonKey() final  bool colorfulInterface;

/// Create a copy of ThemeConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemeConfigCopyWith<_ThemeConfig> get copyWith => __$ThemeConfigCopyWithImpl<_ThemeConfig>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ThemeConfig'))
    ..add(DiagnosticsProperty('mode', mode))..add(DiagnosticsProperty('primaryColor', primaryColor))..add(DiagnosticsProperty('dynamicTheme', dynamicTheme))..add(DiagnosticsProperty('colorfulInterface', colorfulInterface));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeConfig&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.primaryColor, primaryColor) || other.primaryColor == primaryColor)&&(identical(other.dynamicTheme, dynamicTheme) || other.dynamicTheme == dynamicTheme)&&(identical(other.colorfulInterface, colorfulInterface) || other.colorfulInterface == colorfulInterface));
}


@override
int get hashCode => Object.hash(runtimeType,mode,primaryColor,dynamicTheme,colorfulInterface);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ThemeConfig(mode: $mode, primaryColor: $primaryColor, dynamicTheme: $dynamicTheme, colorfulInterface: $colorfulInterface)';
}


}

/// @nodoc
abstract mixin class _$ThemeConfigCopyWith<$Res> implements $ThemeConfigCopyWith<$Res> {
  factory _$ThemeConfigCopyWith(_ThemeConfig value, $Res Function(_ThemeConfig) _then) = __$ThemeConfigCopyWithImpl;
@override @useResult
$Res call({
 ThemeMode mode, ImmichColorPreset primaryColor, bool dynamicTheme, bool colorfulInterface
});




}
/// @nodoc
class __$ThemeConfigCopyWithImpl<$Res>
    implements _$ThemeConfigCopyWith<$Res> {
  __$ThemeConfigCopyWithImpl(this._self, this._then);

  final _ThemeConfig _self;
  final $Res Function(_ThemeConfig) _then;

/// Create a copy of ThemeConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mode = null,Object? primaryColor = null,Object? dynamicTheme = null,Object? colorfulInterface = null,}) {
  return _then(_ThemeConfig(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as ThemeMode,primaryColor: null == primaryColor ? _self.primaryColor : primaryColor // ignore: cast_nullable_to_non_nullable
as ImmichColorPreset,dynamicTheme: null == dynamicTheme ? _self.dynamicTheme : dynamicTheme // ignore: cast_nullable_to_non_nullable
as bool,colorfulInterface: null == colorfulInterface ? _self.colorfulInterface : colorfulInterface // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
