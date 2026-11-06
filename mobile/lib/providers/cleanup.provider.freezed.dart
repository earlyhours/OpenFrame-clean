// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleanup.provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CleanupState {

 DateTime? get selectedDate; List<LocalAsset> get assetsToDelete; int get totalBytes; bool get isScanning; bool get isDeleting; AssetKeepType get keepMediaType; bool get keepFavorites; Set<String> get keepAlbumIds;
/// Create a copy of CleanupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleanupStateCopyWith<CleanupState> get copyWith => _$CleanupStateCopyWithImpl<CleanupState>(this as CleanupState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleanupState&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&const DeepCollectionEquality().equals(other.assetsToDelete, assetsToDelete)&&(identical(other.totalBytes, totalBytes) || other.totalBytes == totalBytes)&&(identical(other.isScanning, isScanning) || other.isScanning == isScanning)&&(identical(other.isDeleting, isDeleting) || other.isDeleting == isDeleting)&&(identical(other.keepMediaType, keepMediaType) || other.keepMediaType == keepMediaType)&&(identical(other.keepFavorites, keepFavorites) || other.keepFavorites == keepFavorites)&&const DeepCollectionEquality().equals(other.keepAlbumIds, keepAlbumIds));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDate,const DeepCollectionEquality().hash(assetsToDelete),totalBytes,isScanning,isDeleting,keepMediaType,keepFavorites,const DeepCollectionEquality().hash(keepAlbumIds));

@override
String toString() {
  return 'CleanupState(selectedDate: $selectedDate, assetsToDelete: $assetsToDelete, totalBytes: $totalBytes, isScanning: $isScanning, isDeleting: $isDeleting, keepMediaType: $keepMediaType, keepFavorites: $keepFavorites, keepAlbumIds: $keepAlbumIds)';
}


}

/// @nodoc
abstract mixin class $CleanupStateCopyWith<$Res>  {
  factory $CleanupStateCopyWith(CleanupState value, $Res Function(CleanupState) _then) = _$CleanupStateCopyWithImpl;
@useResult
$Res call({
 DateTime? selectedDate, List<LocalAsset> assetsToDelete, int totalBytes, bool isScanning, bool isDeleting, AssetKeepType keepMediaType, bool keepFavorites, Set<String> keepAlbumIds
});




}
/// @nodoc
class _$CleanupStateCopyWithImpl<$Res>
    implements $CleanupStateCopyWith<$Res> {
  _$CleanupStateCopyWithImpl(this._self, this._then);

  final CleanupState _self;
  final $Res Function(CleanupState) _then;

/// Create a copy of CleanupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedDate = freezed,Object? assetsToDelete = null,Object? totalBytes = null,Object? isScanning = null,Object? isDeleting = null,Object? keepMediaType = null,Object? keepFavorites = null,Object? keepAlbumIds = null,}) {
  return _then(_self.copyWith(
selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,assetsToDelete: null == assetsToDelete ? _self.assetsToDelete : assetsToDelete // ignore: cast_nullable_to_non_nullable
as List<LocalAsset>,totalBytes: null == totalBytes ? _self.totalBytes : totalBytes // ignore: cast_nullable_to_non_nullable
as int,isScanning: null == isScanning ? _self.isScanning : isScanning // ignore: cast_nullable_to_non_nullable
as bool,isDeleting: null == isDeleting ? _self.isDeleting : isDeleting // ignore: cast_nullable_to_non_nullable
as bool,keepMediaType: null == keepMediaType ? _self.keepMediaType : keepMediaType // ignore: cast_nullable_to_non_nullable
as AssetKeepType,keepFavorites: null == keepFavorites ? _self.keepFavorites : keepFavorites // ignore: cast_nullable_to_non_nullable
as bool,keepAlbumIds: null == keepAlbumIds ? _self.keepAlbumIds : keepAlbumIds // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CleanupState].
extension CleanupStatePatterns on CleanupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleanupState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleanupState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleanupState value)  $default,){
final _that = this;
switch (_that) {
case _CleanupState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleanupState value)?  $default,){
final _that = this;
switch (_that) {
case _CleanupState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? selectedDate,  List<LocalAsset> assetsToDelete,  int totalBytes,  bool isScanning,  bool isDeleting,  AssetKeepType keepMediaType,  bool keepFavorites,  Set<String> keepAlbumIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleanupState() when $default != null:
return $default(_that.selectedDate,_that.assetsToDelete,_that.totalBytes,_that.isScanning,_that.isDeleting,_that.keepMediaType,_that.keepFavorites,_that.keepAlbumIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? selectedDate,  List<LocalAsset> assetsToDelete,  int totalBytes,  bool isScanning,  bool isDeleting,  AssetKeepType keepMediaType,  bool keepFavorites,  Set<String> keepAlbumIds)  $default,) {final _that = this;
switch (_that) {
case _CleanupState():
return $default(_that.selectedDate,_that.assetsToDelete,_that.totalBytes,_that.isScanning,_that.isDeleting,_that.keepMediaType,_that.keepFavorites,_that.keepAlbumIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? selectedDate,  List<LocalAsset> assetsToDelete,  int totalBytes,  bool isScanning,  bool isDeleting,  AssetKeepType keepMediaType,  bool keepFavorites,  Set<String> keepAlbumIds)?  $default,) {final _that = this;
switch (_that) {
case _CleanupState() when $default != null:
return $default(_that.selectedDate,_that.assetsToDelete,_that.totalBytes,_that.isScanning,_that.isDeleting,_that.keepMediaType,_that.keepFavorites,_that.keepAlbumIds);case _:
  return null;

}
}

}

/// @nodoc


class _CleanupState implements CleanupState {
  const _CleanupState({this.selectedDate, final  List<LocalAsset> assetsToDelete = const [], this.totalBytes = 0, this.isScanning = false, this.isDeleting = false, this.keepMediaType = AssetKeepType.none, this.keepFavorites = true, final  Set<String> keepAlbumIds = const {}}): _assetsToDelete = assetsToDelete,_keepAlbumIds = keepAlbumIds;
  

@override final  DateTime? selectedDate;
 final  List<LocalAsset> _assetsToDelete;
@override@JsonKey() List<LocalAsset> get assetsToDelete {
  if (_assetsToDelete is EqualUnmodifiableListView) return _assetsToDelete;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assetsToDelete);
}

@override@JsonKey() final  int totalBytes;
@override@JsonKey() final  bool isScanning;
@override@JsonKey() final  bool isDeleting;
@override@JsonKey() final  AssetKeepType keepMediaType;
@override@JsonKey() final  bool keepFavorites;
 final  Set<String> _keepAlbumIds;
@override@JsonKey() Set<String> get keepAlbumIds {
  if (_keepAlbumIds is EqualUnmodifiableSetView) return _keepAlbumIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_keepAlbumIds);
}


/// Create a copy of CleanupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleanupStateCopyWith<_CleanupState> get copyWith => __$CleanupStateCopyWithImpl<_CleanupState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleanupState&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&const DeepCollectionEquality().equals(other._assetsToDelete, _assetsToDelete)&&(identical(other.totalBytes, totalBytes) || other.totalBytes == totalBytes)&&(identical(other.isScanning, isScanning) || other.isScanning == isScanning)&&(identical(other.isDeleting, isDeleting) || other.isDeleting == isDeleting)&&(identical(other.keepMediaType, keepMediaType) || other.keepMediaType == keepMediaType)&&(identical(other.keepFavorites, keepFavorites) || other.keepFavorites == keepFavorites)&&const DeepCollectionEquality().equals(other._keepAlbumIds, _keepAlbumIds));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDate,const DeepCollectionEquality().hash(_assetsToDelete),totalBytes,isScanning,isDeleting,keepMediaType,keepFavorites,const DeepCollectionEquality().hash(_keepAlbumIds));

@override
String toString() {
  return 'CleanupState(selectedDate: $selectedDate, assetsToDelete: $assetsToDelete, totalBytes: $totalBytes, isScanning: $isScanning, isDeleting: $isDeleting, keepMediaType: $keepMediaType, keepFavorites: $keepFavorites, keepAlbumIds: $keepAlbumIds)';
}


}

/// @nodoc
abstract mixin class _$CleanupStateCopyWith<$Res> implements $CleanupStateCopyWith<$Res> {
  factory _$CleanupStateCopyWith(_CleanupState value, $Res Function(_CleanupState) _then) = __$CleanupStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime? selectedDate, List<LocalAsset> assetsToDelete, int totalBytes, bool isScanning, bool isDeleting, AssetKeepType keepMediaType, bool keepFavorites, Set<String> keepAlbumIds
});




}
/// @nodoc
class __$CleanupStateCopyWithImpl<$Res>
    implements _$CleanupStateCopyWith<$Res> {
  __$CleanupStateCopyWithImpl(this._self, this._then);

  final _CleanupState _self;
  final $Res Function(_CleanupState) _then;

/// Create a copy of CleanupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedDate = freezed,Object? assetsToDelete = null,Object? totalBytes = null,Object? isScanning = null,Object? isDeleting = null,Object? keepMediaType = null,Object? keepFavorites = null,Object? keepAlbumIds = null,}) {
  return _then(_CleanupState(
selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,assetsToDelete: null == assetsToDelete ? _self._assetsToDelete : assetsToDelete // ignore: cast_nullable_to_non_nullable
as List<LocalAsset>,totalBytes: null == totalBytes ? _self.totalBytes : totalBytes // ignore: cast_nullable_to_non_nullable
as int,isScanning: null == isScanning ? _self.isScanning : isScanning // ignore: cast_nullable_to_non_nullable
as bool,isDeleting: null == isDeleting ? _self.isDeleting : isDeleting // ignore: cast_nullable_to_non_nullable
as bool,keepMediaType: null == keepMediaType ? _self.keepMediaType : keepMediaType // ignore: cast_nullable_to_non_nullable
as AssetKeepType,keepFavorites: null == keepFavorites ? _self.keepFavorites : keepFavorites // ignore: cast_nullable_to_non_nullable
as bool,keepAlbumIds: null == keepAlbumIds ? _self._keepAlbumIds : keepAlbumIds // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

// dart format on
