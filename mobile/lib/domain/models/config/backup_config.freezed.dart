// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BackupConfig implements DiagnosticableTreeMixin {

 bool get enabled; bool get useCellularForVideos; bool get useCellularForPhotos; bool get requireCharging; int get triggerDelay; bool get syncAlbums;
/// Create a copy of BackupConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackupConfigCopyWith<BackupConfig> get copyWith => _$BackupConfigCopyWithImpl<BackupConfig>(this as BackupConfig, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BackupConfig'))
    ..add(DiagnosticsProperty('enabled', enabled))..add(DiagnosticsProperty('useCellularForVideos', useCellularForVideos))..add(DiagnosticsProperty('useCellularForPhotos', useCellularForPhotos))..add(DiagnosticsProperty('requireCharging', requireCharging))..add(DiagnosticsProperty('triggerDelay', triggerDelay))..add(DiagnosticsProperty('syncAlbums', syncAlbums));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupConfig&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.useCellularForVideos, useCellularForVideos) || other.useCellularForVideos == useCellularForVideos)&&(identical(other.useCellularForPhotos, useCellularForPhotos) || other.useCellularForPhotos == useCellularForPhotos)&&(identical(other.requireCharging, requireCharging) || other.requireCharging == requireCharging)&&(identical(other.triggerDelay, triggerDelay) || other.triggerDelay == triggerDelay)&&(identical(other.syncAlbums, syncAlbums) || other.syncAlbums == syncAlbums));
}


@override
int get hashCode => Object.hash(runtimeType,enabled,useCellularForVideos,useCellularForPhotos,requireCharging,triggerDelay,syncAlbums);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BackupConfig(enabled: $enabled, useCellularForVideos: $useCellularForVideos, useCellularForPhotos: $useCellularForPhotos, requireCharging: $requireCharging, triggerDelay: $triggerDelay, syncAlbums: $syncAlbums)';
}


}

/// @nodoc
abstract mixin class $BackupConfigCopyWith<$Res>  {
  factory $BackupConfigCopyWith(BackupConfig value, $Res Function(BackupConfig) _then) = _$BackupConfigCopyWithImpl;
@useResult
$Res call({
 bool enabled, bool useCellularForVideos, bool useCellularForPhotos, bool requireCharging, int triggerDelay, bool syncAlbums
});




}
/// @nodoc
class _$BackupConfigCopyWithImpl<$Res>
    implements $BackupConfigCopyWith<$Res> {
  _$BackupConfigCopyWithImpl(this._self, this._then);

  final BackupConfig _self;
  final $Res Function(BackupConfig) _then;

/// Create a copy of BackupConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,Object? useCellularForVideos = null,Object? useCellularForPhotos = null,Object? requireCharging = null,Object? triggerDelay = null,Object? syncAlbums = null,}) {
  return _then(_self.copyWith(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,useCellularForVideos: null == useCellularForVideos ? _self.useCellularForVideos : useCellularForVideos // ignore: cast_nullable_to_non_nullable
as bool,useCellularForPhotos: null == useCellularForPhotos ? _self.useCellularForPhotos : useCellularForPhotos // ignore: cast_nullable_to_non_nullable
as bool,requireCharging: null == requireCharging ? _self.requireCharging : requireCharging // ignore: cast_nullable_to_non_nullable
as bool,triggerDelay: null == triggerDelay ? _self.triggerDelay : triggerDelay // ignore: cast_nullable_to_non_nullable
as int,syncAlbums: null == syncAlbums ? _self.syncAlbums : syncAlbums // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BackupConfig].
extension BackupConfigPatterns on BackupConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BackupConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BackupConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BackupConfig value)  $default,){
final _that = this;
switch (_that) {
case _BackupConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BackupConfig value)?  $default,){
final _that = this;
switch (_that) {
case _BackupConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enabled,  bool useCellularForVideos,  bool useCellularForPhotos,  bool requireCharging,  int triggerDelay,  bool syncAlbums)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BackupConfig() when $default != null:
return $default(_that.enabled,_that.useCellularForVideos,_that.useCellularForPhotos,_that.requireCharging,_that.triggerDelay,_that.syncAlbums);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enabled,  bool useCellularForVideos,  bool useCellularForPhotos,  bool requireCharging,  int triggerDelay,  bool syncAlbums)  $default,) {final _that = this;
switch (_that) {
case _BackupConfig():
return $default(_that.enabled,_that.useCellularForVideos,_that.useCellularForPhotos,_that.requireCharging,_that.triggerDelay,_that.syncAlbums);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enabled,  bool useCellularForVideos,  bool useCellularForPhotos,  bool requireCharging,  int triggerDelay,  bool syncAlbums)?  $default,) {final _that = this;
switch (_that) {
case _BackupConfig() when $default != null:
return $default(_that.enabled,_that.useCellularForVideos,_that.useCellularForPhotos,_that.requireCharging,_that.triggerDelay,_that.syncAlbums);case _:
  return null;

}
}

}

/// @nodoc


class _BackupConfig with DiagnosticableTreeMixin implements BackupConfig {
  const _BackupConfig({this.enabled = false, this.useCellularForVideos = false, this.useCellularForPhotos = false, this.requireCharging = false, this.triggerDelay = 30, this.syncAlbums = false});
  

@override@JsonKey() final  bool enabled;
@override@JsonKey() final  bool useCellularForVideos;
@override@JsonKey() final  bool useCellularForPhotos;
@override@JsonKey() final  bool requireCharging;
@override@JsonKey() final  int triggerDelay;
@override@JsonKey() final  bool syncAlbums;

/// Create a copy of BackupConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BackupConfigCopyWith<_BackupConfig> get copyWith => __$BackupConfigCopyWithImpl<_BackupConfig>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BackupConfig'))
    ..add(DiagnosticsProperty('enabled', enabled))..add(DiagnosticsProperty('useCellularForVideos', useCellularForVideos))..add(DiagnosticsProperty('useCellularForPhotos', useCellularForPhotos))..add(DiagnosticsProperty('requireCharging', requireCharging))..add(DiagnosticsProperty('triggerDelay', triggerDelay))..add(DiagnosticsProperty('syncAlbums', syncAlbums));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BackupConfig&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.useCellularForVideos, useCellularForVideos) || other.useCellularForVideos == useCellularForVideos)&&(identical(other.useCellularForPhotos, useCellularForPhotos) || other.useCellularForPhotos == useCellularForPhotos)&&(identical(other.requireCharging, requireCharging) || other.requireCharging == requireCharging)&&(identical(other.triggerDelay, triggerDelay) || other.triggerDelay == triggerDelay)&&(identical(other.syncAlbums, syncAlbums) || other.syncAlbums == syncAlbums));
}


@override
int get hashCode => Object.hash(runtimeType,enabled,useCellularForVideos,useCellularForPhotos,requireCharging,triggerDelay,syncAlbums);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BackupConfig(enabled: $enabled, useCellularForVideos: $useCellularForVideos, useCellularForPhotos: $useCellularForPhotos, requireCharging: $requireCharging, triggerDelay: $triggerDelay, syncAlbums: $syncAlbums)';
}


}

/// @nodoc
abstract mixin class _$BackupConfigCopyWith<$Res> implements $BackupConfigCopyWith<$Res> {
  factory _$BackupConfigCopyWith(_BackupConfig value, $Res Function(_BackupConfig) _then) = __$BackupConfigCopyWithImpl;
@override @useResult
$Res call({
 bool enabled, bool useCellularForVideos, bool useCellularForPhotos, bool requireCharging, int triggerDelay, bool syncAlbums
});




}
/// @nodoc
class __$BackupConfigCopyWithImpl<$Res>
    implements _$BackupConfigCopyWith<$Res> {
  __$BackupConfigCopyWithImpl(this._self, this._then);

  final _BackupConfig _self;
  final $Res Function(_BackupConfig) _then;

/// Create a copy of BackupConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,Object? useCellularForVideos = null,Object? useCellularForPhotos = null,Object? requireCharging = null,Object? triggerDelay = null,Object? syncAlbums = null,}) {
  return _then(_BackupConfig(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,useCellularForVideos: null == useCellularForVideos ? _self.useCellularForVideos : useCellularForVideos // ignore: cast_nullable_to_non_nullable
as bool,useCellularForPhotos: null == useCellularForPhotos ? _self.useCellularForPhotos : useCellularForPhotos // ignore: cast_nullable_to_non_nullable
as bool,requireCharging: null == requireCharging ? _self.requireCharging : requireCharging // ignore: cast_nullable_to_non_nullable
as bool,triggerDelay: null == triggerDelay ? _self.triggerDelay : triggerDelay // ignore: cast_nullable_to_non_nullable
as int,syncAlbums: null == syncAlbums ? _self.syncAlbums : syncAlbums // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
