// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_features.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServerFeatures implements DiagnosticableTreeMixin {

 bool get trash; bool get map; bool get oauthEnabled; bool get passwordLogin; bool get ocr; bool get smartSearch;
/// Create a copy of ServerFeatures
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerFeaturesCopyWith<ServerFeatures> get copyWith => _$ServerFeaturesCopyWithImpl<ServerFeatures>(this as ServerFeatures, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServerFeatures'))
    ..add(DiagnosticsProperty('trash', trash))..add(DiagnosticsProperty('map', map))..add(DiagnosticsProperty('oauthEnabled', oauthEnabled))..add(DiagnosticsProperty('passwordLogin', passwordLogin))..add(DiagnosticsProperty('ocr', ocr))..add(DiagnosticsProperty('smartSearch', smartSearch));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerFeatures&&(identical(other.trash, trash) || other.trash == trash)&&(identical(other.map, map) || other.map == map)&&(identical(other.oauthEnabled, oauthEnabled) || other.oauthEnabled == oauthEnabled)&&(identical(other.passwordLogin, passwordLogin) || other.passwordLogin == passwordLogin)&&(identical(other.ocr, ocr) || other.ocr == ocr)&&(identical(other.smartSearch, smartSearch) || other.smartSearch == smartSearch));
}


@override
int get hashCode => Object.hash(runtimeType,trash,map,oauthEnabled,passwordLogin,ocr,smartSearch);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServerFeatures(trash: $trash, map: $map, oauthEnabled: $oauthEnabled, passwordLogin: $passwordLogin, ocr: $ocr, smartSearch: $smartSearch)';
}


}

/// @nodoc
abstract mixin class $ServerFeaturesCopyWith<$Res>  {
  factory $ServerFeaturesCopyWith(ServerFeatures value, $Res Function(ServerFeatures) _then) = _$ServerFeaturesCopyWithImpl;
@useResult
$Res call({
 bool trash, bool map, bool oauthEnabled, bool passwordLogin, bool ocr, bool smartSearch
});




}
/// @nodoc
class _$ServerFeaturesCopyWithImpl<$Res>
    implements $ServerFeaturesCopyWith<$Res> {
  _$ServerFeaturesCopyWithImpl(this._self, this._then);

  final ServerFeatures _self;
  final $Res Function(ServerFeatures) _then;

/// Create a copy of ServerFeatures
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trash = null,Object? map = null,Object? oauthEnabled = null,Object? passwordLogin = null,Object? ocr = null,Object? smartSearch = null,}) {
  return _then(_self.copyWith(
trash: null == trash ? _self.trash : trash // ignore: cast_nullable_to_non_nullable
as bool,map: null == map ? _self.map : map // ignore: cast_nullable_to_non_nullable
as bool,oauthEnabled: null == oauthEnabled ? _self.oauthEnabled : oauthEnabled // ignore: cast_nullable_to_non_nullable
as bool,passwordLogin: null == passwordLogin ? _self.passwordLogin : passwordLogin // ignore: cast_nullable_to_non_nullable
as bool,ocr: null == ocr ? _self.ocr : ocr // ignore: cast_nullable_to_non_nullable
as bool,smartSearch: null == smartSearch ? _self.smartSearch : smartSearch // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ServerFeatures].
extension ServerFeaturesPatterns on ServerFeatures {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServerFeatures value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServerFeatures() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServerFeatures value)  $default,){
final _that = this;
switch (_that) {
case _ServerFeatures():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServerFeatures value)?  $default,){
final _that = this;
switch (_that) {
case _ServerFeatures() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool trash,  bool map,  bool oauthEnabled,  bool passwordLogin,  bool ocr,  bool smartSearch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServerFeatures() when $default != null:
return $default(_that.trash,_that.map,_that.oauthEnabled,_that.passwordLogin,_that.ocr,_that.smartSearch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool trash,  bool map,  bool oauthEnabled,  bool passwordLogin,  bool ocr,  bool smartSearch)  $default,) {final _that = this;
switch (_that) {
case _ServerFeatures():
return $default(_that.trash,_that.map,_that.oauthEnabled,_that.passwordLogin,_that.ocr,_that.smartSearch);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool trash,  bool map,  bool oauthEnabled,  bool passwordLogin,  bool ocr,  bool smartSearch)?  $default,) {final _that = this;
switch (_that) {
case _ServerFeatures() when $default != null:
return $default(_that.trash,_that.map,_that.oauthEnabled,_that.passwordLogin,_that.ocr,_that.smartSearch);case _:
  return null;

}
}

}

/// @nodoc


class _ServerFeatures with DiagnosticableTreeMixin implements ServerFeatures {
  const _ServerFeatures({required this.trash, required this.map, required this.oauthEnabled, required this.passwordLogin, this.ocr = false, this.smartSearch = false});
  

@override final  bool trash;
@override final  bool map;
@override final  bool oauthEnabled;
@override final  bool passwordLogin;
@override@JsonKey() final  bool ocr;
@override@JsonKey() final  bool smartSearch;

/// Create a copy of ServerFeatures
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerFeaturesCopyWith<_ServerFeatures> get copyWith => __$ServerFeaturesCopyWithImpl<_ServerFeatures>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServerFeatures'))
    ..add(DiagnosticsProperty('trash', trash))..add(DiagnosticsProperty('map', map))..add(DiagnosticsProperty('oauthEnabled', oauthEnabled))..add(DiagnosticsProperty('passwordLogin', passwordLogin))..add(DiagnosticsProperty('ocr', ocr))..add(DiagnosticsProperty('smartSearch', smartSearch));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerFeatures&&(identical(other.trash, trash) || other.trash == trash)&&(identical(other.map, map) || other.map == map)&&(identical(other.oauthEnabled, oauthEnabled) || other.oauthEnabled == oauthEnabled)&&(identical(other.passwordLogin, passwordLogin) || other.passwordLogin == passwordLogin)&&(identical(other.ocr, ocr) || other.ocr == ocr)&&(identical(other.smartSearch, smartSearch) || other.smartSearch == smartSearch));
}


@override
int get hashCode => Object.hash(runtimeType,trash,map,oauthEnabled,passwordLogin,ocr,smartSearch);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServerFeatures(trash: $trash, map: $map, oauthEnabled: $oauthEnabled, passwordLogin: $passwordLogin, ocr: $ocr, smartSearch: $smartSearch)';
}


}

/// @nodoc
abstract mixin class _$ServerFeaturesCopyWith<$Res> implements $ServerFeaturesCopyWith<$Res> {
  factory _$ServerFeaturesCopyWith(_ServerFeatures value, $Res Function(_ServerFeatures) _then) = __$ServerFeaturesCopyWithImpl;
@override @useResult
$Res call({
 bool trash, bool map, bool oauthEnabled, bool passwordLogin, bool ocr, bool smartSearch
});




}
/// @nodoc
class __$ServerFeaturesCopyWithImpl<$Res>
    implements _$ServerFeaturesCopyWith<$Res> {
  __$ServerFeaturesCopyWithImpl(this._self, this._then);

  final _ServerFeatures _self;
  final $Res Function(_ServerFeatures) _then;

/// Create a copy of ServerFeatures
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trash = null,Object? map = null,Object? oauthEnabled = null,Object? passwordLogin = null,Object? ocr = null,Object? smartSearch = null,}) {
  return _then(_ServerFeatures(
trash: null == trash ? _self.trash : trash // ignore: cast_nullable_to_non_nullable
as bool,map: null == map ? _self.map : map // ignore: cast_nullable_to_non_nullable
as bool,oauthEnabled: null == oauthEnabled ? _self.oauthEnabled : oauthEnabled // ignore: cast_nullable_to_non_nullable
as bool,passwordLogin: null == passwordLogin ? _self.passwordLogin : passwordLogin // ignore: cast_nullable_to_non_nullable
as bool,ocr: null == ocr ? _self.ocr : ocr // ignore: cast_nullable_to_non_nullable
as bool,smartSearch: null == smartSearch ? _self.smartSearch : smartSearch // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
