// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapState {

 ThemeMode get themeMode; LatLngBounds get bounds; bool get onlyFavorites; bool get includeArchived; bool get withPartners; int get relativeDays; TimeRange get timeRange;
/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapStateCopyWith<MapState> get copyWith => _$MapStateCopyWithImpl<MapState>(this as MapState, _$identity);





@override
String toString() {
  return 'MapState(themeMode: $themeMode, bounds: $bounds, onlyFavorites: $onlyFavorites, includeArchived: $includeArchived, withPartners: $withPartners, relativeDays: $relativeDays, timeRange: $timeRange)';
}


}

/// @nodoc
abstract mixin class $MapStateCopyWith<$Res>  {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) _then) = _$MapStateCopyWithImpl;
@useResult
$Res call({
 ThemeMode themeMode, LatLngBounds bounds, bool onlyFavorites, bool includeArchived, bool withPartners, int relativeDays, TimeRange timeRange
});




}
/// @nodoc
class _$MapStateCopyWithImpl<$Res>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._self, this._then);

  final MapState _self;
  final $Res Function(MapState) _then;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? themeMode = null,Object? bounds = null,Object? onlyFavorites = null,Object? includeArchived = null,Object? withPartners = null,Object? relativeDays = null,Object? timeRange = null,}) {
  return _then(_self.copyWith(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,bounds: null == bounds ? _self.bounds : bounds // ignore: cast_nullable_to_non_nullable
as LatLngBounds,onlyFavorites: null == onlyFavorites ? _self.onlyFavorites : onlyFavorites // ignore: cast_nullable_to_non_nullable
as bool,includeArchived: null == includeArchived ? _self.includeArchived : includeArchived // ignore: cast_nullable_to_non_nullable
as bool,withPartners: null == withPartners ? _self.withPartners : withPartners // ignore: cast_nullable_to_non_nullable
as bool,relativeDays: null == relativeDays ? _self.relativeDays : relativeDays // ignore: cast_nullable_to_non_nullable
as int,timeRange: null == timeRange ? _self.timeRange : timeRange // ignore: cast_nullable_to_non_nullable
as TimeRange,
  ));
}

}


/// Adds pattern-matching-related methods to [MapState].
extension MapStatePatterns on MapState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapState value)  $default,){
final _that = this;
switch (_that) {
case _MapState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapState value)?  $default,){
final _that = this;
switch (_that) {
case _MapState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ThemeMode themeMode,  LatLngBounds bounds,  bool onlyFavorites,  bool includeArchived,  bool withPartners,  int relativeDays,  TimeRange timeRange)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapState() when $default != null:
return $default(_that.themeMode,_that.bounds,_that.onlyFavorites,_that.includeArchived,_that.withPartners,_that.relativeDays,_that.timeRange);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ThemeMode themeMode,  LatLngBounds bounds,  bool onlyFavorites,  bool includeArchived,  bool withPartners,  int relativeDays,  TimeRange timeRange)  $default,) {final _that = this;
switch (_that) {
case _MapState():
return $default(_that.themeMode,_that.bounds,_that.onlyFavorites,_that.includeArchived,_that.withPartners,_that.relativeDays,_that.timeRange);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ThemeMode themeMode,  LatLngBounds bounds,  bool onlyFavorites,  bool includeArchived,  bool withPartners,  int relativeDays,  TimeRange timeRange)?  $default,) {final _that = this;
switch (_that) {
case _MapState() when $default != null:
return $default(_that.themeMode,_that.bounds,_that.onlyFavorites,_that.includeArchived,_that.withPartners,_that.relativeDays,_that.timeRange);case _:
  return null;

}
}

}

/// @nodoc


class _MapState extends MapState {
  const _MapState({this.themeMode = ThemeMode.system, required this.bounds, this.onlyFavorites = false, this.includeArchived = false, this.withPartners = false, this.relativeDays = 0, this.timeRange = const TimeRange()}): super._();
  

@override@JsonKey() final  ThemeMode themeMode;
@override final  LatLngBounds bounds;
@override@JsonKey() final  bool onlyFavorites;
@override@JsonKey() final  bool includeArchived;
@override@JsonKey() final  bool withPartners;
@override@JsonKey() final  int relativeDays;
@override@JsonKey() final  TimeRange timeRange;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapStateCopyWith<_MapState> get copyWith => __$MapStateCopyWithImpl<_MapState>(this, _$identity);





@override
String toString() {
  return 'MapState(themeMode: $themeMode, bounds: $bounds, onlyFavorites: $onlyFavorites, includeArchived: $includeArchived, withPartners: $withPartners, relativeDays: $relativeDays, timeRange: $timeRange)';
}


}

/// @nodoc
abstract mixin class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) _then) = __$MapStateCopyWithImpl;
@override @useResult
$Res call({
 ThemeMode themeMode, LatLngBounds bounds, bool onlyFavorites, bool includeArchived, bool withPartners, int relativeDays, TimeRange timeRange
});




}
/// @nodoc
class __$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(this._self, this._then);

  final _MapState _self;
  final $Res Function(_MapState) _then;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? themeMode = null,Object? bounds = null,Object? onlyFavorites = null,Object? includeArchived = null,Object? withPartners = null,Object? relativeDays = null,Object? timeRange = null,}) {
  return _then(_MapState(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,bounds: null == bounds ? _self.bounds : bounds // ignore: cast_nullable_to_non_nullable
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
