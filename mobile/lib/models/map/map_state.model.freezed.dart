// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_state.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapState implements DiagnosticableTreeMixin {

 ThemeMode get themeMode; bool get showFavoriteOnly; bool get includeArchived; bool get withPartners; int get relativeTime; bool get shouldRefetchMarkers; AsyncValue<String> get lightStyleFetched; AsyncValue<String> get darkStyleFetched;
/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapStateCopyWith<MapState> get copyWith => _$MapStateCopyWithImpl<MapState>(this as MapState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MapState'))
    ..add(DiagnosticsProperty('themeMode', themeMode))..add(DiagnosticsProperty('showFavoriteOnly', showFavoriteOnly))..add(DiagnosticsProperty('includeArchived', includeArchived))..add(DiagnosticsProperty('withPartners', withPartners))..add(DiagnosticsProperty('relativeTime', relativeTime))..add(DiagnosticsProperty('shouldRefetchMarkers', shouldRefetchMarkers))..add(DiagnosticsProperty('lightStyleFetched', lightStyleFetched))..add(DiagnosticsProperty('darkStyleFetched', darkStyleFetched));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapState&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.showFavoriteOnly, showFavoriteOnly) || other.showFavoriteOnly == showFavoriteOnly)&&(identical(other.includeArchived, includeArchived) || other.includeArchived == includeArchived)&&(identical(other.withPartners, withPartners) || other.withPartners == withPartners)&&(identical(other.relativeTime, relativeTime) || other.relativeTime == relativeTime)&&(identical(other.shouldRefetchMarkers, shouldRefetchMarkers) || other.shouldRefetchMarkers == shouldRefetchMarkers)&&(identical(other.lightStyleFetched, lightStyleFetched) || other.lightStyleFetched == lightStyleFetched)&&(identical(other.darkStyleFetched, darkStyleFetched) || other.darkStyleFetched == darkStyleFetched));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode,showFavoriteOnly,includeArchived,withPartners,relativeTime,shouldRefetchMarkers,lightStyleFetched,darkStyleFetched);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MapState(themeMode: $themeMode, showFavoriteOnly: $showFavoriteOnly, includeArchived: $includeArchived, withPartners: $withPartners, relativeTime: $relativeTime, shouldRefetchMarkers: $shouldRefetchMarkers, lightStyleFetched: $lightStyleFetched, darkStyleFetched: $darkStyleFetched)';
}


}

/// @nodoc
abstract mixin class $MapStateCopyWith<$Res>  {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) _then) = _$MapStateCopyWithImpl;
@useResult
$Res call({
 ThemeMode themeMode, bool showFavoriteOnly, bool includeArchived, bool withPartners, int relativeTime, bool shouldRefetchMarkers, AsyncValue<String> lightStyleFetched, AsyncValue<String> darkStyleFetched
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
@pragma('vm:prefer-inline') @override $Res call({Object? themeMode = null,Object? showFavoriteOnly = null,Object? includeArchived = null,Object? withPartners = null,Object? relativeTime = null,Object? shouldRefetchMarkers = null,Object? lightStyleFetched = null,Object? darkStyleFetched = null,}) {
  return _then(_self.copyWith(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,showFavoriteOnly: null == showFavoriteOnly ? _self.showFavoriteOnly : showFavoriteOnly // ignore: cast_nullable_to_non_nullable
as bool,includeArchived: null == includeArchived ? _self.includeArchived : includeArchived // ignore: cast_nullable_to_non_nullable
as bool,withPartners: null == withPartners ? _self.withPartners : withPartners // ignore: cast_nullable_to_non_nullable
as bool,relativeTime: null == relativeTime ? _self.relativeTime : relativeTime // ignore: cast_nullable_to_non_nullable
as int,shouldRefetchMarkers: null == shouldRefetchMarkers ? _self.shouldRefetchMarkers : shouldRefetchMarkers // ignore: cast_nullable_to_non_nullable
as bool,lightStyleFetched: null == lightStyleFetched ? _self.lightStyleFetched : lightStyleFetched // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>,darkStyleFetched: null == darkStyleFetched ? _self.darkStyleFetched : darkStyleFetched // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ThemeMode themeMode,  bool showFavoriteOnly,  bool includeArchived,  bool withPartners,  int relativeTime,  bool shouldRefetchMarkers,  AsyncValue<String> lightStyleFetched,  AsyncValue<String> darkStyleFetched)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapState() when $default != null:
return $default(_that.themeMode,_that.showFavoriteOnly,_that.includeArchived,_that.withPartners,_that.relativeTime,_that.shouldRefetchMarkers,_that.lightStyleFetched,_that.darkStyleFetched);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ThemeMode themeMode,  bool showFavoriteOnly,  bool includeArchived,  bool withPartners,  int relativeTime,  bool shouldRefetchMarkers,  AsyncValue<String> lightStyleFetched,  AsyncValue<String> darkStyleFetched)  $default,) {final _that = this;
switch (_that) {
case _MapState():
return $default(_that.themeMode,_that.showFavoriteOnly,_that.includeArchived,_that.withPartners,_that.relativeTime,_that.shouldRefetchMarkers,_that.lightStyleFetched,_that.darkStyleFetched);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ThemeMode themeMode,  bool showFavoriteOnly,  bool includeArchived,  bool withPartners,  int relativeTime,  bool shouldRefetchMarkers,  AsyncValue<String> lightStyleFetched,  AsyncValue<String> darkStyleFetched)?  $default,) {final _that = this;
switch (_that) {
case _MapState() when $default != null:
return $default(_that.themeMode,_that.showFavoriteOnly,_that.includeArchived,_that.withPartners,_that.relativeTime,_that.shouldRefetchMarkers,_that.lightStyleFetched,_that.darkStyleFetched);case _:
  return null;

}
}

}

/// @nodoc


class _MapState with DiagnosticableTreeMixin implements MapState {
  const _MapState({this.themeMode = ThemeMode.system, this.showFavoriteOnly = false, this.includeArchived = false, this.withPartners = false, this.relativeTime = 0, this.shouldRefetchMarkers = false, this.lightStyleFetched = const AsyncLoading<String>(), this.darkStyleFetched = const AsyncLoading<String>()});
  

@override@JsonKey() final  ThemeMode themeMode;
@override@JsonKey() final  bool showFavoriteOnly;
@override@JsonKey() final  bool includeArchived;
@override@JsonKey() final  bool withPartners;
@override@JsonKey() final  int relativeTime;
@override@JsonKey() final  bool shouldRefetchMarkers;
@override@JsonKey() final  AsyncValue<String> lightStyleFetched;
@override@JsonKey() final  AsyncValue<String> darkStyleFetched;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapStateCopyWith<_MapState> get copyWith => __$MapStateCopyWithImpl<_MapState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MapState'))
    ..add(DiagnosticsProperty('themeMode', themeMode))..add(DiagnosticsProperty('showFavoriteOnly', showFavoriteOnly))..add(DiagnosticsProperty('includeArchived', includeArchived))..add(DiagnosticsProperty('withPartners', withPartners))..add(DiagnosticsProperty('relativeTime', relativeTime))..add(DiagnosticsProperty('shouldRefetchMarkers', shouldRefetchMarkers))..add(DiagnosticsProperty('lightStyleFetched', lightStyleFetched))..add(DiagnosticsProperty('darkStyleFetched', darkStyleFetched));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapState&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.showFavoriteOnly, showFavoriteOnly) || other.showFavoriteOnly == showFavoriteOnly)&&(identical(other.includeArchived, includeArchived) || other.includeArchived == includeArchived)&&(identical(other.withPartners, withPartners) || other.withPartners == withPartners)&&(identical(other.relativeTime, relativeTime) || other.relativeTime == relativeTime)&&(identical(other.shouldRefetchMarkers, shouldRefetchMarkers) || other.shouldRefetchMarkers == shouldRefetchMarkers)&&(identical(other.lightStyleFetched, lightStyleFetched) || other.lightStyleFetched == lightStyleFetched)&&(identical(other.darkStyleFetched, darkStyleFetched) || other.darkStyleFetched == darkStyleFetched));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode,showFavoriteOnly,includeArchived,withPartners,relativeTime,shouldRefetchMarkers,lightStyleFetched,darkStyleFetched);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MapState(themeMode: $themeMode, showFavoriteOnly: $showFavoriteOnly, includeArchived: $includeArchived, withPartners: $withPartners, relativeTime: $relativeTime, shouldRefetchMarkers: $shouldRefetchMarkers, lightStyleFetched: $lightStyleFetched, darkStyleFetched: $darkStyleFetched)';
}


}

/// @nodoc
abstract mixin class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) _then) = __$MapStateCopyWithImpl;
@override @useResult
$Res call({
 ThemeMode themeMode, bool showFavoriteOnly, bool includeArchived, bool withPartners, int relativeTime, bool shouldRefetchMarkers, AsyncValue<String> lightStyleFetched, AsyncValue<String> darkStyleFetched
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
@override @pragma('vm:prefer-inline') $Res call({Object? themeMode = null,Object? showFavoriteOnly = null,Object? includeArchived = null,Object? withPartners = null,Object? relativeTime = null,Object? shouldRefetchMarkers = null,Object? lightStyleFetched = null,Object? darkStyleFetched = null,}) {
  return _then(_MapState(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,showFavoriteOnly: null == showFavoriteOnly ? _self.showFavoriteOnly : showFavoriteOnly // ignore: cast_nullable_to_non_nullable
as bool,includeArchived: null == includeArchived ? _self.includeArchived : includeArchived // ignore: cast_nullable_to_non_nullable
as bool,withPartners: null == withPartners ? _self.withPartners : withPartners // ignore: cast_nullable_to_non_nullable
as bool,relativeTime: null == relativeTime ? _self.relativeTime : relativeTime // ignore: cast_nullable_to_non_nullable
as int,shouldRefetchMarkers: null == shouldRefetchMarkers ? _self.shouldRefetchMarkers : shouldRefetchMarkers // ignore: cast_nullable_to_non_nullable
as bool,lightStyleFetched: null == lightStyleFetched ? _self.lightStyleFetched : lightStyleFetched // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>,darkStyleFetched: null == darkStyleFetched ? _self.darkStyleFetched : darkStyleFetched // ignore: cast_nullable_to_non_nullable
as AsyncValue<String>,
  ));
}


}

// dart format on
