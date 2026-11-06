// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_album.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocalAlbum implements DiagnosticableTreeMixin {

 String get id; String get name; DateTime get updatedAt; int get assetCount; BackupSelection get backupSelection; bool get isIosSharedAlbum; String? get linkedRemoteAlbumId;
/// Create a copy of LocalAlbum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalAlbumCopyWith<LocalAlbum> get copyWith => _$LocalAlbumCopyWithImpl<LocalAlbum>(this as LocalAlbum, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocalAlbum'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('assetCount', assetCount))..add(DiagnosticsProperty('backupSelection', backupSelection))..add(DiagnosticsProperty('isIosSharedAlbum', isIosSharedAlbum))..add(DiagnosticsProperty('linkedRemoteAlbumId', linkedRemoteAlbumId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalAlbum&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.assetCount, assetCount) || other.assetCount == assetCount)&&(identical(other.backupSelection, backupSelection) || other.backupSelection == backupSelection)&&(identical(other.isIosSharedAlbum, isIosSharedAlbum) || other.isIosSharedAlbum == isIosSharedAlbum)&&(identical(other.linkedRemoteAlbumId, linkedRemoteAlbumId) || other.linkedRemoteAlbumId == linkedRemoteAlbumId));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,updatedAt,assetCount,backupSelection,isIosSharedAlbum,linkedRemoteAlbumId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocalAlbum(id: $id, name: $name, updatedAt: $updatedAt, assetCount: $assetCount, backupSelection: $backupSelection, isIosSharedAlbum: $isIosSharedAlbum, linkedRemoteAlbumId: $linkedRemoteAlbumId)';
}


}

/// @nodoc
abstract mixin class $LocalAlbumCopyWith<$Res>  {
  factory $LocalAlbumCopyWith(LocalAlbum value, $Res Function(LocalAlbum) _then) = _$LocalAlbumCopyWithImpl;
@useResult
$Res call({
 String id, String name, DateTime updatedAt, int assetCount, BackupSelection backupSelection, bool isIosSharedAlbum, String? linkedRemoteAlbumId
});




}
/// @nodoc
class _$LocalAlbumCopyWithImpl<$Res>
    implements $LocalAlbumCopyWith<$Res> {
  _$LocalAlbumCopyWithImpl(this._self, this._then);

  final LocalAlbum _self;
  final $Res Function(LocalAlbum) _then;

/// Create a copy of LocalAlbum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? updatedAt = null,Object? assetCount = null,Object? backupSelection = null,Object? isIosSharedAlbum = null,Object? linkedRemoteAlbumId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,assetCount: null == assetCount ? _self.assetCount : assetCount // ignore: cast_nullable_to_non_nullable
as int,backupSelection: null == backupSelection ? _self.backupSelection : backupSelection // ignore: cast_nullable_to_non_nullable
as BackupSelection,isIosSharedAlbum: null == isIosSharedAlbum ? _self.isIosSharedAlbum : isIosSharedAlbum // ignore: cast_nullable_to_non_nullable
as bool,linkedRemoteAlbumId: freezed == linkedRemoteAlbumId ? _self.linkedRemoteAlbumId : linkedRemoteAlbumId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalAlbum].
extension LocalAlbumPatterns on LocalAlbum {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalAlbum value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalAlbum() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalAlbum value)  $default,){
final _that = this;
switch (_that) {
case _LocalAlbum():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalAlbum value)?  $default,){
final _that = this;
switch (_that) {
case _LocalAlbum() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  DateTime updatedAt,  int assetCount,  BackupSelection backupSelection,  bool isIosSharedAlbum,  String? linkedRemoteAlbumId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalAlbum() when $default != null:
return $default(_that.id,_that.name,_that.updatedAt,_that.assetCount,_that.backupSelection,_that.isIosSharedAlbum,_that.linkedRemoteAlbumId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  DateTime updatedAt,  int assetCount,  BackupSelection backupSelection,  bool isIosSharedAlbum,  String? linkedRemoteAlbumId)  $default,) {final _that = this;
switch (_that) {
case _LocalAlbum():
return $default(_that.id,_that.name,_that.updatedAt,_that.assetCount,_that.backupSelection,_that.isIosSharedAlbum,_that.linkedRemoteAlbumId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  DateTime updatedAt,  int assetCount,  BackupSelection backupSelection,  bool isIosSharedAlbum,  String? linkedRemoteAlbumId)?  $default,) {final _that = this;
switch (_that) {
case _LocalAlbum() when $default != null:
return $default(_that.id,_that.name,_that.updatedAt,_that.assetCount,_that.backupSelection,_that.isIosSharedAlbum,_that.linkedRemoteAlbumId);case _:
  return null;

}
}

}

/// @nodoc


class _LocalAlbum with DiagnosticableTreeMixin implements LocalAlbum {
  const _LocalAlbum({required this.id, required this.name, required this.updatedAt, this.assetCount = 0, this.backupSelection = BackupSelection.none, this.isIosSharedAlbum = false, this.linkedRemoteAlbumId});
  

@override final  String id;
@override final  String name;
@override final  DateTime updatedAt;
@override@JsonKey() final  int assetCount;
@override@JsonKey() final  BackupSelection backupSelection;
@override@JsonKey() final  bool isIosSharedAlbum;
@override final  String? linkedRemoteAlbumId;

/// Create a copy of LocalAlbum
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalAlbumCopyWith<_LocalAlbum> get copyWith => __$LocalAlbumCopyWithImpl<_LocalAlbum>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocalAlbum'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('assetCount', assetCount))..add(DiagnosticsProperty('backupSelection', backupSelection))..add(DiagnosticsProperty('isIosSharedAlbum', isIosSharedAlbum))..add(DiagnosticsProperty('linkedRemoteAlbumId', linkedRemoteAlbumId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalAlbum&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.assetCount, assetCount) || other.assetCount == assetCount)&&(identical(other.backupSelection, backupSelection) || other.backupSelection == backupSelection)&&(identical(other.isIosSharedAlbum, isIosSharedAlbum) || other.isIosSharedAlbum == isIosSharedAlbum)&&(identical(other.linkedRemoteAlbumId, linkedRemoteAlbumId) || other.linkedRemoteAlbumId == linkedRemoteAlbumId));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,updatedAt,assetCount,backupSelection,isIosSharedAlbum,linkedRemoteAlbumId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocalAlbum(id: $id, name: $name, updatedAt: $updatedAt, assetCount: $assetCount, backupSelection: $backupSelection, isIosSharedAlbum: $isIosSharedAlbum, linkedRemoteAlbumId: $linkedRemoteAlbumId)';
}


}

/// @nodoc
abstract mixin class _$LocalAlbumCopyWith<$Res> implements $LocalAlbumCopyWith<$Res> {
  factory _$LocalAlbumCopyWith(_LocalAlbum value, $Res Function(_LocalAlbum) _then) = __$LocalAlbumCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, DateTime updatedAt, int assetCount, BackupSelection backupSelection, bool isIosSharedAlbum, String? linkedRemoteAlbumId
});




}
/// @nodoc
class __$LocalAlbumCopyWithImpl<$Res>
    implements _$LocalAlbumCopyWith<$Res> {
  __$LocalAlbumCopyWithImpl(this._self, this._then);

  final _LocalAlbum _self;
  final $Res Function(_LocalAlbum) _then;

/// Create a copy of LocalAlbum
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? updatedAt = null,Object? assetCount = null,Object? backupSelection = null,Object? isIosSharedAlbum = null,Object? linkedRemoteAlbumId = freezed,}) {
  return _then(_LocalAlbum(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,assetCount: null == assetCount ? _self.assetCount : assetCount // ignore: cast_nullable_to_non_nullable
as int,backupSelection: null == backupSelection ? _self.backupSelection : backupSelection // ignore: cast_nullable_to_non_nullable
as BackupSelection,isIosSharedAlbum: null == isIosSharedAlbum ? _self.isIosSharedAlbum : isIosSharedAlbum // ignore: cast_nullable_to_non_nullable
as bool,linkedRemoteAlbumId: freezed == linkedRemoteAlbumId ? _self.linkedRemoteAlbumId : linkedRemoteAlbumId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
