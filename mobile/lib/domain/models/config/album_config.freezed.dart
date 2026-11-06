// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlbumConfig implements DiagnosticableTreeMixin {

 AlbumSortMode get sortMode; bool get isReverse; bool get isGrid;
/// Create a copy of AlbumConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlbumConfigCopyWith<AlbumConfig> get copyWith => _$AlbumConfigCopyWithImpl<AlbumConfig>(this as AlbumConfig, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AlbumConfig'))
    ..add(DiagnosticsProperty('sortMode', sortMode))..add(DiagnosticsProperty('isReverse', isReverse))..add(DiagnosticsProperty('isGrid', isGrid));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlbumConfig&&(identical(other.sortMode, sortMode) || other.sortMode == sortMode)&&(identical(other.isReverse, isReverse) || other.isReverse == isReverse)&&(identical(other.isGrid, isGrid) || other.isGrid == isGrid));
}


@override
int get hashCode => Object.hash(runtimeType,sortMode,isReverse,isGrid);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AlbumConfig(sortMode: $sortMode, isReverse: $isReverse, isGrid: $isGrid)';
}


}

/// @nodoc
abstract mixin class $AlbumConfigCopyWith<$Res>  {
  factory $AlbumConfigCopyWith(AlbumConfig value, $Res Function(AlbumConfig) _then) = _$AlbumConfigCopyWithImpl;
@useResult
$Res call({
 AlbumSortMode sortMode, bool isReverse, bool isGrid
});




}
/// @nodoc
class _$AlbumConfigCopyWithImpl<$Res>
    implements $AlbumConfigCopyWith<$Res> {
  _$AlbumConfigCopyWithImpl(this._self, this._then);

  final AlbumConfig _self;
  final $Res Function(AlbumConfig) _then;

/// Create a copy of AlbumConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sortMode = null,Object? isReverse = null,Object? isGrid = null,}) {
  return _then(_self.copyWith(
sortMode: null == sortMode ? _self.sortMode : sortMode // ignore: cast_nullable_to_non_nullable
as AlbumSortMode,isReverse: null == isReverse ? _self.isReverse : isReverse // ignore: cast_nullable_to_non_nullable
as bool,isGrid: null == isGrid ? _self.isGrid : isGrid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AlbumConfig].
extension AlbumConfigPatterns on AlbumConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlbumConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlbumConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlbumConfig value)  $default,){
final _that = this;
switch (_that) {
case _AlbumConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlbumConfig value)?  $default,){
final _that = this;
switch (_that) {
case _AlbumConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AlbumSortMode sortMode,  bool isReverse,  bool isGrid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlbumConfig() when $default != null:
return $default(_that.sortMode,_that.isReverse,_that.isGrid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AlbumSortMode sortMode,  bool isReverse,  bool isGrid)  $default,) {final _that = this;
switch (_that) {
case _AlbumConfig():
return $default(_that.sortMode,_that.isReverse,_that.isGrid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AlbumSortMode sortMode,  bool isReverse,  bool isGrid)?  $default,) {final _that = this;
switch (_that) {
case _AlbumConfig() when $default != null:
return $default(_that.sortMode,_that.isReverse,_that.isGrid);case _:
  return null;

}
}

}

/// @nodoc


class _AlbumConfig with DiagnosticableTreeMixin implements AlbumConfig {
  const _AlbumConfig({this.sortMode = AlbumSortMode.mostRecent, this.isReverse = true, this.isGrid = false});
  

@override@JsonKey() final  AlbumSortMode sortMode;
@override@JsonKey() final  bool isReverse;
@override@JsonKey() final  bool isGrid;

/// Create a copy of AlbumConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlbumConfigCopyWith<_AlbumConfig> get copyWith => __$AlbumConfigCopyWithImpl<_AlbumConfig>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AlbumConfig'))
    ..add(DiagnosticsProperty('sortMode', sortMode))..add(DiagnosticsProperty('isReverse', isReverse))..add(DiagnosticsProperty('isGrid', isGrid));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlbumConfig&&(identical(other.sortMode, sortMode) || other.sortMode == sortMode)&&(identical(other.isReverse, isReverse) || other.isReverse == isReverse)&&(identical(other.isGrid, isGrid) || other.isGrid == isGrid));
}


@override
int get hashCode => Object.hash(runtimeType,sortMode,isReverse,isGrid);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AlbumConfig(sortMode: $sortMode, isReverse: $isReverse, isGrid: $isGrid)';
}


}

/// @nodoc
abstract mixin class _$AlbumConfigCopyWith<$Res> implements $AlbumConfigCopyWith<$Res> {
  factory _$AlbumConfigCopyWith(_AlbumConfig value, $Res Function(_AlbumConfig) _then) = __$AlbumConfigCopyWithImpl;
@override @useResult
$Res call({
 AlbumSortMode sortMode, bool isReverse, bool isGrid
});




}
/// @nodoc
class __$AlbumConfigCopyWithImpl<$Res>
    implements _$AlbumConfigCopyWith<$Res> {
  __$AlbumConfigCopyWithImpl(this._self, this._then);

  final _AlbumConfig _self;
  final $Res Function(_AlbumConfig) _then;

/// Create a copy of AlbumConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sortMode = null,Object? isReverse = null,Object? isGrid = null,}) {
  return _then(_AlbumConfig(
sortMode: null == sortMode ? _self.sortMode : sortMode // ignore: cast_nullable_to_non_nullable
as AlbumSortMode,isReverse: null == isReverse ? _self.isReverse : isReverse // ignore: cast_nullable_to_non_nullable
as bool,isGrid: null == isGrid ? _self.isGrid : isGrid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
