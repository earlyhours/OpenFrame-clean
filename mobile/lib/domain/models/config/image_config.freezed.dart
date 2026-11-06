// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageConfig implements DiagnosticableTreeMixin {

 bool get preferRemote; bool get loadOriginal;
/// Create a copy of ImageConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageConfigCopyWith<ImageConfig> get copyWith => _$ImageConfigCopyWithImpl<ImageConfig>(this as ImageConfig, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ImageConfig'))
    ..add(DiagnosticsProperty('preferRemote', preferRemote))..add(DiagnosticsProperty('loadOriginal', loadOriginal));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageConfig&&(identical(other.preferRemote, preferRemote) || other.preferRemote == preferRemote)&&(identical(other.loadOriginal, loadOriginal) || other.loadOriginal == loadOriginal));
}


@override
int get hashCode => Object.hash(runtimeType,preferRemote,loadOriginal);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ImageConfig(preferRemote: $preferRemote, loadOriginal: $loadOriginal)';
}


}

/// @nodoc
abstract mixin class $ImageConfigCopyWith<$Res>  {
  factory $ImageConfigCopyWith(ImageConfig value, $Res Function(ImageConfig) _then) = _$ImageConfigCopyWithImpl;
@useResult
$Res call({
 bool preferRemote, bool loadOriginal
});




}
/// @nodoc
class _$ImageConfigCopyWithImpl<$Res>
    implements $ImageConfigCopyWith<$Res> {
  _$ImageConfigCopyWithImpl(this._self, this._then);

  final ImageConfig _self;
  final $Res Function(ImageConfig) _then;

/// Create a copy of ImageConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? preferRemote = null,Object? loadOriginal = null,}) {
  return _then(_self.copyWith(
preferRemote: null == preferRemote ? _self.preferRemote : preferRemote // ignore: cast_nullable_to_non_nullable
as bool,loadOriginal: null == loadOriginal ? _self.loadOriginal : loadOriginal // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageConfig].
extension ImageConfigPatterns on ImageConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageConfig value)  $default,){
final _that = this;
switch (_that) {
case _ImageConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ImageConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool preferRemote,  bool loadOriginal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageConfig() when $default != null:
return $default(_that.preferRemote,_that.loadOriginal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool preferRemote,  bool loadOriginal)  $default,) {final _that = this;
switch (_that) {
case _ImageConfig():
return $default(_that.preferRemote,_that.loadOriginal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool preferRemote,  bool loadOriginal)?  $default,) {final _that = this;
switch (_that) {
case _ImageConfig() when $default != null:
return $default(_that.preferRemote,_that.loadOriginal);case _:
  return null;

}
}

}

/// @nodoc


class _ImageConfig with DiagnosticableTreeMixin implements ImageConfig {
  const _ImageConfig({this.preferRemote = false, this.loadOriginal = false});
  

@override@JsonKey() final  bool preferRemote;
@override@JsonKey() final  bool loadOriginal;

/// Create a copy of ImageConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageConfigCopyWith<_ImageConfig> get copyWith => __$ImageConfigCopyWithImpl<_ImageConfig>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ImageConfig'))
    ..add(DiagnosticsProperty('preferRemote', preferRemote))..add(DiagnosticsProperty('loadOriginal', loadOriginal));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageConfig&&(identical(other.preferRemote, preferRemote) || other.preferRemote == preferRemote)&&(identical(other.loadOriginal, loadOriginal) || other.loadOriginal == loadOriginal));
}


@override
int get hashCode => Object.hash(runtimeType,preferRemote,loadOriginal);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ImageConfig(preferRemote: $preferRemote, loadOriginal: $loadOriginal)';
}


}

/// @nodoc
abstract mixin class _$ImageConfigCopyWith<$Res> implements $ImageConfigCopyWith<$Res> {
  factory _$ImageConfigCopyWith(_ImageConfig value, $Res Function(_ImageConfig) _then) = __$ImageConfigCopyWithImpl;
@override @useResult
$Res call({
 bool preferRemote, bool loadOriginal
});




}
/// @nodoc
class __$ImageConfigCopyWithImpl<$Res>
    implements _$ImageConfigCopyWith<$Res> {
  __$ImageConfigCopyWithImpl(this._self, this._then);

  final _ImageConfig _self;
  final $Res Function(_ImageConfig) _then;

/// Create a copy of ImageConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? preferRemote = null,Object? loadOriginal = null,}) {
  return _then(_ImageConfig(
preferRemote: null == preferRemote ? _self.preferRemote : preferRemote // ignore: cast_nullable_to_non_nullable
as bool,loadOriginal: null == loadOriginal ? _self.loadOriginal : loadOriginal // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
