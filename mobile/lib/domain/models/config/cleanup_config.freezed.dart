// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleanup_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CleanupConfig {

 bool get keepFavorites; AssetKeepType get keepMediaType; List<String> get keepAlbumIds; int get cutoffDaysAgo; bool get defaultsInitialized;
/// Create a copy of CleanupConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleanupConfigCopyWith<CleanupConfig> get copyWith => _$CleanupConfigCopyWithImpl<CleanupConfig>(this as CleanupConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleanupConfig&&(identical(other.keepFavorites, keepFavorites) || other.keepFavorites == keepFavorites)&&(identical(other.keepMediaType, keepMediaType) || other.keepMediaType == keepMediaType)&&const DeepCollectionEquality().equals(other.keepAlbumIds, keepAlbumIds)&&(identical(other.cutoffDaysAgo, cutoffDaysAgo) || other.cutoffDaysAgo == cutoffDaysAgo)&&(identical(other.defaultsInitialized, defaultsInitialized) || other.defaultsInitialized == defaultsInitialized));
}


@override
int get hashCode => Object.hash(runtimeType,keepFavorites,keepMediaType,const DeepCollectionEquality().hash(keepAlbumIds),cutoffDaysAgo,defaultsInitialized);

@override
String toString() {
  return 'CleanupConfig(keepFavorites: $keepFavorites, keepMediaType: $keepMediaType, keepAlbumIds: $keepAlbumIds, cutoffDaysAgo: $cutoffDaysAgo, defaultsInitialized: $defaultsInitialized)';
}


}

/// @nodoc
abstract mixin class $CleanupConfigCopyWith<$Res>  {
  factory $CleanupConfigCopyWith(CleanupConfig value, $Res Function(CleanupConfig) _then) = _$CleanupConfigCopyWithImpl;
@useResult
$Res call({
 bool keepFavorites, AssetKeepType keepMediaType, List<String> keepAlbumIds, int cutoffDaysAgo, bool defaultsInitialized
});




}
/// @nodoc
class _$CleanupConfigCopyWithImpl<$Res>
    implements $CleanupConfigCopyWith<$Res> {
  _$CleanupConfigCopyWithImpl(this._self, this._then);

  final CleanupConfig _self;
  final $Res Function(CleanupConfig) _then;

/// Create a copy of CleanupConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keepFavorites = null,Object? keepMediaType = null,Object? keepAlbumIds = null,Object? cutoffDaysAgo = null,Object? defaultsInitialized = null,}) {
  return _then(_self.copyWith(
keepFavorites: null == keepFavorites ? _self.keepFavorites : keepFavorites // ignore: cast_nullable_to_non_nullable
as bool,keepMediaType: null == keepMediaType ? _self.keepMediaType : keepMediaType // ignore: cast_nullable_to_non_nullable
as AssetKeepType,keepAlbumIds: null == keepAlbumIds ? _self.keepAlbumIds : keepAlbumIds // ignore: cast_nullable_to_non_nullable
as List<String>,cutoffDaysAgo: null == cutoffDaysAgo ? _self.cutoffDaysAgo : cutoffDaysAgo // ignore: cast_nullable_to_non_nullable
as int,defaultsInitialized: null == defaultsInitialized ? _self.defaultsInitialized : defaultsInitialized // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CleanupConfig].
extension CleanupConfigPatterns on CleanupConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleanupConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleanupConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleanupConfig value)  $default,){
final _that = this;
switch (_that) {
case _CleanupConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleanupConfig value)?  $default,){
final _that = this;
switch (_that) {
case _CleanupConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool keepFavorites,  AssetKeepType keepMediaType,  List<String> keepAlbumIds,  int cutoffDaysAgo,  bool defaultsInitialized)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleanupConfig() when $default != null:
return $default(_that.keepFavorites,_that.keepMediaType,_that.keepAlbumIds,_that.cutoffDaysAgo,_that.defaultsInitialized);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool keepFavorites,  AssetKeepType keepMediaType,  List<String> keepAlbumIds,  int cutoffDaysAgo,  bool defaultsInitialized)  $default,) {final _that = this;
switch (_that) {
case _CleanupConfig():
return $default(_that.keepFavorites,_that.keepMediaType,_that.keepAlbumIds,_that.cutoffDaysAgo,_that.defaultsInitialized);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool keepFavorites,  AssetKeepType keepMediaType,  List<String> keepAlbumIds,  int cutoffDaysAgo,  bool defaultsInitialized)?  $default,) {final _that = this;
switch (_that) {
case _CleanupConfig() when $default != null:
return $default(_that.keepFavorites,_that.keepMediaType,_that.keepAlbumIds,_that.cutoffDaysAgo,_that.defaultsInitialized);case _:
  return null;

}
}

}

/// @nodoc


class _CleanupConfig implements CleanupConfig {
  const _CleanupConfig({this.keepFavorites = true, this.keepMediaType = AssetKeepType.none, final  List<String> keepAlbumIds = const [], this.cutoffDaysAgo = -1, this.defaultsInitialized = false}): _keepAlbumIds = keepAlbumIds;
  

@override@JsonKey() final  bool keepFavorites;
@override@JsonKey() final  AssetKeepType keepMediaType;
 final  List<String> _keepAlbumIds;
@override@JsonKey() List<String> get keepAlbumIds {
  if (_keepAlbumIds is EqualUnmodifiableListView) return _keepAlbumIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_keepAlbumIds);
}

@override@JsonKey() final  int cutoffDaysAgo;
@override@JsonKey() final  bool defaultsInitialized;

/// Create a copy of CleanupConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleanupConfigCopyWith<_CleanupConfig> get copyWith => __$CleanupConfigCopyWithImpl<_CleanupConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleanupConfig&&(identical(other.keepFavorites, keepFavorites) || other.keepFavorites == keepFavorites)&&(identical(other.keepMediaType, keepMediaType) || other.keepMediaType == keepMediaType)&&const DeepCollectionEquality().equals(other._keepAlbumIds, _keepAlbumIds)&&(identical(other.cutoffDaysAgo, cutoffDaysAgo) || other.cutoffDaysAgo == cutoffDaysAgo)&&(identical(other.defaultsInitialized, defaultsInitialized) || other.defaultsInitialized == defaultsInitialized));
}


@override
int get hashCode => Object.hash(runtimeType,keepFavorites,keepMediaType,const DeepCollectionEquality().hash(_keepAlbumIds),cutoffDaysAgo,defaultsInitialized);

@override
String toString() {
  return 'CleanupConfig(keepFavorites: $keepFavorites, keepMediaType: $keepMediaType, keepAlbumIds: $keepAlbumIds, cutoffDaysAgo: $cutoffDaysAgo, defaultsInitialized: $defaultsInitialized)';
}


}

/// @nodoc
abstract mixin class _$CleanupConfigCopyWith<$Res> implements $CleanupConfigCopyWith<$Res> {
  factory _$CleanupConfigCopyWith(_CleanupConfig value, $Res Function(_CleanupConfig) _then) = __$CleanupConfigCopyWithImpl;
@override @useResult
$Res call({
 bool keepFavorites, AssetKeepType keepMediaType, List<String> keepAlbumIds, int cutoffDaysAgo, bool defaultsInitialized
});




}
/// @nodoc
class __$CleanupConfigCopyWithImpl<$Res>
    implements _$CleanupConfigCopyWith<$Res> {
  __$CleanupConfigCopyWithImpl(this._self, this._then);

  final _CleanupConfig _self;
  final $Res Function(_CleanupConfig) _then;

/// Create a copy of CleanupConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? keepFavorites = null,Object? keepMediaType = null,Object? keepAlbumIds = null,Object? cutoffDaysAgo = null,Object? defaultsInitialized = null,}) {
  return _then(_CleanupConfig(
keepFavorites: null == keepFavorites ? _self.keepFavorites : keepFavorites // ignore: cast_nullable_to_non_nullable
as bool,keepMediaType: null == keepMediaType ? _self.keepMediaType : keepMediaType // ignore: cast_nullable_to_non_nullable
as AssetKeepType,keepAlbumIds: null == keepAlbumIds ? _self._keepAlbumIds : keepAlbumIds // ignore: cast_nullable_to_non_nullable
as List<String>,cutoffDaysAgo: null == cutoffDaysAgo ? _self.cutoffDaysAgo : cutoffDaysAgo // ignore: cast_nullable_to_non_nullable
as int,defaultsInitialized: null == defaultsInitialized ? _self.defaultsInitialized : defaultsInitialized // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
