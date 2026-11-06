// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scrubber.widget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Segment {

 DateTime get date; double get startOffset; String get scrollLabel; bool get showSegment;
/// Create a copy of _Segment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SegmentCopyWith<_Segment> get copyWith => __$SegmentCopyWithImpl<_Segment>(this as _Segment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Segment&&(identical(other.date, date) || other.date == date)&&(identical(other.startOffset, startOffset) || other.startOffset == startOffset)&&(identical(other.scrollLabel, scrollLabel) || other.scrollLabel == scrollLabel)&&(identical(other.showSegment, showSegment) || other.showSegment == showSegment));
}


@override
int get hashCode => Object.hash(runtimeType,date,startOffset,scrollLabel,showSegment);

@override
String toString() {
  return '_Segment(date: $date, startOffset: $startOffset, scrollLabel: $scrollLabel, showSegment: $showSegment)';
}


}

/// @nodoc
abstract mixin class _$SegmentCopyWith<$Res>  {
  factory _$SegmentCopyWith(_Segment value, $Res Function(_Segment) _then) = __$SegmentCopyWithImpl;
@useResult
$Res call({
 DateTime date, double startOffset, String scrollLabel, bool showSegment
});




}
/// @nodoc
class __$SegmentCopyWithImpl<$Res>
    implements _$SegmentCopyWith<$Res> {
  __$SegmentCopyWithImpl(this._self, this._then);

  final _Segment _self;
  final $Res Function(_Segment) _then;

/// Create a copy of _Segment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? startOffset = null,Object? scrollLabel = null,Object? showSegment = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,startOffset: null == startOffset ? _self.startOffset : startOffset // ignore: cast_nullable_to_non_nullable
as double,scrollLabel: null == scrollLabel ? _self.scrollLabel : scrollLabel // ignore: cast_nullable_to_non_nullable
as String,showSegment: null == showSegment ? _self.showSegment : showSegment // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [_Segment].
extension _SegmentPatterns on _Segment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( __Segment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case __Segment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( __Segment value)  $default,){
final _that = this;
switch (_that) {
case __Segment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( __Segment value)?  $default,){
final _that = this;
switch (_that) {
case __Segment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  double startOffset,  String scrollLabel,  bool showSegment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case __Segment() when $default != null:
return $default(_that.date,_that.startOffset,_that.scrollLabel,_that.showSegment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  double startOffset,  String scrollLabel,  bool showSegment)  $default,) {final _that = this;
switch (_that) {
case __Segment():
return $default(_that.date,_that.startOffset,_that.scrollLabel,_that.showSegment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  double startOffset,  String scrollLabel,  bool showSegment)?  $default,) {final _that = this;
switch (_that) {
case __Segment() when $default != null:
return $default(_that.date,_that.startOffset,_that.scrollLabel,_that.showSegment);case _:
  return null;

}
}

}

/// @nodoc


class __Segment implements _Segment {
  const __Segment({required this.date, required this.startOffset, required this.scrollLabel, this.showSegment = false});
  

@override final  DateTime date;
@override final  double startOffset;
@override final  String scrollLabel;
@override@JsonKey() final  bool showSegment;

/// Create a copy of _Segment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$_SegmentCopyWith<__Segment> get copyWith => __$_SegmentCopyWithImpl<__Segment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is __Segment&&(identical(other.date, date) || other.date == date)&&(identical(other.startOffset, startOffset) || other.startOffset == startOffset)&&(identical(other.scrollLabel, scrollLabel) || other.scrollLabel == scrollLabel)&&(identical(other.showSegment, showSegment) || other.showSegment == showSegment));
}


@override
int get hashCode => Object.hash(runtimeType,date,startOffset,scrollLabel,showSegment);

@override
String toString() {
  return '_Segment(date: $date, startOffset: $startOffset, scrollLabel: $scrollLabel, showSegment: $showSegment)';
}


}

/// @nodoc
abstract mixin class _$_SegmentCopyWith<$Res> implements _$SegmentCopyWith<$Res> {
  factory _$_SegmentCopyWith(__Segment value, $Res Function(__Segment) _then) = __$_SegmentCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, double startOffset, String scrollLabel, bool showSegment
});




}
/// @nodoc
class __$_SegmentCopyWithImpl<$Res>
    implements _$_SegmentCopyWith<$Res> {
  __$_SegmentCopyWithImpl(this._self, this._then);

  final __Segment _self;
  final $Res Function(__Segment) _then;

/// Create a copy of _Segment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? startOffset = null,Object? scrollLabel = null,Object? showSegment = null,}) {
  return _then(__Segment(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,startOffset: null == startOffset ? _self.startOffset : startOffset // ignore: cast_nullable_to_non_nullable
as double,scrollLabel: null == scrollLabel ? _self.scrollLabel : scrollLabel // ignore: cast_nullable_to_non_nullable
as String,showSegment: null == showSegment ? _self.showSegment : showSegment // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
