// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_metadata.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RemoteAssetMobileAppMetadata {

 String? get cloudId; String? get createdAt; String? get adjustmentTime; String? get latitude; String? get longitude;
/// Create a copy of RemoteAssetMobileAppMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteAssetMobileAppMetadataCopyWith<RemoteAssetMobileAppMetadata> get copyWith => _$RemoteAssetMobileAppMetadataCopyWithImpl<RemoteAssetMobileAppMetadata>(this as RemoteAssetMobileAppMetadata, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteAssetMobileAppMetadata&&(identical(other.cloudId, cloudId) || other.cloudId == cloudId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.adjustmentTime, adjustmentTime) || other.adjustmentTime == adjustmentTime)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,cloudId,createdAt,adjustmentTime,latitude,longitude);

@override
String toString() {
  return 'RemoteAssetMobileAppMetadata(cloudId: $cloudId, createdAt: $createdAt, adjustmentTime: $adjustmentTime, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $RemoteAssetMobileAppMetadataCopyWith<$Res>  {
  factory $RemoteAssetMobileAppMetadataCopyWith(RemoteAssetMobileAppMetadata value, $Res Function(RemoteAssetMobileAppMetadata) _then) = _$RemoteAssetMobileAppMetadataCopyWithImpl;
@useResult
$Res call({
 String? cloudId, String? createdAt, String? adjustmentTime, String? latitude, String? longitude
});




}
/// @nodoc
class _$RemoteAssetMobileAppMetadataCopyWithImpl<$Res>
    implements $RemoteAssetMobileAppMetadataCopyWith<$Res> {
  _$RemoteAssetMobileAppMetadataCopyWithImpl(this._self, this._then);

  final RemoteAssetMobileAppMetadata _self;
  final $Res Function(RemoteAssetMobileAppMetadata) _then;

/// Create a copy of RemoteAssetMobileAppMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cloudId = freezed,Object? createdAt = freezed,Object? adjustmentTime = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_self.copyWith(
cloudId: freezed == cloudId ? _self.cloudId : cloudId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,adjustmentTime: freezed == adjustmentTime ? _self.adjustmentTime : adjustmentTime // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteAssetMobileAppMetadata].
extension RemoteAssetMobileAppMetadataPatterns on RemoteAssetMobileAppMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteAssetMobileAppMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteAssetMobileAppMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteAssetMobileAppMetadata value)  $default,){
final _that = this;
switch (_that) {
case _RemoteAssetMobileAppMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteAssetMobileAppMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteAssetMobileAppMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? cloudId,  String? createdAt,  String? adjustmentTime,  String? latitude,  String? longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteAssetMobileAppMetadata() when $default != null:
return $default(_that.cloudId,_that.createdAt,_that.adjustmentTime,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? cloudId,  String? createdAt,  String? adjustmentTime,  String? latitude,  String? longitude)  $default,) {final _that = this;
switch (_that) {
case _RemoteAssetMobileAppMetadata():
return $default(_that.cloudId,_that.createdAt,_that.adjustmentTime,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? cloudId,  String? createdAt,  String? adjustmentTime,  String? latitude,  String? longitude)?  $default,) {final _that = this;
switch (_that) {
case _RemoteAssetMobileAppMetadata() when $default != null:
return $default(_that.cloudId,_that.createdAt,_that.adjustmentTime,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc


class _RemoteAssetMobileAppMetadata extends RemoteAssetMobileAppMetadata {
  const _RemoteAssetMobileAppMetadata({this.cloudId, this.createdAt, this.adjustmentTime, this.latitude, this.longitude}): super._();
  

@override final  String? cloudId;
@override final  String? createdAt;
@override final  String? adjustmentTime;
@override final  String? latitude;
@override final  String? longitude;

/// Create a copy of RemoteAssetMobileAppMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteAssetMobileAppMetadataCopyWith<_RemoteAssetMobileAppMetadata> get copyWith => __$RemoteAssetMobileAppMetadataCopyWithImpl<_RemoteAssetMobileAppMetadata>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteAssetMobileAppMetadata&&(identical(other.cloudId, cloudId) || other.cloudId == cloudId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.adjustmentTime, adjustmentTime) || other.adjustmentTime == adjustmentTime)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,cloudId,createdAt,adjustmentTime,latitude,longitude);

@override
String toString() {
  return 'RemoteAssetMobileAppMetadata(cloudId: $cloudId, createdAt: $createdAt, adjustmentTime: $adjustmentTime, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$RemoteAssetMobileAppMetadataCopyWith<$Res> implements $RemoteAssetMobileAppMetadataCopyWith<$Res> {
  factory _$RemoteAssetMobileAppMetadataCopyWith(_RemoteAssetMobileAppMetadata value, $Res Function(_RemoteAssetMobileAppMetadata) _then) = __$RemoteAssetMobileAppMetadataCopyWithImpl;
@override @useResult
$Res call({
 String? cloudId, String? createdAt, String? adjustmentTime, String? latitude, String? longitude
});




}
/// @nodoc
class __$RemoteAssetMobileAppMetadataCopyWithImpl<$Res>
    implements _$RemoteAssetMobileAppMetadataCopyWith<$Res> {
  __$RemoteAssetMobileAppMetadataCopyWithImpl(this._self, this._then);

  final _RemoteAssetMobileAppMetadata _self;
  final $Res Function(_RemoteAssetMobileAppMetadata) _then;

/// Create a copy of RemoteAssetMobileAppMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cloudId = freezed,Object? createdAt = freezed,Object? adjustmentTime = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_RemoteAssetMobileAppMetadata(
cloudId: freezed == cloudId ? _self.cloudId : cloudId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,adjustmentTime: freezed == adjustmentTime ? _self.adjustmentTime : adjustmentTime // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
