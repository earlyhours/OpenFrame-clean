// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_filter.utils.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlbumFilter {

 QuickFilterMode get mode; String? get userId; String? get query;
/// Create a copy of AlbumFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlbumFilterCopyWith<AlbumFilter> get copyWith => _$AlbumFilterCopyWithImpl<AlbumFilter>(this as AlbumFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlbumFilter&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,mode,userId,query);

@override
String toString() {
  return 'AlbumFilter(mode: $mode, userId: $userId, query: $query)';
}


}

/// @nodoc
abstract mixin class $AlbumFilterCopyWith<$Res>  {
  factory $AlbumFilterCopyWith(AlbumFilter value, $Res Function(AlbumFilter) _then) = _$AlbumFilterCopyWithImpl;
@useResult
$Res call({
 QuickFilterMode mode, String? userId, String? query
});




}
/// @nodoc
class _$AlbumFilterCopyWithImpl<$Res>
    implements $AlbumFilterCopyWith<$Res> {
  _$AlbumFilterCopyWithImpl(this._self, this._then);

  final AlbumFilter _self;
  final $Res Function(AlbumFilter) _then;

/// Create a copy of AlbumFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mode = null,Object? userId = freezed,Object? query = freezed,}) {
  return _then(_self.copyWith(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as QuickFilterMode,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AlbumFilter].
extension AlbumFilterPatterns on AlbumFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlbumFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlbumFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlbumFilter value)  $default,){
final _that = this;
switch (_that) {
case _AlbumFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlbumFilter value)?  $default,){
final _that = this;
switch (_that) {
case _AlbumFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( QuickFilterMode mode,  String? userId,  String? query)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlbumFilter() when $default != null:
return $default(_that.mode,_that.userId,_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( QuickFilterMode mode,  String? userId,  String? query)  $default,) {final _that = this;
switch (_that) {
case _AlbumFilter():
return $default(_that.mode,_that.userId,_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( QuickFilterMode mode,  String? userId,  String? query)?  $default,) {final _that = this;
switch (_that) {
case _AlbumFilter() when $default != null:
return $default(_that.mode,_that.userId,_that.query);case _:
  return null;

}
}

}

/// @nodoc


class _AlbumFilter implements AlbumFilter {
  const _AlbumFilter({required this.mode, this.userId, this.query});
  

@override final  QuickFilterMode mode;
@override final  String? userId;
@override final  String? query;

/// Create a copy of AlbumFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlbumFilterCopyWith<_AlbumFilter> get copyWith => __$AlbumFilterCopyWithImpl<_AlbumFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlbumFilter&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,mode,userId,query);

@override
String toString() {
  return 'AlbumFilter(mode: $mode, userId: $userId, query: $query)';
}


}

/// @nodoc
abstract mixin class _$AlbumFilterCopyWith<$Res> implements $AlbumFilterCopyWith<$Res> {
  factory _$AlbumFilterCopyWith(_AlbumFilter value, $Res Function(_AlbumFilter) _then) = __$AlbumFilterCopyWithImpl;
@override @useResult
$Res call({
 QuickFilterMode mode, String? userId, String? query
});




}
/// @nodoc
class __$AlbumFilterCopyWithImpl<$Res>
    implements _$AlbumFilterCopyWith<$Res> {
  __$AlbumFilterCopyWithImpl(this._self, this._then);

  final _AlbumFilter _self;
  final $Res Function(_AlbumFilter) _then;

/// Create a copy of AlbumFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mode = null,Object? userId = freezed,Object? query = freezed,}) {
  return _then(_AlbumFilter(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as QuickFilterMode,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$AlbumSort {

 AlbumSortMode get mode; bool get isReverse;
/// Create a copy of AlbumSort
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlbumSortCopyWith<AlbumSort> get copyWith => _$AlbumSortCopyWithImpl<AlbumSort>(this as AlbumSort, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlbumSort&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.isReverse, isReverse) || other.isReverse == isReverse));
}


@override
int get hashCode => Object.hash(runtimeType,mode,isReverse);

@override
String toString() {
  return 'AlbumSort(mode: $mode, isReverse: $isReverse)';
}


}

/// @nodoc
abstract mixin class $AlbumSortCopyWith<$Res>  {
  factory $AlbumSortCopyWith(AlbumSort value, $Res Function(AlbumSort) _then) = _$AlbumSortCopyWithImpl;
@useResult
$Res call({
 AlbumSortMode mode, bool isReverse
});




}
/// @nodoc
class _$AlbumSortCopyWithImpl<$Res>
    implements $AlbumSortCopyWith<$Res> {
  _$AlbumSortCopyWithImpl(this._self, this._then);

  final AlbumSort _self;
  final $Res Function(AlbumSort) _then;

/// Create a copy of AlbumSort
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mode = null,Object? isReverse = null,}) {
  return _then(_self.copyWith(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as AlbumSortMode,isReverse: null == isReverse ? _self.isReverse : isReverse // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AlbumSort].
extension AlbumSortPatterns on AlbumSort {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlbumSort value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlbumSort() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlbumSort value)  $default,){
final _that = this;
switch (_that) {
case _AlbumSort():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlbumSort value)?  $default,){
final _that = this;
switch (_that) {
case _AlbumSort() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AlbumSortMode mode,  bool isReverse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlbumSort() when $default != null:
return $default(_that.mode,_that.isReverse);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AlbumSortMode mode,  bool isReverse)  $default,) {final _that = this;
switch (_that) {
case _AlbumSort():
return $default(_that.mode,_that.isReverse);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AlbumSortMode mode,  bool isReverse)?  $default,) {final _that = this;
switch (_that) {
case _AlbumSort() when $default != null:
return $default(_that.mode,_that.isReverse);case _:
  return null;

}
}

}

/// @nodoc


class _AlbumSort implements AlbumSort {
  const _AlbumSort({required this.mode, this.isReverse = false});
  

@override final  AlbumSortMode mode;
@override@JsonKey() final  bool isReverse;

/// Create a copy of AlbumSort
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlbumSortCopyWith<_AlbumSort> get copyWith => __$AlbumSortCopyWithImpl<_AlbumSort>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlbumSort&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.isReverse, isReverse) || other.isReverse == isReverse));
}


@override
int get hashCode => Object.hash(runtimeType,mode,isReverse);

@override
String toString() {
  return 'AlbumSort(mode: $mode, isReverse: $isReverse)';
}


}

/// @nodoc
abstract mixin class _$AlbumSortCopyWith<$Res> implements $AlbumSortCopyWith<$Res> {
  factory _$AlbumSortCopyWith(_AlbumSort value, $Res Function(_AlbumSort) _then) = __$AlbumSortCopyWithImpl;
@override @useResult
$Res call({
 AlbumSortMode mode, bool isReverse
});




}
/// @nodoc
class __$AlbumSortCopyWithImpl<$Res>
    implements _$AlbumSortCopyWith<$Res> {
  __$AlbumSortCopyWithImpl(this._self, this._then);

  final _AlbumSort _self;
  final $Res Function(_AlbumSort) _then;

/// Create a copy of AlbumSort
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mode = null,Object? isReverse = null,}) {
  return _then(_AlbumSort(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as AlbumSortMode,isReverse: null == isReverse ? _self.isReverse : isReverse // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
