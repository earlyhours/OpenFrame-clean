// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viewer_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ViewerConfig implements DiagnosticableTreeMixin {

 bool get loopVideo; bool get loadOriginalVideo; bool get autoPlayVideo; bool get tapToNavigate;
/// Create a copy of ViewerConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewerConfigCopyWith<ViewerConfig> get copyWith => _$ViewerConfigCopyWithImpl<ViewerConfig>(this as ViewerConfig, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ViewerConfig'))
    ..add(DiagnosticsProperty('loopVideo', loopVideo))..add(DiagnosticsProperty('loadOriginalVideo', loadOriginalVideo))..add(DiagnosticsProperty('autoPlayVideo', autoPlayVideo))..add(DiagnosticsProperty('tapToNavigate', tapToNavigate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewerConfig&&(identical(other.loopVideo, loopVideo) || other.loopVideo == loopVideo)&&(identical(other.loadOriginalVideo, loadOriginalVideo) || other.loadOriginalVideo == loadOriginalVideo)&&(identical(other.autoPlayVideo, autoPlayVideo) || other.autoPlayVideo == autoPlayVideo)&&(identical(other.tapToNavigate, tapToNavigate) || other.tapToNavigate == tapToNavigate));
}


@override
int get hashCode => Object.hash(runtimeType,loopVideo,loadOriginalVideo,autoPlayVideo,tapToNavigate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ViewerConfig(loopVideo: $loopVideo, loadOriginalVideo: $loadOriginalVideo, autoPlayVideo: $autoPlayVideo, tapToNavigate: $tapToNavigate)';
}


}

/// @nodoc
abstract mixin class $ViewerConfigCopyWith<$Res>  {
  factory $ViewerConfigCopyWith(ViewerConfig value, $Res Function(ViewerConfig) _then) = _$ViewerConfigCopyWithImpl;
@useResult
$Res call({
 bool loopVideo, bool loadOriginalVideo, bool autoPlayVideo, bool tapToNavigate
});




}
/// @nodoc
class _$ViewerConfigCopyWithImpl<$Res>
    implements $ViewerConfigCopyWith<$Res> {
  _$ViewerConfigCopyWithImpl(this._self, this._then);

  final ViewerConfig _self;
  final $Res Function(ViewerConfig) _then;

/// Create a copy of ViewerConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loopVideo = null,Object? loadOriginalVideo = null,Object? autoPlayVideo = null,Object? tapToNavigate = null,}) {
  return _then(_self.copyWith(
loopVideo: null == loopVideo ? _self.loopVideo : loopVideo // ignore: cast_nullable_to_non_nullable
as bool,loadOriginalVideo: null == loadOriginalVideo ? _self.loadOriginalVideo : loadOriginalVideo // ignore: cast_nullable_to_non_nullable
as bool,autoPlayVideo: null == autoPlayVideo ? _self.autoPlayVideo : autoPlayVideo // ignore: cast_nullable_to_non_nullable
as bool,tapToNavigate: null == tapToNavigate ? _self.tapToNavigate : tapToNavigate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ViewerConfig].
extension ViewerConfigPatterns on ViewerConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ViewerConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ViewerConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ViewerConfig value)  $default,){
final _that = this;
switch (_that) {
case _ViewerConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ViewerConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ViewerConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loopVideo,  bool loadOriginalVideo,  bool autoPlayVideo,  bool tapToNavigate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ViewerConfig() when $default != null:
return $default(_that.loopVideo,_that.loadOriginalVideo,_that.autoPlayVideo,_that.tapToNavigate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loopVideo,  bool loadOriginalVideo,  bool autoPlayVideo,  bool tapToNavigate)  $default,) {final _that = this;
switch (_that) {
case _ViewerConfig():
return $default(_that.loopVideo,_that.loadOriginalVideo,_that.autoPlayVideo,_that.tapToNavigate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loopVideo,  bool loadOriginalVideo,  bool autoPlayVideo,  bool tapToNavigate)?  $default,) {final _that = this;
switch (_that) {
case _ViewerConfig() when $default != null:
return $default(_that.loopVideo,_that.loadOriginalVideo,_that.autoPlayVideo,_that.tapToNavigate);case _:
  return null;

}
}

}

/// @nodoc


class _ViewerConfig with DiagnosticableTreeMixin implements ViewerConfig {
  const _ViewerConfig({this.loopVideo = true, this.loadOriginalVideo = false, this.autoPlayVideo = true, this.tapToNavigate = false});
  

@override@JsonKey() final  bool loopVideo;
@override@JsonKey() final  bool loadOriginalVideo;
@override@JsonKey() final  bool autoPlayVideo;
@override@JsonKey() final  bool tapToNavigate;

/// Create a copy of ViewerConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewerConfigCopyWith<_ViewerConfig> get copyWith => __$ViewerConfigCopyWithImpl<_ViewerConfig>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ViewerConfig'))
    ..add(DiagnosticsProperty('loopVideo', loopVideo))..add(DiagnosticsProperty('loadOriginalVideo', loadOriginalVideo))..add(DiagnosticsProperty('autoPlayVideo', autoPlayVideo))..add(DiagnosticsProperty('tapToNavigate', tapToNavigate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewerConfig&&(identical(other.loopVideo, loopVideo) || other.loopVideo == loopVideo)&&(identical(other.loadOriginalVideo, loadOriginalVideo) || other.loadOriginalVideo == loadOriginalVideo)&&(identical(other.autoPlayVideo, autoPlayVideo) || other.autoPlayVideo == autoPlayVideo)&&(identical(other.tapToNavigate, tapToNavigate) || other.tapToNavigate == tapToNavigate));
}


@override
int get hashCode => Object.hash(runtimeType,loopVideo,loadOriginalVideo,autoPlayVideo,tapToNavigate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ViewerConfig(loopVideo: $loopVideo, loadOriginalVideo: $loadOriginalVideo, autoPlayVideo: $autoPlayVideo, tapToNavigate: $tapToNavigate)';
}


}

/// @nodoc
abstract mixin class _$ViewerConfigCopyWith<$Res> implements $ViewerConfigCopyWith<$Res> {
  factory _$ViewerConfigCopyWith(_ViewerConfig value, $Res Function(_ViewerConfig) _then) = __$ViewerConfigCopyWithImpl;
@override @useResult
$Res call({
 bool loopVideo, bool loadOriginalVideo, bool autoPlayVideo, bool tapToNavigate
});




}
/// @nodoc
class __$ViewerConfigCopyWithImpl<$Res>
    implements _$ViewerConfigCopyWith<$Res> {
  __$ViewerConfigCopyWithImpl(this._self, this._then);

  final _ViewerConfig _self;
  final $Res Function(_ViewerConfig) _then;

/// Create a copy of ViewerConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loopVideo = null,Object? loadOriginalVideo = null,Object? autoPlayVideo = null,Object? tapToNavigate = null,}) {
  return _then(_ViewerConfig(
loopVideo: null == loopVideo ? _self.loopVideo : loopVideo // ignore: cast_nullable_to_non_nullable
as bool,loadOriginalVideo: null == loadOriginalVideo ? _self.loadOriginalVideo : loadOriginalVideo // ignore: cast_nullable_to_non_nullable
as bool,autoPlayVideo: null == autoPlayVideo ? _self.autoPlayVideo : autoPlayVideo // ignore: cast_nullable_to_non_nullable
as bool,tapToNavigate: null == tapToNavigate ? _self.tapToNavigate : tapToNavigate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
