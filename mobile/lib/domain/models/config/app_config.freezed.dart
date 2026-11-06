// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppConfig implements DiagnosticableTreeMixin {

 LogLevel get logLevel; ThemeConfig get theme; CleanupConfig get cleanup; MapConfig get map; TimelineConfig get timeline; ImageConfig get image; ViewerConfig get viewer; SlideshowConfig get slideshow; AlbumConfig get album; BackupConfig get backup; NetworkConfig get network; ShareConfig get share; FeatureMessageConfig get featureMessage;
/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppConfigCopyWith<AppConfig> get copyWith => _$AppConfigCopyWithImpl<AppConfig>(this as AppConfig, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppConfig'))
    ..add(DiagnosticsProperty('logLevel', logLevel))..add(DiagnosticsProperty('theme', theme))..add(DiagnosticsProperty('cleanup', cleanup))..add(DiagnosticsProperty('map', map))..add(DiagnosticsProperty('timeline', timeline))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('viewer', viewer))..add(DiagnosticsProperty('slideshow', slideshow))..add(DiagnosticsProperty('album', album))..add(DiagnosticsProperty('backup', backup))..add(DiagnosticsProperty('network', network))..add(DiagnosticsProperty('share', share))..add(DiagnosticsProperty('featureMessage', featureMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConfig&&(identical(other.logLevel, logLevel) || other.logLevel == logLevel)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.cleanup, cleanup) || other.cleanup == cleanup)&&(identical(other.map, map) || other.map == map)&&(identical(other.timeline, timeline) || other.timeline == timeline)&&(identical(other.image, image) || other.image == image)&&(identical(other.viewer, viewer) || other.viewer == viewer)&&(identical(other.slideshow, slideshow) || other.slideshow == slideshow)&&(identical(other.album, album) || other.album == album)&&(identical(other.backup, backup) || other.backup == backup)&&(identical(other.network, network) || other.network == network)&&(identical(other.share, share) || other.share == share)&&(identical(other.featureMessage, featureMessage) || other.featureMessage == featureMessage));
}


@override
int get hashCode => Object.hash(runtimeType,logLevel,theme,cleanup,map,timeline,image,viewer,slideshow,album,backup,network,share,featureMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppConfig(logLevel: $logLevel, theme: $theme, cleanup: $cleanup, map: $map, timeline: $timeline, image: $image, viewer: $viewer, slideshow: $slideshow, album: $album, backup: $backup, network: $network, share: $share, featureMessage: $featureMessage)';
}


}

/// @nodoc
abstract mixin class $AppConfigCopyWith<$Res>  {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) _then) = _$AppConfigCopyWithImpl;
@useResult
$Res call({
 LogLevel logLevel, ThemeConfig theme, CleanupConfig cleanup, MapConfig map, TimelineConfig timeline, ImageConfig image, ViewerConfig viewer, SlideshowConfig slideshow, AlbumConfig album, BackupConfig backup, NetworkConfig network, ShareConfig share, FeatureMessageConfig featureMessage
});


$ThemeConfigCopyWith<$Res> get theme;$CleanupConfigCopyWith<$Res> get cleanup;$TimelineConfigCopyWith<$Res> get timeline;$ImageConfigCopyWith<$Res> get image;$ViewerConfigCopyWith<$Res> get viewer;$SlideshowConfigCopyWith<$Res> get slideshow;$AlbumConfigCopyWith<$Res> get album;$BackupConfigCopyWith<$Res> get backup;$ShareConfigCopyWith<$Res> get share;$FeatureMessageConfigCopyWith<$Res> get featureMessage;

}
/// @nodoc
class _$AppConfigCopyWithImpl<$Res>
    implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._self, this._then);

  final AppConfig _self;
  final $Res Function(AppConfig) _then;

/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logLevel = null,Object? theme = null,Object? cleanup = null,Object? map = null,Object? timeline = null,Object? image = null,Object? viewer = null,Object? slideshow = null,Object? album = null,Object? backup = null,Object? network = null,Object? share = null,Object? featureMessage = null,}) {
  return _then(_self.copyWith(
logLevel: null == logLevel ? _self.logLevel : logLevel // ignore: cast_nullable_to_non_nullable
as LogLevel,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeConfig,cleanup: null == cleanup ? _self.cleanup : cleanup // ignore: cast_nullable_to_non_nullable
as CleanupConfig,map: null == map ? _self.map : map // ignore: cast_nullable_to_non_nullable
as MapConfig,timeline: null == timeline ? _self.timeline : timeline // ignore: cast_nullable_to_non_nullable
as TimelineConfig,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as ImageConfig,viewer: null == viewer ? _self.viewer : viewer // ignore: cast_nullable_to_non_nullable
as ViewerConfig,slideshow: null == slideshow ? _self.slideshow : slideshow // ignore: cast_nullable_to_non_nullable
as SlideshowConfig,album: null == album ? _self.album : album // ignore: cast_nullable_to_non_nullable
as AlbumConfig,backup: null == backup ? _self.backup : backup // ignore: cast_nullable_to_non_nullable
as BackupConfig,network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as NetworkConfig,share: null == share ? _self.share : share // ignore: cast_nullable_to_non_nullable
as ShareConfig,featureMessage: null == featureMessage ? _self.featureMessage : featureMessage // ignore: cast_nullable_to_non_nullable
as FeatureMessageConfig,
  ));
}
/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThemeConfigCopyWith<$Res> get theme {
  
  return $ThemeConfigCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CleanupConfigCopyWith<$Res> get cleanup {
  
  return $CleanupConfigCopyWith<$Res>(_self.cleanup, (value) {
    return _then(_self.copyWith(cleanup: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimelineConfigCopyWith<$Res> get timeline {
  
  return $TimelineConfigCopyWith<$Res>(_self.timeline, (value) {
    return _then(_self.copyWith(timeline: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageConfigCopyWith<$Res> get image {
  
  return $ImageConfigCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewerConfigCopyWith<$Res> get viewer {
  
  return $ViewerConfigCopyWith<$Res>(_self.viewer, (value) {
    return _then(_self.copyWith(viewer: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SlideshowConfigCopyWith<$Res> get slideshow {
  
  return $SlideshowConfigCopyWith<$Res>(_self.slideshow, (value) {
    return _then(_self.copyWith(slideshow: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlbumConfigCopyWith<$Res> get album {
  
  return $AlbumConfigCopyWith<$Res>(_self.album, (value) {
    return _then(_self.copyWith(album: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BackupConfigCopyWith<$Res> get backup {
  
  return $BackupConfigCopyWith<$Res>(_self.backup, (value) {
    return _then(_self.copyWith(backup: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShareConfigCopyWith<$Res> get share {
  
  return $ShareConfigCopyWith<$Res>(_self.share, (value) {
    return _then(_self.copyWith(share: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeatureMessageConfigCopyWith<$Res> get featureMessage {
  
  return $FeatureMessageConfigCopyWith<$Res>(_self.featureMessage, (value) {
    return _then(_self.copyWith(featureMessage: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppConfig].
extension AppConfigPatterns on AppConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppConfig value)  $default,){
final _that = this;
switch (_that) {
case _AppConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppConfig value)?  $default,){
final _that = this;
switch (_that) {
case _AppConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LogLevel logLevel,  ThemeConfig theme,  CleanupConfig cleanup,  MapConfig map,  TimelineConfig timeline,  ImageConfig image,  ViewerConfig viewer,  SlideshowConfig slideshow,  AlbumConfig album,  BackupConfig backup,  NetworkConfig network,  ShareConfig share,  FeatureMessageConfig featureMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppConfig() when $default != null:
return $default(_that.logLevel,_that.theme,_that.cleanup,_that.map,_that.timeline,_that.image,_that.viewer,_that.slideshow,_that.album,_that.backup,_that.network,_that.share,_that.featureMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LogLevel logLevel,  ThemeConfig theme,  CleanupConfig cleanup,  MapConfig map,  TimelineConfig timeline,  ImageConfig image,  ViewerConfig viewer,  SlideshowConfig slideshow,  AlbumConfig album,  BackupConfig backup,  NetworkConfig network,  ShareConfig share,  FeatureMessageConfig featureMessage)  $default,) {final _that = this;
switch (_that) {
case _AppConfig():
return $default(_that.logLevel,_that.theme,_that.cleanup,_that.map,_that.timeline,_that.image,_that.viewer,_that.slideshow,_that.album,_that.backup,_that.network,_that.share,_that.featureMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LogLevel logLevel,  ThemeConfig theme,  CleanupConfig cleanup,  MapConfig map,  TimelineConfig timeline,  ImageConfig image,  ViewerConfig viewer,  SlideshowConfig slideshow,  AlbumConfig album,  BackupConfig backup,  NetworkConfig network,  ShareConfig share,  FeatureMessageConfig featureMessage)?  $default,) {final _that = this;
switch (_that) {
case _AppConfig() when $default != null:
return $default(_that.logLevel,_that.theme,_that.cleanup,_that.map,_that.timeline,_that.image,_that.viewer,_that.slideshow,_that.album,_that.backup,_that.network,_that.share,_that.featureMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AppConfig extends AppConfig with DiagnosticableTreeMixin {
  const _AppConfig({this.logLevel = LogLevel.info, this.theme = const ThemeConfig(), this.cleanup = const CleanupConfig(), this.map = const MapConfig(), this.timeline = const TimelineConfig(), this.image = const ImageConfig(), this.viewer = const ViewerConfig(), this.slideshow = const SlideshowConfig(), this.album = const AlbumConfig(), this.backup = const BackupConfig(), this.network = const NetworkConfig(), this.share = const ShareConfig(), this.featureMessage = const FeatureMessageConfig()}): super._();
  

@override@JsonKey() final  LogLevel logLevel;
@override@JsonKey() final  ThemeConfig theme;
@override@JsonKey() final  CleanupConfig cleanup;
@override@JsonKey() final  MapConfig map;
@override@JsonKey() final  TimelineConfig timeline;
@override@JsonKey() final  ImageConfig image;
@override@JsonKey() final  ViewerConfig viewer;
@override@JsonKey() final  SlideshowConfig slideshow;
@override@JsonKey() final  AlbumConfig album;
@override@JsonKey() final  BackupConfig backup;
@override@JsonKey() final  NetworkConfig network;
@override@JsonKey() final  ShareConfig share;
@override@JsonKey() final  FeatureMessageConfig featureMessage;

/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppConfigCopyWith<_AppConfig> get copyWith => __$AppConfigCopyWithImpl<_AppConfig>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppConfig'))
    ..add(DiagnosticsProperty('logLevel', logLevel))..add(DiagnosticsProperty('theme', theme))..add(DiagnosticsProperty('cleanup', cleanup))..add(DiagnosticsProperty('map', map))..add(DiagnosticsProperty('timeline', timeline))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('viewer', viewer))..add(DiagnosticsProperty('slideshow', slideshow))..add(DiagnosticsProperty('album', album))..add(DiagnosticsProperty('backup', backup))..add(DiagnosticsProperty('network', network))..add(DiagnosticsProperty('share', share))..add(DiagnosticsProperty('featureMessage', featureMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppConfig&&(identical(other.logLevel, logLevel) || other.logLevel == logLevel)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.cleanup, cleanup) || other.cleanup == cleanup)&&(identical(other.map, map) || other.map == map)&&(identical(other.timeline, timeline) || other.timeline == timeline)&&(identical(other.image, image) || other.image == image)&&(identical(other.viewer, viewer) || other.viewer == viewer)&&(identical(other.slideshow, slideshow) || other.slideshow == slideshow)&&(identical(other.album, album) || other.album == album)&&(identical(other.backup, backup) || other.backup == backup)&&(identical(other.network, network) || other.network == network)&&(identical(other.share, share) || other.share == share)&&(identical(other.featureMessage, featureMessage) || other.featureMessage == featureMessage));
}


@override
int get hashCode => Object.hash(runtimeType,logLevel,theme,cleanup,map,timeline,image,viewer,slideshow,album,backup,network,share,featureMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppConfig(logLevel: $logLevel, theme: $theme, cleanup: $cleanup, map: $map, timeline: $timeline, image: $image, viewer: $viewer, slideshow: $slideshow, album: $album, backup: $backup, network: $network, share: $share, featureMessage: $featureMessage)';
}


}

/// @nodoc
abstract mixin class _$AppConfigCopyWith<$Res> implements $AppConfigCopyWith<$Res> {
  factory _$AppConfigCopyWith(_AppConfig value, $Res Function(_AppConfig) _then) = __$AppConfigCopyWithImpl;
@override @useResult
$Res call({
 LogLevel logLevel, ThemeConfig theme, CleanupConfig cleanup, MapConfig map, TimelineConfig timeline, ImageConfig image, ViewerConfig viewer, SlideshowConfig slideshow, AlbumConfig album, BackupConfig backup, NetworkConfig network, ShareConfig share, FeatureMessageConfig featureMessage
});


@override $ThemeConfigCopyWith<$Res> get theme;@override $CleanupConfigCopyWith<$Res> get cleanup;@override $TimelineConfigCopyWith<$Res> get timeline;@override $ImageConfigCopyWith<$Res> get image;@override $ViewerConfigCopyWith<$Res> get viewer;@override $SlideshowConfigCopyWith<$Res> get slideshow;@override $AlbumConfigCopyWith<$Res> get album;@override $BackupConfigCopyWith<$Res> get backup;@override $ShareConfigCopyWith<$Res> get share;@override $FeatureMessageConfigCopyWith<$Res> get featureMessage;

}
/// @nodoc
class __$AppConfigCopyWithImpl<$Res>
    implements _$AppConfigCopyWith<$Res> {
  __$AppConfigCopyWithImpl(this._self, this._then);

  final _AppConfig _self;
  final $Res Function(_AppConfig) _then;

/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logLevel = null,Object? theme = null,Object? cleanup = null,Object? map = null,Object? timeline = null,Object? image = null,Object? viewer = null,Object? slideshow = null,Object? album = null,Object? backup = null,Object? network = null,Object? share = null,Object? featureMessage = null,}) {
  return _then(_AppConfig(
logLevel: null == logLevel ? _self.logLevel : logLevel // ignore: cast_nullable_to_non_nullable
as LogLevel,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeConfig,cleanup: null == cleanup ? _self.cleanup : cleanup // ignore: cast_nullable_to_non_nullable
as CleanupConfig,map: null == map ? _self.map : map // ignore: cast_nullable_to_non_nullable
as MapConfig,timeline: null == timeline ? _self.timeline : timeline // ignore: cast_nullable_to_non_nullable
as TimelineConfig,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as ImageConfig,viewer: null == viewer ? _self.viewer : viewer // ignore: cast_nullable_to_non_nullable
as ViewerConfig,slideshow: null == slideshow ? _self.slideshow : slideshow // ignore: cast_nullable_to_non_nullable
as SlideshowConfig,album: null == album ? _self.album : album // ignore: cast_nullable_to_non_nullable
as AlbumConfig,backup: null == backup ? _self.backup : backup // ignore: cast_nullable_to_non_nullable
as BackupConfig,network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as NetworkConfig,share: null == share ? _self.share : share // ignore: cast_nullable_to_non_nullable
as ShareConfig,featureMessage: null == featureMessage ? _self.featureMessage : featureMessage // ignore: cast_nullable_to_non_nullable
as FeatureMessageConfig,
  ));
}

/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThemeConfigCopyWith<$Res> get theme {
  
  return $ThemeConfigCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CleanupConfigCopyWith<$Res> get cleanup {
  
  return $CleanupConfigCopyWith<$Res>(_self.cleanup, (value) {
    return _then(_self.copyWith(cleanup: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimelineConfigCopyWith<$Res> get timeline {
  
  return $TimelineConfigCopyWith<$Res>(_self.timeline, (value) {
    return _then(_self.copyWith(timeline: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageConfigCopyWith<$Res> get image {
  
  return $ImageConfigCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewerConfigCopyWith<$Res> get viewer {
  
  return $ViewerConfigCopyWith<$Res>(_self.viewer, (value) {
    return _then(_self.copyWith(viewer: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SlideshowConfigCopyWith<$Res> get slideshow {
  
  return $SlideshowConfigCopyWith<$Res>(_self.slideshow, (value) {
    return _then(_self.copyWith(slideshow: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlbumConfigCopyWith<$Res> get album {
  
  return $AlbumConfigCopyWith<$Res>(_self.album, (value) {
    return _then(_self.copyWith(album: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BackupConfigCopyWith<$Res> get backup {
  
  return $BackupConfigCopyWith<$Res>(_self.backup, (value) {
    return _then(_self.copyWith(backup: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShareConfigCopyWith<$Res> get share {
  
  return $ShareConfigCopyWith<$Res>(_self.share, (value) {
    return _then(_self.copyWith(share: value));
  });
}/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeatureMessageConfigCopyWith<$Res> get featureMessage {
  
  return $FeatureMessageConfigCopyWith<$Res>(_self.featureMessage, (value) {
    return _then(_self.copyWith(featureMessage: value));
  });
}
}

// dart format on
