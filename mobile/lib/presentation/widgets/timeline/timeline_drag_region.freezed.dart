// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_drag_region.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TimelineAssetIndex {

 int get assetIndex; int get segmentIndex;
/// Create a copy of TimelineAssetIndex
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimelineAssetIndexCopyWith<TimelineAssetIndex> get copyWith => _$TimelineAssetIndexCopyWithImpl<TimelineAssetIndex>(this as TimelineAssetIndex, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimelineAssetIndex&&(identical(other.assetIndex, assetIndex) || other.assetIndex == assetIndex)&&(identical(other.segmentIndex, segmentIndex) || other.segmentIndex == segmentIndex));
}


@override
int get hashCode => Object.hash(runtimeType,assetIndex,segmentIndex);

@override
String toString() {
  return 'TimelineAssetIndex(assetIndex: $assetIndex, segmentIndex: $segmentIndex)';
}


}

/// @nodoc
abstract mixin class $TimelineAssetIndexCopyWith<$Res>  {
  factory $TimelineAssetIndexCopyWith(TimelineAssetIndex value, $Res Function(TimelineAssetIndex) _then) = _$TimelineAssetIndexCopyWithImpl;
@useResult
$Res call({
 int assetIndex, int segmentIndex
});




}
/// @nodoc
class _$TimelineAssetIndexCopyWithImpl<$Res>
    implements $TimelineAssetIndexCopyWith<$Res> {
  _$TimelineAssetIndexCopyWithImpl(this._self, this._then);

  final TimelineAssetIndex _self;
  final $Res Function(TimelineAssetIndex) _then;

/// Create a copy of TimelineAssetIndex
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assetIndex = null,Object? segmentIndex = null,}) {
  return _then(_self.copyWith(
assetIndex: null == assetIndex ? _self.assetIndex : assetIndex // ignore: cast_nullable_to_non_nullable
as int,segmentIndex: null == segmentIndex ? _self.segmentIndex : segmentIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TimelineAssetIndex].
extension TimelineAssetIndexPatterns on TimelineAssetIndex {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimelineAssetIndex value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimelineAssetIndex() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimelineAssetIndex value)  $default,){
final _that = this;
switch (_that) {
case _TimelineAssetIndex():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimelineAssetIndex value)?  $default,){
final _that = this;
switch (_that) {
case _TimelineAssetIndex() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int assetIndex,  int segmentIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimelineAssetIndex() when $default != null:
return $default(_that.assetIndex,_that.segmentIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int assetIndex,  int segmentIndex)  $default,) {final _that = this;
switch (_that) {
case _TimelineAssetIndex():
return $default(_that.assetIndex,_that.segmentIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int assetIndex,  int segmentIndex)?  $default,) {final _that = this;
switch (_that) {
case _TimelineAssetIndex() when $default != null:
return $default(_that.assetIndex,_that.segmentIndex);case _:
  return null;

}
}

}

/// @nodoc


class _TimelineAssetIndex implements TimelineAssetIndex {
  const _TimelineAssetIndex({required this.assetIndex, required this.segmentIndex});
  

@override final  int assetIndex;
@override final  int segmentIndex;

/// Create a copy of TimelineAssetIndex
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimelineAssetIndexCopyWith<_TimelineAssetIndex> get copyWith => __$TimelineAssetIndexCopyWithImpl<_TimelineAssetIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimelineAssetIndex&&(identical(other.assetIndex, assetIndex) || other.assetIndex == assetIndex)&&(identical(other.segmentIndex, segmentIndex) || other.segmentIndex == segmentIndex));
}


@override
int get hashCode => Object.hash(runtimeType,assetIndex,segmentIndex);

@override
String toString() {
  return 'TimelineAssetIndex(assetIndex: $assetIndex, segmentIndex: $segmentIndex)';
}


}

/// @nodoc
abstract mixin class _$TimelineAssetIndexCopyWith<$Res> implements $TimelineAssetIndexCopyWith<$Res> {
  factory _$TimelineAssetIndexCopyWith(_TimelineAssetIndex value, $Res Function(_TimelineAssetIndex) _then) = __$TimelineAssetIndexCopyWithImpl;
@override @useResult
$Res call({
 int assetIndex, int segmentIndex
});




}
/// @nodoc
class __$TimelineAssetIndexCopyWithImpl<$Res>
    implements _$TimelineAssetIndexCopyWith<$Res> {
  __$TimelineAssetIndexCopyWithImpl(this._self, this._then);

  final _TimelineAssetIndex _self;
  final $Res Function(_TimelineAssetIndex) _then;

/// Create a copy of TimelineAssetIndex
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assetIndex = null,Object? segmentIndex = null,}) {
  return _then(_TimelineAssetIndex(
assetIndex: null == assetIndex ? _self.assetIndex : assetIndex // ignore: cast_nullable_to_non_nullable
as int,segmentIndex: null == segmentIndex ? _self.segmentIndex : segmentIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
