// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_intent_attachment.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShareIntentAttachment {

 String get path; ShareIntentAttachmentType get type; UploadStatus get status; double get uploadProgress; int get fileLength;
/// Create a copy of ShareIntentAttachment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShareIntentAttachmentCopyWith<ShareIntentAttachment> get copyWith => _$ShareIntentAttachmentCopyWithImpl<ShareIntentAttachment>(this as ShareIntentAttachment, _$identity);





@override
String toString() {
  return 'ShareIntentAttachment(path: $path, type: $type, status: $status, uploadProgress: $uploadProgress, fileLength: $fileLength)';
}


}

/// @nodoc
abstract mixin class $ShareIntentAttachmentCopyWith<$Res>  {
  factory $ShareIntentAttachmentCopyWith(ShareIntentAttachment value, $Res Function(ShareIntentAttachment) _then) = _$ShareIntentAttachmentCopyWithImpl;
@useResult
$Res call({
 String path, ShareIntentAttachmentType type, UploadStatus status, double uploadProgress, int fileLength
});




}
/// @nodoc
class _$ShareIntentAttachmentCopyWithImpl<$Res>
    implements $ShareIntentAttachmentCopyWith<$Res> {
  _$ShareIntentAttachmentCopyWithImpl(this._self, this._then);

  final ShareIntentAttachment _self;
  final $Res Function(ShareIntentAttachment) _then;

/// Create a copy of ShareIntentAttachment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? type = null,Object? status = null,Object? uploadProgress = null,Object? fileLength = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ShareIntentAttachmentType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UploadStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as double,fileLength: null == fileLength ? _self.fileLength : fileLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ShareIntentAttachment].
extension ShareIntentAttachmentPatterns on ShareIntentAttachment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShareIntentAttachment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShareIntentAttachment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShareIntentAttachment value)  $default,){
final _that = this;
switch (_that) {
case _ShareIntentAttachment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShareIntentAttachment value)?  $default,){
final _that = this;
switch (_that) {
case _ShareIntentAttachment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path,  ShareIntentAttachmentType type,  UploadStatus status,  double uploadProgress,  int fileLength)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShareIntentAttachment() when $default != null:
return $default(_that.path,_that.type,_that.status,_that.uploadProgress,_that.fileLength);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path,  ShareIntentAttachmentType type,  UploadStatus status,  double uploadProgress,  int fileLength)  $default,) {final _that = this;
switch (_that) {
case _ShareIntentAttachment():
return $default(_that.path,_that.type,_that.status,_that.uploadProgress,_that.fileLength);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path,  ShareIntentAttachmentType type,  UploadStatus status,  double uploadProgress,  int fileLength)?  $default,) {final _that = this;
switch (_that) {
case _ShareIntentAttachment() when $default != null:
return $default(_that.path,_that.type,_that.status,_that.uploadProgress,_that.fileLength);case _:
  return null;

}
}

}

/// @nodoc


class _ShareIntentAttachment extends ShareIntentAttachment {
  const _ShareIntentAttachment({required this.path, required this.type, required this.status, this.uploadProgress = 0.0, this.fileLength = 0}): super._();
  

@override final  String path;
@override final  ShareIntentAttachmentType type;
@override final  UploadStatus status;
@override@JsonKey() final  double uploadProgress;
@override@JsonKey() final  int fileLength;

/// Create a copy of ShareIntentAttachment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShareIntentAttachmentCopyWith<_ShareIntentAttachment> get copyWith => __$ShareIntentAttachmentCopyWithImpl<_ShareIntentAttachment>(this, _$identity);





@override
String toString() {
  return 'ShareIntentAttachment(path: $path, type: $type, status: $status, uploadProgress: $uploadProgress, fileLength: $fileLength)';
}


}

/// @nodoc
abstract mixin class _$ShareIntentAttachmentCopyWith<$Res> implements $ShareIntentAttachmentCopyWith<$Res> {
  factory _$ShareIntentAttachmentCopyWith(_ShareIntentAttachment value, $Res Function(_ShareIntentAttachment) _then) = __$ShareIntentAttachmentCopyWithImpl;
@override @useResult
$Res call({
 String path, ShareIntentAttachmentType type, UploadStatus status, double uploadProgress, int fileLength
});




}
/// @nodoc
class __$ShareIntentAttachmentCopyWithImpl<$Res>
    implements _$ShareIntentAttachmentCopyWith<$Res> {
  __$ShareIntentAttachmentCopyWithImpl(this._self, this._then);

  final _ShareIntentAttachment _self;
  final $Res Function(_ShareIntentAttachment) _then;

/// Create a copy of ShareIntentAttachment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? type = null,Object? status = null,Object? uploadProgress = null,Object? fileLength = null,}) {
  return _then(_ShareIntentAttachment(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ShareIntentAttachmentType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UploadStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as double,fileLength: null == fileLength ? _self.fileLength : fileLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
