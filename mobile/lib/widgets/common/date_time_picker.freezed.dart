// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_time_picker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TimeZoneOffset {

 String get display; Location get location;
/// Create a copy of _TimeZoneOffset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeZoneOffsetCopyWith<_TimeZoneOffset> get copyWith => __$TimeZoneOffsetCopyWithImpl<_TimeZoneOffset>(this as _TimeZoneOffset, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeZoneOffset&&(identical(other.display, display) || other.display == display)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,display,location);

@override
String toString() {
  return '_TimeZoneOffset(display: $display, location: $location)';
}


}

/// @nodoc
abstract mixin class _$TimeZoneOffsetCopyWith<$Res>  {
  factory _$TimeZoneOffsetCopyWith(_TimeZoneOffset value, $Res Function(_TimeZoneOffset) _then) = __$TimeZoneOffsetCopyWithImpl;
@useResult
$Res call({
 String display, Location location
});




}
/// @nodoc
class __$TimeZoneOffsetCopyWithImpl<$Res>
    implements _$TimeZoneOffsetCopyWith<$Res> {
  __$TimeZoneOffsetCopyWithImpl(this._self, this._then);

  final _TimeZoneOffset _self;
  final $Res Function(_TimeZoneOffset) _then;

/// Create a copy of _TimeZoneOffset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? display = null,Object? location = null,}) {
  return _then(_self.copyWith(
display: null == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location,
  ));
}

}


/// Adds pattern-matching-related methods to [_TimeZoneOffset].
extension _TimeZoneOffsetPatterns on _TimeZoneOffset {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( __TimeZoneOffset value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case __TimeZoneOffset() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( __TimeZoneOffset value)  $default,){
final _that = this;
switch (_that) {
case __TimeZoneOffset():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( __TimeZoneOffset value)?  $default,){
final _that = this;
switch (_that) {
case __TimeZoneOffset() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String display,  Location location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case __TimeZoneOffset() when $default != null:
return $default(_that.display,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String display,  Location location)  $default,) {final _that = this;
switch (_that) {
case __TimeZoneOffset():
return $default(_that.display,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String display,  Location location)?  $default,) {final _that = this;
switch (_that) {
case __TimeZoneOffset() when $default != null:
return $default(_that.display,_that.location);case _:
  return null;

}
}

}

/// @nodoc


class __TimeZoneOffset extends _TimeZoneOffset {
  const __TimeZoneOffset({required this.display, required this.location}): super._();
  

@override final  String display;
@override final  Location location;

/// Create a copy of _TimeZoneOffset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$_TimeZoneOffsetCopyWith<__TimeZoneOffset> get copyWith => __$_TimeZoneOffsetCopyWithImpl<__TimeZoneOffset>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is __TimeZoneOffset&&(identical(other.display, display) || other.display == display)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,display,location);

@override
String toString() {
  return '_TimeZoneOffset(display: $display, location: $location)';
}


}

/// @nodoc
abstract mixin class _$_TimeZoneOffsetCopyWith<$Res> implements _$TimeZoneOffsetCopyWith<$Res> {
  factory _$_TimeZoneOffsetCopyWith(__TimeZoneOffset value, $Res Function(__TimeZoneOffset) _then) = __$_TimeZoneOffsetCopyWithImpl;
@override @useResult
$Res call({
 String display, Location location
});




}
/// @nodoc
class __$_TimeZoneOffsetCopyWithImpl<$Res>
    implements _$_TimeZoneOffsetCopyWith<$Res> {
  __$_TimeZoneOffsetCopyWithImpl(this._self, this._then);

  final __TimeZoneOffset _self;
  final $Res Function(__TimeZoneOffset) _then;

/// Create a copy of _TimeZoneOffset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? display = null,Object? location = null,}) {
  return _then(__TimeZoneOffset(
display: null == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location,
  ));
}


}

// dart format on
