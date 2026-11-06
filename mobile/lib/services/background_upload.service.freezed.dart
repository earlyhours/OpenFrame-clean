// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'background_upload.service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadTaskMetadata implements DiagnosticableTreeMixin {

 String get localAssetId; bool get isLivePhotos; String get livePhotoVideoId; String? get checksum;
/// Create a copy of UploadTaskMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadTaskMetadataCopyWith<UploadTaskMetadata> get copyWith => _$UploadTaskMetadataCopyWithImpl<UploadTaskMetadata>(this as UploadTaskMetadata, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UploadTaskMetadata'))
    ..add(DiagnosticsProperty('localAssetId', localAssetId))..add(DiagnosticsProperty('isLivePhotos', isLivePhotos))..add(DiagnosticsProperty('livePhotoVideoId', livePhotoVideoId))..add(DiagnosticsProperty('checksum', checksum));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadTaskMetadata&&(identical(other.localAssetId, localAssetId) || other.localAssetId == localAssetId)&&(identical(other.isLivePhotos, isLivePhotos) || other.isLivePhotos == isLivePhotos)&&(identical(other.livePhotoVideoId, livePhotoVideoId) || other.livePhotoVideoId == livePhotoVideoId)&&(identical(other.checksum, checksum) || other.checksum == checksum));
}


@override
int get hashCode => Object.hash(runtimeType,localAssetId,isLivePhotos,livePhotoVideoId,checksum);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UploadTaskMetadata(localAssetId: $localAssetId, isLivePhotos: $isLivePhotos, livePhotoVideoId: $livePhotoVideoId, checksum: $checksum)';
}


}

/// @nodoc
abstract mixin class $UploadTaskMetadataCopyWith<$Res>  {
  factory $UploadTaskMetadataCopyWith(UploadTaskMetadata value, $Res Function(UploadTaskMetadata) _then) = _$UploadTaskMetadataCopyWithImpl;
@useResult
$Res call({
 String localAssetId, bool isLivePhotos, String livePhotoVideoId, String? checksum
});




}
/// @nodoc
class _$UploadTaskMetadataCopyWithImpl<$Res>
    implements $UploadTaskMetadataCopyWith<$Res> {
  _$UploadTaskMetadataCopyWithImpl(this._self, this._then);

  final UploadTaskMetadata _self;
  final $Res Function(UploadTaskMetadata) _then;

/// Create a copy of UploadTaskMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? localAssetId = null,Object? isLivePhotos = null,Object? livePhotoVideoId = null,Object? checksum = freezed,}) {
  return _then(_self.copyWith(
localAssetId: null == localAssetId ? _self.localAssetId : localAssetId // ignore: cast_nullable_to_non_nullable
as String,isLivePhotos: null == isLivePhotos ? _self.isLivePhotos : isLivePhotos // ignore: cast_nullable_to_non_nullable
as bool,livePhotoVideoId: null == livePhotoVideoId ? _self.livePhotoVideoId : livePhotoVideoId // ignore: cast_nullable_to_non_nullable
as String,checksum: freezed == checksum ? _self.checksum : checksum // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadTaskMetadata].
extension UploadTaskMetadataPatterns on UploadTaskMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadTaskMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadTaskMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadTaskMetadata value)  $default,){
final _that = this;
switch (_that) {
case _UploadTaskMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadTaskMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _UploadTaskMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String localAssetId,  bool isLivePhotos,  String livePhotoVideoId,  String? checksum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadTaskMetadata() when $default != null:
return $default(_that.localAssetId,_that.isLivePhotos,_that.livePhotoVideoId,_that.checksum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String localAssetId,  bool isLivePhotos,  String livePhotoVideoId,  String? checksum)  $default,) {final _that = this;
switch (_that) {
case _UploadTaskMetadata():
return $default(_that.localAssetId,_that.isLivePhotos,_that.livePhotoVideoId,_that.checksum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String localAssetId,  bool isLivePhotos,  String livePhotoVideoId,  String? checksum)?  $default,) {final _that = this;
switch (_that) {
case _UploadTaskMetadata() when $default != null:
return $default(_that.localAssetId,_that.isLivePhotos,_that.livePhotoVideoId,_that.checksum);case _:
  return null;

}
}

}

/// @nodoc


class _UploadTaskMetadata extends UploadTaskMetadata with DiagnosticableTreeMixin {
  const _UploadTaskMetadata({required this.localAssetId, required this.isLivePhotos, required this.livePhotoVideoId, this.checksum}): super._();
  

@override final  String localAssetId;
@override final  bool isLivePhotos;
@override final  String livePhotoVideoId;
@override final  String? checksum;

/// Create a copy of UploadTaskMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadTaskMetadataCopyWith<_UploadTaskMetadata> get copyWith => __$UploadTaskMetadataCopyWithImpl<_UploadTaskMetadata>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UploadTaskMetadata'))
    ..add(DiagnosticsProperty('localAssetId', localAssetId))..add(DiagnosticsProperty('isLivePhotos', isLivePhotos))..add(DiagnosticsProperty('livePhotoVideoId', livePhotoVideoId))..add(DiagnosticsProperty('checksum', checksum));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadTaskMetadata&&(identical(other.localAssetId, localAssetId) || other.localAssetId == localAssetId)&&(identical(other.isLivePhotos, isLivePhotos) || other.isLivePhotos == isLivePhotos)&&(identical(other.livePhotoVideoId, livePhotoVideoId) || other.livePhotoVideoId == livePhotoVideoId)&&(identical(other.checksum, checksum) || other.checksum == checksum));
}


@override
int get hashCode => Object.hash(runtimeType,localAssetId,isLivePhotos,livePhotoVideoId,checksum);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UploadTaskMetadata(localAssetId: $localAssetId, isLivePhotos: $isLivePhotos, livePhotoVideoId: $livePhotoVideoId, checksum: $checksum)';
}


}

/// @nodoc
abstract mixin class _$UploadTaskMetadataCopyWith<$Res> implements $UploadTaskMetadataCopyWith<$Res> {
  factory _$UploadTaskMetadataCopyWith(_UploadTaskMetadata value, $Res Function(_UploadTaskMetadata) _then) = __$UploadTaskMetadataCopyWithImpl;
@override @useResult
$Res call({
 String localAssetId, bool isLivePhotos, String livePhotoVideoId, String? checksum
});




}
/// @nodoc
class __$UploadTaskMetadataCopyWithImpl<$Res>
    implements _$UploadTaskMetadataCopyWith<$Res> {
  __$UploadTaskMetadataCopyWithImpl(this._self, this._then);

  final _UploadTaskMetadata _self;
  final $Res Function(_UploadTaskMetadata) _then;

/// Create a copy of UploadTaskMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? localAssetId = null,Object? isLivePhotos = null,Object? livePhotoVideoId = null,Object? checksum = freezed,}) {
  return _then(_UploadTaskMetadata(
localAssetId: null == localAssetId ? _self.localAssetId : localAssetId // ignore: cast_nullable_to_non_nullable
as String,isLivePhotos: null == isLivePhotos ? _self.isLivePhotos : isLivePhotos // ignore: cast_nullable_to_non_nullable
as bool,livePhotoVideoId: null == livePhotoVideoId ? _self.livePhotoVideoId : livePhotoVideoId // ignore: cast_nullable_to_non_nullable
as String,checksum: freezed == checksum ? _self.checksum : checksum // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
