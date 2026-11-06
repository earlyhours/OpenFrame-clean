// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_config.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServerConfig {

 int get trashDays; String get oauthButtonText; String get externalDomain; String get mapDarkStyleUrl; String get mapLightStyleUrl;
/// Create a copy of ServerConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerConfigCopyWith<ServerConfig> get copyWith => _$ServerConfigCopyWithImpl<ServerConfig>(this as ServerConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerConfig&&(identical(other.trashDays, trashDays) || other.trashDays == trashDays)&&(identical(other.oauthButtonText, oauthButtonText) || other.oauthButtonText == oauthButtonText)&&(identical(other.externalDomain, externalDomain) || other.externalDomain == externalDomain)&&(identical(other.mapDarkStyleUrl, mapDarkStyleUrl) || other.mapDarkStyleUrl == mapDarkStyleUrl)&&(identical(other.mapLightStyleUrl, mapLightStyleUrl) || other.mapLightStyleUrl == mapLightStyleUrl));
}


@override
int get hashCode => Object.hash(runtimeType,trashDays,oauthButtonText,externalDomain,mapDarkStyleUrl,mapLightStyleUrl);

@override
String toString() {
  return 'ServerConfig(trashDays: $trashDays, oauthButtonText: $oauthButtonText, externalDomain: $externalDomain, mapDarkStyleUrl: $mapDarkStyleUrl, mapLightStyleUrl: $mapLightStyleUrl)';
}


}

/// @nodoc
abstract mixin class $ServerConfigCopyWith<$Res>  {
  factory $ServerConfigCopyWith(ServerConfig value, $Res Function(ServerConfig) _then) = _$ServerConfigCopyWithImpl;
@useResult
$Res call({
 int trashDays, String oauthButtonText, String externalDomain, String mapDarkStyleUrl, String mapLightStyleUrl
});




}
/// @nodoc
class _$ServerConfigCopyWithImpl<$Res>
    implements $ServerConfigCopyWith<$Res> {
  _$ServerConfigCopyWithImpl(this._self, this._then);

  final ServerConfig _self;
  final $Res Function(ServerConfig) _then;

/// Create a copy of ServerConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trashDays = null,Object? oauthButtonText = null,Object? externalDomain = null,Object? mapDarkStyleUrl = null,Object? mapLightStyleUrl = null,}) {
  return _then(_self.copyWith(
trashDays: null == trashDays ? _self.trashDays : trashDays // ignore: cast_nullable_to_non_nullable
as int,oauthButtonText: null == oauthButtonText ? _self.oauthButtonText : oauthButtonText // ignore: cast_nullable_to_non_nullable
as String,externalDomain: null == externalDomain ? _self.externalDomain : externalDomain // ignore: cast_nullable_to_non_nullable
as String,mapDarkStyleUrl: null == mapDarkStyleUrl ? _self.mapDarkStyleUrl : mapDarkStyleUrl // ignore: cast_nullable_to_non_nullable
as String,mapLightStyleUrl: null == mapLightStyleUrl ? _self.mapLightStyleUrl : mapLightStyleUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ServerConfig].
extension ServerConfigPatterns on ServerConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServerConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServerConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServerConfig value)  $default,){
final _that = this;
switch (_that) {
case _ServerConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServerConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ServerConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int trashDays,  String oauthButtonText,  String externalDomain,  String mapDarkStyleUrl,  String mapLightStyleUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServerConfig() when $default != null:
return $default(_that.trashDays,_that.oauthButtonText,_that.externalDomain,_that.mapDarkStyleUrl,_that.mapLightStyleUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int trashDays,  String oauthButtonText,  String externalDomain,  String mapDarkStyleUrl,  String mapLightStyleUrl)  $default,) {final _that = this;
switch (_that) {
case _ServerConfig():
return $default(_that.trashDays,_that.oauthButtonText,_that.externalDomain,_that.mapDarkStyleUrl,_that.mapLightStyleUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int trashDays,  String oauthButtonText,  String externalDomain,  String mapDarkStyleUrl,  String mapLightStyleUrl)?  $default,) {final _that = this;
switch (_that) {
case _ServerConfig() when $default != null:
return $default(_that.trashDays,_that.oauthButtonText,_that.externalDomain,_that.mapDarkStyleUrl,_that.mapLightStyleUrl);case _:
  return null;

}
}

}

/// @nodoc


class _ServerConfig implements ServerConfig {
  const _ServerConfig({required this.trashDays, required this.oauthButtonText, required this.externalDomain, required this.mapDarkStyleUrl, required this.mapLightStyleUrl});
  

@override final  int trashDays;
@override final  String oauthButtonText;
@override final  String externalDomain;
@override final  String mapDarkStyleUrl;
@override final  String mapLightStyleUrl;

/// Create a copy of ServerConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerConfigCopyWith<_ServerConfig> get copyWith => __$ServerConfigCopyWithImpl<_ServerConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerConfig&&(identical(other.trashDays, trashDays) || other.trashDays == trashDays)&&(identical(other.oauthButtonText, oauthButtonText) || other.oauthButtonText == oauthButtonText)&&(identical(other.externalDomain, externalDomain) || other.externalDomain == externalDomain)&&(identical(other.mapDarkStyleUrl, mapDarkStyleUrl) || other.mapDarkStyleUrl == mapDarkStyleUrl)&&(identical(other.mapLightStyleUrl, mapLightStyleUrl) || other.mapLightStyleUrl == mapLightStyleUrl));
}


@override
int get hashCode => Object.hash(runtimeType,trashDays,oauthButtonText,externalDomain,mapDarkStyleUrl,mapLightStyleUrl);

@override
String toString() {
  return 'ServerConfig(trashDays: $trashDays, oauthButtonText: $oauthButtonText, externalDomain: $externalDomain, mapDarkStyleUrl: $mapDarkStyleUrl, mapLightStyleUrl: $mapLightStyleUrl)';
}


}

/// @nodoc
abstract mixin class _$ServerConfigCopyWith<$Res> implements $ServerConfigCopyWith<$Res> {
  factory _$ServerConfigCopyWith(_ServerConfig value, $Res Function(_ServerConfig) _then) = __$ServerConfigCopyWithImpl;
@override @useResult
$Res call({
 int trashDays, String oauthButtonText, String externalDomain, String mapDarkStyleUrl, String mapLightStyleUrl
});




}
/// @nodoc
class __$ServerConfigCopyWithImpl<$Res>
    implements _$ServerConfigCopyWith<$Res> {
  __$ServerConfigCopyWithImpl(this._self, this._then);

  final _ServerConfig _self;
  final $Res Function(_ServerConfig) _then;

/// Create a copy of ServerConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trashDays = null,Object? oauthButtonText = null,Object? externalDomain = null,Object? mapDarkStyleUrl = null,Object? mapLightStyleUrl = null,}) {
  return _then(_ServerConfig(
trashDays: null == trashDays ? _self.trashDays : trashDays // ignore: cast_nullable_to_non_nullable
as int,oauthButtonText: null == oauthButtonText ? _self.oauthButtonText : oauthButtonText // ignore: cast_nullable_to_non_nullable
as String,externalDomain: null == externalDomain ? _self.externalDomain : externalDomain // ignore: cast_nullable_to_non_nullable
as String,mapDarkStyleUrl: null == mapDarkStyleUrl ? _self.mapDarkStyleUrl : mapDarkStyleUrl // ignore: cast_nullable_to_non_nullable
as String,mapLightStyleUrl: null == mapLightStyleUrl ? _self.mapLightStyleUrl : mapLightStyleUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
