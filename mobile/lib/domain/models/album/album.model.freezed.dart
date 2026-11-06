// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RemoteAlbum implements DiagnosticableTreeMixin {

 String get id; String get name; String get ownerId; String get description; DateTime get createdAt; DateTime get updatedAt; String? get thumbnailAssetId; bool get isActivityEnabled; AlbumAssetOrder get order; int get assetCount; String get ownerName; bool get isShared;
/// Create a copy of RemoteAlbum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteAlbumCopyWith<RemoteAlbum> get copyWith => _$RemoteAlbumCopyWithImpl<RemoteAlbum>(this as RemoteAlbum, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RemoteAlbum'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('ownerId', ownerId))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('thumbnailAssetId', thumbnailAssetId))..add(DiagnosticsProperty('isActivityEnabled', isActivityEnabled))..add(DiagnosticsProperty('order', order))..add(DiagnosticsProperty('assetCount', assetCount))..add(DiagnosticsProperty('ownerName', ownerName))..add(DiagnosticsProperty('isShared', isShared));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteAlbum&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.thumbnailAssetId, thumbnailAssetId) || other.thumbnailAssetId == thumbnailAssetId)&&(identical(other.isActivityEnabled, isActivityEnabled) || other.isActivityEnabled == isActivityEnabled)&&(identical(other.order, order) || other.order == order)&&(identical(other.assetCount, assetCount) || other.assetCount == assetCount)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.isShared, isShared) || other.isShared == isShared));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,ownerId,description,createdAt,updatedAt,thumbnailAssetId,isActivityEnabled,order,assetCount,ownerName,isShared);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RemoteAlbum(id: $id, name: $name, ownerId: $ownerId, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, thumbnailAssetId: $thumbnailAssetId, isActivityEnabled: $isActivityEnabled, order: $order, assetCount: $assetCount, ownerName: $ownerName, isShared: $isShared)';
}


}

/// @nodoc
abstract mixin class $RemoteAlbumCopyWith<$Res>  {
  factory $RemoteAlbumCopyWith(RemoteAlbum value, $Res Function(RemoteAlbum) _then) = _$RemoteAlbumCopyWithImpl;
@useResult
$Res call({
 String id, String name, String ownerId, String description, DateTime createdAt, DateTime updatedAt, String? thumbnailAssetId, bool isActivityEnabled, AlbumAssetOrder order, int assetCount, String ownerName, bool isShared
});




}
/// @nodoc
class _$RemoteAlbumCopyWithImpl<$Res>
    implements $RemoteAlbumCopyWith<$Res> {
  _$RemoteAlbumCopyWithImpl(this._self, this._then);

  final RemoteAlbum _self;
  final $Res Function(RemoteAlbum) _then;

/// Create a copy of RemoteAlbum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? ownerId = null,Object? description = null,Object? createdAt = null,Object? updatedAt = null,Object? thumbnailAssetId = freezed,Object? isActivityEnabled = null,Object? order = null,Object? assetCount = null,Object? ownerName = null,Object? isShared = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,thumbnailAssetId: freezed == thumbnailAssetId ? _self.thumbnailAssetId : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
as String?,isActivityEnabled: null == isActivityEnabled ? _self.isActivityEnabled : isActivityEnabled // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AlbumAssetOrder,assetCount: null == assetCount ? _self.assetCount : assetCount // ignore: cast_nullable_to_non_nullable
as int,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,isShared: null == isShared ? _self.isShared : isShared // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteAlbum].
extension RemoteAlbumPatterns on RemoteAlbum {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteAlbum value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteAlbum() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteAlbum value)  $default,){
final _that = this;
switch (_that) {
case _RemoteAlbum():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteAlbum value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteAlbum() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String ownerId,  String description,  DateTime createdAt,  DateTime updatedAt,  String? thumbnailAssetId,  bool isActivityEnabled,  AlbumAssetOrder order,  int assetCount,  String ownerName,  bool isShared)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteAlbum() when $default != null:
return $default(_that.id,_that.name,_that.ownerId,_that.description,_that.createdAt,_that.updatedAt,_that.thumbnailAssetId,_that.isActivityEnabled,_that.order,_that.assetCount,_that.ownerName,_that.isShared);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String ownerId,  String description,  DateTime createdAt,  DateTime updatedAt,  String? thumbnailAssetId,  bool isActivityEnabled,  AlbumAssetOrder order,  int assetCount,  String ownerName,  bool isShared)  $default,) {final _that = this;
switch (_that) {
case _RemoteAlbum():
return $default(_that.id,_that.name,_that.ownerId,_that.description,_that.createdAt,_that.updatedAt,_that.thumbnailAssetId,_that.isActivityEnabled,_that.order,_that.assetCount,_that.ownerName,_that.isShared);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String ownerId,  String description,  DateTime createdAt,  DateTime updatedAt,  String? thumbnailAssetId,  bool isActivityEnabled,  AlbumAssetOrder order,  int assetCount,  String ownerName,  bool isShared)?  $default,) {final _that = this;
switch (_that) {
case _RemoteAlbum() when $default != null:
return $default(_that.id,_that.name,_that.ownerId,_that.description,_that.createdAt,_that.updatedAt,_that.thumbnailAssetId,_that.isActivityEnabled,_that.order,_that.assetCount,_that.ownerName,_that.isShared);case _:
  return null;

}
}

}

/// @nodoc


class _RemoteAlbum with DiagnosticableTreeMixin implements RemoteAlbum {
  const _RemoteAlbum({required this.id, required this.name, required this.ownerId, required this.description, required this.createdAt, required this.updatedAt, this.thumbnailAssetId, required this.isActivityEnabled, required this.order, required this.assetCount, required this.ownerName, required this.isShared});
  

@override final  String id;
@override final  String name;
@override final  String ownerId;
@override final  String description;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String? thumbnailAssetId;
@override final  bool isActivityEnabled;
@override final  AlbumAssetOrder order;
@override final  int assetCount;
@override final  String ownerName;
@override final  bool isShared;

/// Create a copy of RemoteAlbum
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteAlbumCopyWith<_RemoteAlbum> get copyWith => __$RemoteAlbumCopyWithImpl<_RemoteAlbum>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RemoteAlbum'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('ownerId', ownerId))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('thumbnailAssetId', thumbnailAssetId))..add(DiagnosticsProperty('isActivityEnabled', isActivityEnabled))..add(DiagnosticsProperty('order', order))..add(DiagnosticsProperty('assetCount', assetCount))..add(DiagnosticsProperty('ownerName', ownerName))..add(DiagnosticsProperty('isShared', isShared));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteAlbum&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.thumbnailAssetId, thumbnailAssetId) || other.thumbnailAssetId == thumbnailAssetId)&&(identical(other.isActivityEnabled, isActivityEnabled) || other.isActivityEnabled == isActivityEnabled)&&(identical(other.order, order) || other.order == order)&&(identical(other.assetCount, assetCount) || other.assetCount == assetCount)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.isShared, isShared) || other.isShared == isShared));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,ownerId,description,createdAt,updatedAt,thumbnailAssetId,isActivityEnabled,order,assetCount,ownerName,isShared);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RemoteAlbum(id: $id, name: $name, ownerId: $ownerId, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, thumbnailAssetId: $thumbnailAssetId, isActivityEnabled: $isActivityEnabled, order: $order, assetCount: $assetCount, ownerName: $ownerName, isShared: $isShared)';
}


}

/// @nodoc
abstract mixin class _$RemoteAlbumCopyWith<$Res> implements $RemoteAlbumCopyWith<$Res> {
  factory _$RemoteAlbumCopyWith(_RemoteAlbum value, $Res Function(_RemoteAlbum) _then) = __$RemoteAlbumCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String ownerId, String description, DateTime createdAt, DateTime updatedAt, String? thumbnailAssetId, bool isActivityEnabled, AlbumAssetOrder order, int assetCount, String ownerName, bool isShared
});




}
/// @nodoc
class __$RemoteAlbumCopyWithImpl<$Res>
    implements _$RemoteAlbumCopyWith<$Res> {
  __$RemoteAlbumCopyWithImpl(this._self, this._then);

  final _RemoteAlbum _self;
  final $Res Function(_RemoteAlbum) _then;

/// Create a copy of RemoteAlbum
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? ownerId = null,Object? description = null,Object? createdAt = null,Object? updatedAt = null,Object? thumbnailAssetId = freezed,Object? isActivityEnabled = null,Object? order = null,Object? assetCount = null,Object? ownerName = null,Object? isShared = null,}) {
  return _then(_RemoteAlbum(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,thumbnailAssetId: freezed == thumbnailAssetId ? _self.thumbnailAssetId : thumbnailAssetId // ignore: cast_nullable_to_non_nullable
as String?,isActivityEnabled: null == isActivityEnabled ? _self.isActivityEnabled : isActivityEnabled // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AlbumAssetOrder,assetCount: null == assetCount ? _self.assetCount : assetCount // ignore: cast_nullable_to_non_nullable
as int,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,isShared: null == isShared ? _self.isShared : isShared // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
