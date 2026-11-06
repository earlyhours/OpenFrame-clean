// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_info.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServerInfo implements DiagnosticableTreeMixin {

 ServerVersion get serverVersion; ServerVersion? get latestVersion; ServerFeatures get serverFeatures; ServerConfig get serverConfig; ServerDiskInfo get serverDiskInfo; VersionStatus get versionStatus;
/// Create a copy of ServerInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerInfoCopyWith<ServerInfo> get copyWith => _$ServerInfoCopyWithImpl<ServerInfo>(this as ServerInfo, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServerInfo'))
    ..add(DiagnosticsProperty('serverVersion', serverVersion))..add(DiagnosticsProperty('latestVersion', latestVersion))..add(DiagnosticsProperty('serverFeatures', serverFeatures))..add(DiagnosticsProperty('serverConfig', serverConfig))..add(DiagnosticsProperty('serverDiskInfo', serverDiskInfo))..add(DiagnosticsProperty('versionStatus', versionStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerInfo&&(identical(other.serverVersion, serverVersion) || other.serverVersion == serverVersion)&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion)&&(identical(other.serverFeatures, serverFeatures) || other.serverFeatures == serverFeatures)&&(identical(other.serverConfig, serverConfig) || other.serverConfig == serverConfig)&&(identical(other.serverDiskInfo, serverDiskInfo) || other.serverDiskInfo == serverDiskInfo)&&(identical(other.versionStatus, versionStatus) || other.versionStatus == versionStatus));
}


@override
int get hashCode => Object.hash(runtimeType,serverVersion,latestVersion,serverFeatures,serverConfig,serverDiskInfo,versionStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServerInfo(serverVersion: $serverVersion, latestVersion: $latestVersion, serverFeatures: $serverFeatures, serverConfig: $serverConfig, serverDiskInfo: $serverDiskInfo, versionStatus: $versionStatus)';
}


}

/// @nodoc
abstract mixin class $ServerInfoCopyWith<$Res>  {
  factory $ServerInfoCopyWith(ServerInfo value, $Res Function(ServerInfo) _then) = _$ServerInfoCopyWithImpl;
@useResult
$Res call({
 ServerVersion serverVersion, ServerVersion? latestVersion, ServerFeatures serverFeatures, ServerConfig serverConfig, ServerDiskInfo serverDiskInfo, VersionStatus versionStatus
});


$ServerFeaturesCopyWith<$Res> get serverFeatures;$ServerConfigCopyWith<$Res> get serverConfig;$ServerDiskInfoCopyWith<$Res> get serverDiskInfo;

}
/// @nodoc
class _$ServerInfoCopyWithImpl<$Res>
    implements $ServerInfoCopyWith<$Res> {
  _$ServerInfoCopyWithImpl(this._self, this._then);

  final ServerInfo _self;
  final $Res Function(ServerInfo) _then;

/// Create a copy of ServerInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serverVersion = null,Object? latestVersion = freezed,Object? serverFeatures = null,Object? serverConfig = null,Object? serverDiskInfo = null,Object? versionStatus = null,}) {
  return _then(_self.copyWith(
serverVersion: null == serverVersion ? _self.serverVersion : serverVersion // ignore: cast_nullable_to_non_nullable
as ServerVersion,latestVersion: freezed == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as ServerVersion?,serverFeatures: null == serverFeatures ? _self.serverFeatures : serverFeatures // ignore: cast_nullable_to_non_nullable
as ServerFeatures,serverConfig: null == serverConfig ? _self.serverConfig : serverConfig // ignore: cast_nullable_to_non_nullable
as ServerConfig,serverDiskInfo: null == serverDiskInfo ? _self.serverDiskInfo : serverDiskInfo // ignore: cast_nullable_to_non_nullable
as ServerDiskInfo,versionStatus: null == versionStatus ? _self.versionStatus : versionStatus // ignore: cast_nullable_to_non_nullable
as VersionStatus,
  ));
}
/// Create a copy of ServerInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServerFeaturesCopyWith<$Res> get serverFeatures {
  
  return $ServerFeaturesCopyWith<$Res>(_self.serverFeatures, (value) {
    return _then(_self.copyWith(serverFeatures: value));
  });
}/// Create a copy of ServerInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServerConfigCopyWith<$Res> get serverConfig {
  
  return $ServerConfigCopyWith<$Res>(_self.serverConfig, (value) {
    return _then(_self.copyWith(serverConfig: value));
  });
}/// Create a copy of ServerInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServerDiskInfoCopyWith<$Res> get serverDiskInfo {
  
  return $ServerDiskInfoCopyWith<$Res>(_self.serverDiskInfo, (value) {
    return _then(_self.copyWith(serverDiskInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [ServerInfo].
extension ServerInfoPatterns on ServerInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServerInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServerInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServerInfo value)  $default,){
final _that = this;
switch (_that) {
case _ServerInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServerInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ServerInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ServerVersion serverVersion,  ServerVersion? latestVersion,  ServerFeatures serverFeatures,  ServerConfig serverConfig,  ServerDiskInfo serverDiskInfo,  VersionStatus versionStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServerInfo() when $default != null:
return $default(_that.serverVersion,_that.latestVersion,_that.serverFeatures,_that.serverConfig,_that.serverDiskInfo,_that.versionStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ServerVersion serverVersion,  ServerVersion? latestVersion,  ServerFeatures serverFeatures,  ServerConfig serverConfig,  ServerDiskInfo serverDiskInfo,  VersionStatus versionStatus)  $default,) {final _that = this;
switch (_that) {
case _ServerInfo():
return $default(_that.serverVersion,_that.latestVersion,_that.serverFeatures,_that.serverConfig,_that.serverDiskInfo,_that.versionStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ServerVersion serverVersion,  ServerVersion? latestVersion,  ServerFeatures serverFeatures,  ServerConfig serverConfig,  ServerDiskInfo serverDiskInfo,  VersionStatus versionStatus)?  $default,) {final _that = this;
switch (_that) {
case _ServerInfo() when $default != null:
return $default(_that.serverVersion,_that.latestVersion,_that.serverFeatures,_that.serverConfig,_that.serverDiskInfo,_that.versionStatus);case _:
  return null;

}
}

}

/// @nodoc


class _ServerInfo with DiagnosticableTreeMixin implements ServerInfo {
  const _ServerInfo({required this.serverVersion, this.latestVersion, required this.serverFeatures, required this.serverConfig, required this.serverDiskInfo, required this.versionStatus});
  

@override final  ServerVersion serverVersion;
@override final  ServerVersion? latestVersion;
@override final  ServerFeatures serverFeatures;
@override final  ServerConfig serverConfig;
@override final  ServerDiskInfo serverDiskInfo;
@override final  VersionStatus versionStatus;

/// Create a copy of ServerInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerInfoCopyWith<_ServerInfo> get copyWith => __$ServerInfoCopyWithImpl<_ServerInfo>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServerInfo'))
    ..add(DiagnosticsProperty('serverVersion', serverVersion))..add(DiagnosticsProperty('latestVersion', latestVersion))..add(DiagnosticsProperty('serverFeatures', serverFeatures))..add(DiagnosticsProperty('serverConfig', serverConfig))..add(DiagnosticsProperty('serverDiskInfo', serverDiskInfo))..add(DiagnosticsProperty('versionStatus', versionStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerInfo&&(identical(other.serverVersion, serverVersion) || other.serverVersion == serverVersion)&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion)&&(identical(other.serverFeatures, serverFeatures) || other.serverFeatures == serverFeatures)&&(identical(other.serverConfig, serverConfig) || other.serverConfig == serverConfig)&&(identical(other.serverDiskInfo, serverDiskInfo) || other.serverDiskInfo == serverDiskInfo)&&(identical(other.versionStatus, versionStatus) || other.versionStatus == versionStatus));
}


@override
int get hashCode => Object.hash(runtimeType,serverVersion,latestVersion,serverFeatures,serverConfig,serverDiskInfo,versionStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServerInfo(serverVersion: $serverVersion, latestVersion: $latestVersion, serverFeatures: $serverFeatures, serverConfig: $serverConfig, serverDiskInfo: $serverDiskInfo, versionStatus: $versionStatus)';
}


}

/// @nodoc
abstract mixin class _$ServerInfoCopyWith<$Res> implements $ServerInfoCopyWith<$Res> {
  factory _$ServerInfoCopyWith(_ServerInfo value, $Res Function(_ServerInfo) _then) = __$ServerInfoCopyWithImpl;
@override @useResult
$Res call({
 ServerVersion serverVersion, ServerVersion? latestVersion, ServerFeatures serverFeatures, ServerConfig serverConfig, ServerDiskInfo serverDiskInfo, VersionStatus versionStatus
});


@override $ServerFeaturesCopyWith<$Res> get serverFeatures;@override $ServerConfigCopyWith<$Res> get serverConfig;@override $ServerDiskInfoCopyWith<$Res> get serverDiskInfo;

}
/// @nodoc
class __$ServerInfoCopyWithImpl<$Res>
    implements _$ServerInfoCopyWith<$Res> {
  __$ServerInfoCopyWithImpl(this._self, this._then);

  final _ServerInfo _self;
  final $Res Function(_ServerInfo) _then;

/// Create a copy of ServerInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serverVersion = null,Object? latestVersion = freezed,Object? serverFeatures = null,Object? serverConfig = null,Object? serverDiskInfo = null,Object? versionStatus = null,}) {
  return _then(_ServerInfo(
serverVersion: null == serverVersion ? _self.serverVersion : serverVersion // ignore: cast_nullable_to_non_nullable
as ServerVersion,latestVersion: freezed == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as ServerVersion?,serverFeatures: null == serverFeatures ? _self.serverFeatures : serverFeatures // ignore: cast_nullable_to_non_nullable
as ServerFeatures,serverConfig: null == serverConfig ? _self.serverConfig : serverConfig // ignore: cast_nullable_to_non_nullable
as ServerConfig,serverDiskInfo: null == serverDiskInfo ? _self.serverDiskInfo : serverDiskInfo // ignore: cast_nullable_to_non_nullable
as ServerDiskInfo,versionStatus: null == versionStatus ? _self.versionStatus : versionStatus // ignore: cast_nullable_to_non_nullable
as VersionStatus,
  ));
}

/// Create a copy of ServerInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServerFeaturesCopyWith<$Res> get serverFeatures {
  
  return $ServerFeaturesCopyWith<$Res>(_self.serverFeatures, (value) {
    return _then(_self.copyWith(serverFeatures: value));
  });
}/// Create a copy of ServerInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServerConfigCopyWith<$Res> get serverConfig {
  
  return $ServerConfigCopyWith<$Res>(_self.serverConfig, (value) {
    return _then(_self.copyWith(serverConfig: value));
  });
}/// Create a copy of ServerInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServerDiskInfoCopyWith<$Res> get serverDiskInfo {
  
  return $ServerDiskInfoCopyWith<$Res>(_self.serverDiskInfo, (value) {
    return _then(_self.copyWith(serverDiskInfo: value));
  });
}
}

// dart format on
