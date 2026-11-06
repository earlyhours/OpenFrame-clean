// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Marker {

 LatLng get location; String get assetId;
/// Create a copy of Marker
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkerCopyWith<Marker> get copyWith => _$MarkerCopyWithImpl<Marker>(this as Marker, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Marker&&(identical(other.location, location) || other.location == location)&&(identical(other.assetId, assetId) || other.assetId == assetId));
}


@override
int get hashCode => Object.hash(runtimeType,location,assetId);

@override
String toString() {
  return 'Marker(location: $location, assetId: $assetId)';
}


}

/// @nodoc
abstract mixin class $MarkerCopyWith<$Res>  {
  factory $MarkerCopyWith(Marker value, $Res Function(Marker) _then) = _$MarkerCopyWithImpl;
@useResult
$Res call({
 LatLng location, String assetId
});




}
/// @nodoc
class _$MarkerCopyWithImpl<$Res>
    implements $MarkerCopyWith<$Res> {
  _$MarkerCopyWithImpl(this._self, this._then);

  final Marker _self;
  final $Res Function(Marker) _then;

/// Create a copy of Marker
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? location = null,Object? assetId = null,}) {
  return _then(_self.copyWith(
location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LatLng,assetId: null == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Marker].
extension MarkerPatterns on Marker {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Marker value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Marker() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Marker value)  $default,){
final _that = this;
switch (_that) {
case _Marker():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Marker value)?  $default,){
final _that = this;
switch (_that) {
case _Marker() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LatLng location,  String assetId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Marker() when $default != null:
return $default(_that.location,_that.assetId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LatLng location,  String assetId)  $default,) {final _that = this;
switch (_that) {
case _Marker():
return $default(_that.location,_that.assetId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LatLng location,  String assetId)?  $default,) {final _that = this;
switch (_that) {
case _Marker() when $default != null:
return $default(_that.location,_that.assetId);case _:
  return null;

}
}

}

/// @nodoc


class _Marker implements Marker {
  const _Marker({required this.location, required this.assetId});
  

@override final  LatLng location;
@override final  String assetId;

/// Create a copy of Marker
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarkerCopyWith<_Marker> get copyWith => __$MarkerCopyWithImpl<_Marker>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Marker&&(identical(other.location, location) || other.location == location)&&(identical(other.assetId, assetId) || other.assetId == assetId));
}


@override
int get hashCode => Object.hash(runtimeType,location,assetId);

@override
String toString() {
  return 'Marker(location: $location, assetId: $assetId)';
}


}

/// @nodoc
abstract mixin class _$MarkerCopyWith<$Res> implements $MarkerCopyWith<$Res> {
  factory _$MarkerCopyWith(_Marker value, $Res Function(_Marker) _then) = __$MarkerCopyWithImpl;
@override @useResult
$Res call({
 LatLng location, String assetId
});




}
/// @nodoc
class __$MarkerCopyWithImpl<$Res>
    implements _$MarkerCopyWith<$Res> {
  __$MarkerCopyWithImpl(this._self, this._then);

  final _Marker _self;
  final $Res Function(_Marker) _then;

/// Create a copy of Marker
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? location = null,Object? assetId = null,}) {
  return _then(_Marker(
location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LatLng,assetId: null == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TimelineMapOptions {

 LatLngBounds get bounds; bool get onlyFavorites; bool get includeArchived; bool get withPartners; int get relativeDays; TimeRange get timeRange;
/// Create a copy of TimelineMapOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimelineMapOptionsCopyWith<TimelineMapOptions> get copyWith => _$TimelineMapOptionsCopyWithImpl<TimelineMapOptions>(this as TimelineMapOptions, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimelineMapOptions&&(identical(other.bounds, bounds) || other.bounds == bounds)&&(identical(other.onlyFavorites, onlyFavorites) || other.onlyFavorites == onlyFavorites)&&(identical(other.includeArchived, includeArchived) || other.includeArchived == includeArchived)&&(identical(other.withPartners, withPartners) || other.withPartners == withPartners)&&(identical(other.relativeDays, relativeDays) || other.relativeDays == relativeDays)&&(identical(other.timeRange, timeRange) || other.timeRange == timeRange));
}


@override
int get hashCode => Object.hash(runtimeType,bounds,onlyFavorites,includeArchived,withPartners,relativeDays,timeRange);

@override
String toString() {
  return 'TimelineMapOptions(bounds: $bounds, onlyFavorites: $onlyFavorites, includeArchived: $includeArchived, withPartners: $withPartners, relativeDays: $relativeDays, timeRange: $timeRange)';
}


}

/// @nodoc
abstract mixin class $TimelineMapOptionsCopyWith<$Res>  {
  factory $TimelineMapOptionsCopyWith(TimelineMapOptions value, $Res Function(TimelineMapOptions) _then) = _$TimelineMapOptionsCopyWithImpl;
@useResult
$Res call({
 LatLngBounds bounds, bool onlyFavorites, bool includeArchived, bool withPartners, int relativeDays, TimeRange timeRange
});




}
/// @nodoc
class _$TimelineMapOptionsCopyWithImpl<$Res>
    implements $TimelineMapOptionsCopyWith<$Res> {
  _$TimelineMapOptionsCopyWithImpl(this._self, this._then);

  final TimelineMapOptions _self;
  final $Res Function(TimelineMapOptions) _then;

/// Create a copy of TimelineMapOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bounds = null,Object? onlyFavorites = null,Object? includeArchived = null,Object? withPartners = null,Object? relativeDays = null,Object? timeRange = null,}) {
  return _then(_self.copyWith(
bounds: null == bounds ? _self.bounds : bounds // ignore: cast_nullable_to_non_nullable
as LatLngBounds,onlyFavorites: null == onlyFavorites ? _self.onlyFavorites : onlyFavorites // ignore: cast_nullable_to_non_nullable
as bool,includeArchived: null == includeArchived ? _self.includeArchived : includeArchived // ignore: cast_nullable_to_non_nullable
as bool,withPartners: null == withPartners ? _self.withPartners : withPartners // ignore: cast_nullable_to_non_nullable
as bool,relativeDays: null == relativeDays ? _self.relativeDays : relativeDays // ignore: cast_nullable_to_non_nullable
as int,timeRange: null == timeRange ? _self.timeRange : timeRange // ignore: cast_nullable_to_non_nullable
as TimeRange,
  ));
}

}


/// Adds pattern-matching-related methods to [TimelineMapOptions].
extension TimelineMapOptionsPatterns on TimelineMapOptions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimelineMapOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimelineMapOptions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimelineMapOptions value)  $default,){
final _that = this;
switch (_that) {
case _TimelineMapOptions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimelineMapOptions value)?  $default,){
final _that = this;
switch (_that) {
case _TimelineMapOptions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LatLngBounds bounds,  bool onlyFavorites,  bool includeArchived,  bool withPartners,  int relativeDays,  TimeRange timeRange)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimelineMapOptions() when $default != null:
return $default(_that.bounds,_that.onlyFavorites,_that.includeArchived,_that.withPartners,_that.relativeDays,_that.timeRange);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LatLngBounds bounds,  bool onlyFavorites,  bool includeArchived,  bool withPartners,  int relativeDays,  TimeRange timeRange)  $default,) {final _that = this;
switch (_that) {
case _TimelineMapOptions():
return $default(_that.bounds,_that.onlyFavorites,_that.includeArchived,_that.withPartners,_that.relativeDays,_that.timeRange);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LatLngBounds bounds,  bool onlyFavorites,  bool includeArchived,  bool withPartners,  int relativeDays,  TimeRange timeRange)?  $default,) {final _that = this;
switch (_that) {
case _TimelineMapOptions() when $default != null:
return $default(_that.bounds,_that.onlyFavorites,_that.includeArchived,_that.withPartners,_that.relativeDays,_that.timeRange);case _:
  return null;

}
}

}

/// @nodoc


class _TimelineMapOptions implements TimelineMapOptions {
  const _TimelineMapOptions({required this.bounds, this.onlyFavorites = false, this.includeArchived = false, this.withPartners = false, this.relativeDays = 0, this.timeRange = const TimeRange()});
  

@override final  LatLngBounds bounds;
@override@JsonKey() final  bool onlyFavorites;
@override@JsonKey() final  bool includeArchived;
@override@JsonKey() final  bool withPartners;
@override@JsonKey() final  int relativeDays;
@override@JsonKey() final  TimeRange timeRange;

/// Create a copy of TimelineMapOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimelineMapOptionsCopyWith<_TimelineMapOptions> get copyWith => __$TimelineMapOptionsCopyWithImpl<_TimelineMapOptions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimelineMapOptions&&(identical(other.bounds, bounds) || other.bounds == bounds)&&(identical(other.onlyFavorites, onlyFavorites) || other.onlyFavorites == onlyFavorites)&&(identical(other.includeArchived, includeArchived) || other.includeArchived == includeArchived)&&(identical(other.withPartners, withPartners) || other.withPartners == withPartners)&&(identical(other.relativeDays, relativeDays) || other.relativeDays == relativeDays)&&(identical(other.timeRange, timeRange) || other.timeRange == timeRange));
}


@override
int get hashCode => Object.hash(runtimeType,bounds,onlyFavorites,includeArchived,withPartners,relativeDays,timeRange);

@override
String toString() {
  return 'TimelineMapOptions(bounds: $bounds, onlyFavorites: $onlyFavorites, includeArchived: $includeArchived, withPartners: $withPartners, relativeDays: $relativeDays, timeRange: $timeRange)';
}


}

/// @nodoc
abstract mixin class _$TimelineMapOptionsCopyWith<$Res> implements $TimelineMapOptionsCopyWith<$Res> {
  factory _$TimelineMapOptionsCopyWith(_TimelineMapOptions value, $Res Function(_TimelineMapOptions) _then) = __$TimelineMapOptionsCopyWithImpl;
@override @useResult
$Res call({
 LatLngBounds bounds, bool onlyFavorites, bool includeArchived, bool withPartners, int relativeDays, TimeRange timeRange
});




}
/// @nodoc
class __$TimelineMapOptionsCopyWithImpl<$Res>
    implements _$TimelineMapOptionsCopyWith<$Res> {
  __$TimelineMapOptionsCopyWithImpl(this._self, this._then);

  final _TimelineMapOptions _self;
  final $Res Function(_TimelineMapOptions) _then;

/// Create a copy of TimelineMapOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bounds = null,Object? onlyFavorites = null,Object? includeArchived = null,Object? withPartners = null,Object? relativeDays = null,Object? timeRange = null,}) {
  return _then(_TimelineMapOptions(
bounds: null == bounds ? _self.bounds : bounds // ignore: cast_nullable_to_non_nullable
as LatLngBounds,onlyFavorites: null == onlyFavorites ? _self.onlyFavorites : onlyFavorites // ignore: cast_nullable_to_non_nullable
as bool,includeArchived: null == includeArchived ? _self.includeArchived : includeArchived // ignore: cast_nullable_to_non_nullable
as bool,withPartners: null == withPartners ? _self.withPartners : withPartners // ignore: cast_nullable_to_non_nullable
as bool,relativeDays: null == relativeDays ? _self.relativeDays : relativeDays // ignore: cast_nullable_to_non_nullable
as int,timeRange: null == timeRange ? _self.timeRange : timeRange // ignore: cast_nullable_to_non_nullable
as TimeRange,
  ));
}


}

// dart format on
