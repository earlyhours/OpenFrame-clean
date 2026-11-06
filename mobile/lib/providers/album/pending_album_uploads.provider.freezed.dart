// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_album_uploads.provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PendingAlbumUpload {

 LocalAsset get asset; double get progress; bool get failed;
/// Create a copy of PendingAlbumUpload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingAlbumUploadCopyWith<PendingAlbumUpload> get copyWith => _$PendingAlbumUploadCopyWithImpl<PendingAlbumUpload>(this as PendingAlbumUpload, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingAlbumUpload&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.failed, failed) || other.failed == failed));
}


@override
int get hashCode => Object.hash(runtimeType,asset,progress,failed);

@override
String toString() {
  return 'PendingAlbumUpload(asset: $asset, progress: $progress, failed: $failed)';
}


}

/// @nodoc
abstract mixin class $PendingAlbumUploadCopyWith<$Res>  {
  factory $PendingAlbumUploadCopyWith(PendingAlbumUpload value, $Res Function(PendingAlbumUpload) _then) = _$PendingAlbumUploadCopyWithImpl;
@useResult
$Res call({
 LocalAsset asset, double progress, bool failed
});




}
/// @nodoc
class _$PendingAlbumUploadCopyWithImpl<$Res>
    implements $PendingAlbumUploadCopyWith<$Res> {
  _$PendingAlbumUploadCopyWithImpl(this._self, this._then);

  final PendingAlbumUpload _self;
  final $Res Function(PendingAlbumUpload) _then;

/// Create a copy of PendingAlbumUpload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? asset = null,Object? progress = null,Object? failed = null,}) {
  return _then(_self.copyWith(
asset: null == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as LocalAsset,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PendingAlbumUpload].
extension PendingAlbumUploadPatterns on PendingAlbumUpload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PendingAlbumUpload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PendingAlbumUpload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PendingAlbumUpload value)  $default,){
final _that = this;
switch (_that) {
case _PendingAlbumUpload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PendingAlbumUpload value)?  $default,){
final _that = this;
switch (_that) {
case _PendingAlbumUpload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LocalAsset asset,  double progress,  bool failed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PendingAlbumUpload() when $default != null:
return $default(_that.asset,_that.progress,_that.failed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LocalAsset asset,  double progress,  bool failed)  $default,) {final _that = this;
switch (_that) {
case _PendingAlbumUpload():
return $default(_that.asset,_that.progress,_that.failed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LocalAsset asset,  double progress,  bool failed)?  $default,) {final _that = this;
switch (_that) {
case _PendingAlbumUpload() when $default != null:
return $default(_that.asset,_that.progress,_that.failed);case _:
  return null;

}
}

}

/// @nodoc


class _PendingAlbumUpload implements PendingAlbumUpload {
  const _PendingAlbumUpload({required this.asset, this.progress = 0.0, this.failed = false});
  

@override final  LocalAsset asset;
@override@JsonKey() final  double progress;
@override@JsonKey() final  bool failed;

/// Create a copy of PendingAlbumUpload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PendingAlbumUploadCopyWith<_PendingAlbumUpload> get copyWith => __$PendingAlbumUploadCopyWithImpl<_PendingAlbumUpload>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PendingAlbumUpload&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.failed, failed) || other.failed == failed));
}


@override
int get hashCode => Object.hash(runtimeType,asset,progress,failed);

@override
String toString() {
  return 'PendingAlbumUpload(asset: $asset, progress: $progress, failed: $failed)';
}


}

/// @nodoc
abstract mixin class _$PendingAlbumUploadCopyWith<$Res> implements $PendingAlbumUploadCopyWith<$Res> {
  factory _$PendingAlbumUploadCopyWith(_PendingAlbumUpload value, $Res Function(_PendingAlbumUpload) _then) = __$PendingAlbumUploadCopyWithImpl;
@override @useResult
$Res call({
 LocalAsset asset, double progress, bool failed
});




}
/// @nodoc
class __$PendingAlbumUploadCopyWithImpl<$Res>
    implements _$PendingAlbumUploadCopyWith<$Res> {
  __$PendingAlbumUploadCopyWithImpl(this._self, this._then);

  final _PendingAlbumUpload _self;
  final $Res Function(_PendingAlbumUpload) _then;

/// Create a copy of PendingAlbumUpload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? asset = null,Object? progress = null,Object? failed = null,}) {
  return _then(_PendingAlbumUpload(
asset: null == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as LocalAsset,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
