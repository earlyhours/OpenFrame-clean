// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TimelineConfig implements DiagnosticableTreeMixin {

 int get tilesPerRow; GroupAssetsBy get groupAssetsBy; bool get storageIndicator; bool get smoothScrubbing;
/// Create a copy of TimelineConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimelineConfigCopyWith<TimelineConfig> get copyWith => _$TimelineConfigCopyWithImpl<TimelineConfig>(this as TimelineConfig, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimelineConfig'))
    ..add(DiagnosticsProperty('tilesPerRow', tilesPerRow))..add(DiagnosticsProperty('groupAssetsBy', groupAssetsBy))..add(DiagnosticsProperty('storageIndicator', storageIndicator))..add(DiagnosticsProperty('smoothScrubbing', smoothScrubbing));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimelineConfig&&(identical(other.tilesPerRow, tilesPerRow) || other.tilesPerRow == tilesPerRow)&&(identical(other.groupAssetsBy, groupAssetsBy) || other.groupAssetsBy == groupAssetsBy)&&(identical(other.storageIndicator, storageIndicator) || other.storageIndicator == storageIndicator)&&(identical(other.smoothScrubbing, smoothScrubbing) || other.smoothScrubbing == smoothScrubbing));
}


@override
int get hashCode => Object.hash(runtimeType,tilesPerRow,groupAssetsBy,storageIndicator,smoothScrubbing);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimelineConfig(tilesPerRow: $tilesPerRow, groupAssetsBy: $groupAssetsBy, storageIndicator: $storageIndicator, smoothScrubbing: $smoothScrubbing)';
}


}

/// @nodoc
abstract mixin class $TimelineConfigCopyWith<$Res>  {
  factory $TimelineConfigCopyWith(TimelineConfig value, $Res Function(TimelineConfig) _then) = _$TimelineConfigCopyWithImpl;
@useResult
$Res call({
 int tilesPerRow, GroupAssetsBy groupAssetsBy, bool storageIndicator, bool smoothScrubbing
});




}
/// @nodoc
class _$TimelineConfigCopyWithImpl<$Res>
    implements $TimelineConfigCopyWith<$Res> {
  _$TimelineConfigCopyWithImpl(this._self, this._then);

  final TimelineConfig _self;
  final $Res Function(TimelineConfig) _then;

/// Create a copy of TimelineConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tilesPerRow = null,Object? groupAssetsBy = null,Object? storageIndicator = null,Object? smoothScrubbing = null,}) {
  return _then(_self.copyWith(
tilesPerRow: null == tilesPerRow ? _self.tilesPerRow : tilesPerRow // ignore: cast_nullable_to_non_nullable
as int,groupAssetsBy: null == groupAssetsBy ? _self.groupAssetsBy : groupAssetsBy // ignore: cast_nullable_to_non_nullable
as GroupAssetsBy,storageIndicator: null == storageIndicator ? _self.storageIndicator : storageIndicator // ignore: cast_nullable_to_non_nullable
as bool,smoothScrubbing: null == smoothScrubbing ? _self.smoothScrubbing : smoothScrubbing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TimelineConfig].
extension TimelineConfigPatterns on TimelineConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimelineConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimelineConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimelineConfig value)  $default,){
final _that = this;
switch (_that) {
case _TimelineConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimelineConfig value)?  $default,){
final _that = this;
switch (_that) {
case _TimelineConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int tilesPerRow,  GroupAssetsBy groupAssetsBy,  bool storageIndicator,  bool smoothScrubbing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimelineConfig() when $default != null:
return $default(_that.tilesPerRow,_that.groupAssetsBy,_that.storageIndicator,_that.smoothScrubbing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int tilesPerRow,  GroupAssetsBy groupAssetsBy,  bool storageIndicator,  bool smoothScrubbing)  $default,) {final _that = this;
switch (_that) {
case _TimelineConfig():
return $default(_that.tilesPerRow,_that.groupAssetsBy,_that.storageIndicator,_that.smoothScrubbing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int tilesPerRow,  GroupAssetsBy groupAssetsBy,  bool storageIndicator,  bool smoothScrubbing)?  $default,) {final _that = this;
switch (_that) {
case _TimelineConfig() when $default != null:
return $default(_that.tilesPerRow,_that.groupAssetsBy,_that.storageIndicator,_that.smoothScrubbing);case _:
  return null;

}
}

}

/// @nodoc


class _TimelineConfig with DiagnosticableTreeMixin implements TimelineConfig {
  const _TimelineConfig({this.tilesPerRow = 4, this.groupAssetsBy = GroupAssetsBy.day, this.storageIndicator = true, this.smoothScrubbing = false});
  

@override@JsonKey() final  int tilesPerRow;
@override@JsonKey() final  GroupAssetsBy groupAssetsBy;
@override@JsonKey() final  bool storageIndicator;
@override@JsonKey() final  bool smoothScrubbing;

/// Create a copy of TimelineConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimelineConfigCopyWith<_TimelineConfig> get copyWith => __$TimelineConfigCopyWithImpl<_TimelineConfig>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimelineConfig'))
    ..add(DiagnosticsProperty('tilesPerRow', tilesPerRow))..add(DiagnosticsProperty('groupAssetsBy', groupAssetsBy))..add(DiagnosticsProperty('storageIndicator', storageIndicator))..add(DiagnosticsProperty('smoothScrubbing', smoothScrubbing));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimelineConfig&&(identical(other.tilesPerRow, tilesPerRow) || other.tilesPerRow == tilesPerRow)&&(identical(other.groupAssetsBy, groupAssetsBy) || other.groupAssetsBy == groupAssetsBy)&&(identical(other.storageIndicator, storageIndicator) || other.storageIndicator == storageIndicator)&&(identical(other.smoothScrubbing, smoothScrubbing) || other.smoothScrubbing == smoothScrubbing));
}


@override
int get hashCode => Object.hash(runtimeType,tilesPerRow,groupAssetsBy,storageIndicator,smoothScrubbing);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimelineConfig(tilesPerRow: $tilesPerRow, groupAssetsBy: $groupAssetsBy, storageIndicator: $storageIndicator, smoothScrubbing: $smoothScrubbing)';
}


}

/// @nodoc
abstract mixin class _$TimelineConfigCopyWith<$Res> implements $TimelineConfigCopyWith<$Res> {
  factory _$TimelineConfigCopyWith(_TimelineConfig value, $Res Function(_TimelineConfig) _then) = __$TimelineConfigCopyWithImpl;
@override @useResult
$Res call({
 int tilesPerRow, GroupAssetsBy groupAssetsBy, bool storageIndicator, bool smoothScrubbing
});




}
/// @nodoc
class __$TimelineConfigCopyWithImpl<$Res>
    implements _$TimelineConfigCopyWith<$Res> {
  __$TimelineConfigCopyWithImpl(this._self, this._then);

  final _TimelineConfig _self;
  final $Res Function(_TimelineConfig) _then;

/// Create a copy of TimelineConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tilesPerRow = null,Object? groupAssetsBy = null,Object? storageIndicator = null,Object? smoothScrubbing = null,}) {
  return _then(_TimelineConfig(
tilesPerRow: null == tilesPerRow ? _self.tilesPerRow : tilesPerRow // ignore: cast_nullable_to_non_nullable
as int,groupAssetsBy: null == groupAssetsBy ? _self.groupAssetsBy : groupAssetsBy // ignore: cast_nullable_to_non_nullable
as GroupAssetsBy,storageIndicator: null == storageIndicator ? _self.storageIndicator : storageIndicator // ignore: cast_nullable_to_non_nullable
as bool,smoothScrubbing: null == smoothScrubbing ? _self.smoothScrubbing : smoothScrubbing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
