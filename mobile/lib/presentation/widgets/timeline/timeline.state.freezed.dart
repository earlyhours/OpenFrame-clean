// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TimelineArgs implements DiagnosticableTreeMixin {

 double get maxWidth; double get maxHeight; double get spacing; int get columnCount; bool get showStorageIndicator; bool get withStack; GroupAssetsBy? get groupBy;
/// Create a copy of TimelineArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimelineArgsCopyWith<TimelineArgs> get copyWith => _$TimelineArgsCopyWithImpl<TimelineArgs>(this as TimelineArgs, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimelineArgs'))
    ..add(DiagnosticsProperty('maxWidth', maxWidth))..add(DiagnosticsProperty('maxHeight', maxHeight))..add(DiagnosticsProperty('spacing', spacing))..add(DiagnosticsProperty('columnCount', columnCount))..add(DiagnosticsProperty('showStorageIndicator', showStorageIndicator))..add(DiagnosticsProperty('withStack', withStack))..add(DiagnosticsProperty('groupBy', groupBy));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimelineArgs&&(identical(other.maxWidth, maxWidth) || other.maxWidth == maxWidth)&&(identical(other.maxHeight, maxHeight) || other.maxHeight == maxHeight)&&(identical(other.spacing, spacing) || other.spacing == spacing)&&(identical(other.columnCount, columnCount) || other.columnCount == columnCount)&&(identical(other.showStorageIndicator, showStorageIndicator) || other.showStorageIndicator == showStorageIndicator)&&(identical(other.withStack, withStack) || other.withStack == withStack)&&(identical(other.groupBy, groupBy) || other.groupBy == groupBy));
}


@override
int get hashCode => Object.hash(runtimeType,maxWidth,maxHeight,spacing,columnCount,showStorageIndicator,withStack,groupBy);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimelineArgs(maxWidth: $maxWidth, maxHeight: $maxHeight, spacing: $spacing, columnCount: $columnCount, showStorageIndicator: $showStorageIndicator, withStack: $withStack, groupBy: $groupBy)';
}


}

/// @nodoc
abstract mixin class $TimelineArgsCopyWith<$Res>  {
  factory $TimelineArgsCopyWith(TimelineArgs value, $Res Function(TimelineArgs) _then) = _$TimelineArgsCopyWithImpl;
@useResult
$Res call({
 double maxWidth, double maxHeight, double spacing, int columnCount, bool showStorageIndicator, bool withStack, GroupAssetsBy? groupBy
});




}
/// @nodoc
class _$TimelineArgsCopyWithImpl<$Res>
    implements $TimelineArgsCopyWith<$Res> {
  _$TimelineArgsCopyWithImpl(this._self, this._then);

  final TimelineArgs _self;
  final $Res Function(TimelineArgs) _then;

/// Create a copy of TimelineArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxWidth = null,Object? maxHeight = null,Object? spacing = null,Object? columnCount = null,Object? showStorageIndicator = null,Object? withStack = null,Object? groupBy = freezed,}) {
  return _then(_self.copyWith(
maxWidth: null == maxWidth ? _self.maxWidth : maxWidth // ignore: cast_nullable_to_non_nullable
as double,maxHeight: null == maxHeight ? _self.maxHeight : maxHeight // ignore: cast_nullable_to_non_nullable
as double,spacing: null == spacing ? _self.spacing : spacing // ignore: cast_nullable_to_non_nullable
as double,columnCount: null == columnCount ? _self.columnCount : columnCount // ignore: cast_nullable_to_non_nullable
as int,showStorageIndicator: null == showStorageIndicator ? _self.showStorageIndicator : showStorageIndicator // ignore: cast_nullable_to_non_nullable
as bool,withStack: null == withStack ? _self.withStack : withStack // ignore: cast_nullable_to_non_nullable
as bool,groupBy: freezed == groupBy ? _self.groupBy : groupBy // ignore: cast_nullable_to_non_nullable
as GroupAssetsBy?,
  ));
}

}


/// Adds pattern-matching-related methods to [TimelineArgs].
extension TimelineArgsPatterns on TimelineArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimelineArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimelineArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimelineArgs value)  $default,){
final _that = this;
switch (_that) {
case _TimelineArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimelineArgs value)?  $default,){
final _that = this;
switch (_that) {
case _TimelineArgs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double maxWidth,  double maxHeight,  double spacing,  int columnCount,  bool showStorageIndicator,  bool withStack,  GroupAssetsBy? groupBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimelineArgs() when $default != null:
return $default(_that.maxWidth,_that.maxHeight,_that.spacing,_that.columnCount,_that.showStorageIndicator,_that.withStack,_that.groupBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double maxWidth,  double maxHeight,  double spacing,  int columnCount,  bool showStorageIndicator,  bool withStack,  GroupAssetsBy? groupBy)  $default,) {final _that = this;
switch (_that) {
case _TimelineArgs():
return $default(_that.maxWidth,_that.maxHeight,_that.spacing,_that.columnCount,_that.showStorageIndicator,_that.withStack,_that.groupBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double maxWidth,  double maxHeight,  double spacing,  int columnCount,  bool showStorageIndicator,  bool withStack,  GroupAssetsBy? groupBy)?  $default,) {final _that = this;
switch (_that) {
case _TimelineArgs() when $default != null:
return $default(_that.maxWidth,_that.maxHeight,_that.spacing,_that.columnCount,_that.showStorageIndicator,_that.withStack,_that.groupBy);case _:
  return null;

}
}

}

/// @nodoc


class _TimelineArgs with DiagnosticableTreeMixin implements TimelineArgs {
  const _TimelineArgs({required this.maxWidth, required this.maxHeight, this.spacing = kTimelineSpacing, this.columnCount = kTimelineColumnCount, this.showStorageIndicator = false, this.withStack = false, this.groupBy});
  

@override final  double maxWidth;
@override final  double maxHeight;
@override@JsonKey() final  double spacing;
@override@JsonKey() final  int columnCount;
@override@JsonKey() final  bool showStorageIndicator;
@override@JsonKey() final  bool withStack;
@override final  GroupAssetsBy? groupBy;

/// Create a copy of TimelineArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimelineArgsCopyWith<_TimelineArgs> get copyWith => __$TimelineArgsCopyWithImpl<_TimelineArgs>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimelineArgs'))
    ..add(DiagnosticsProperty('maxWidth', maxWidth))..add(DiagnosticsProperty('maxHeight', maxHeight))..add(DiagnosticsProperty('spacing', spacing))..add(DiagnosticsProperty('columnCount', columnCount))..add(DiagnosticsProperty('showStorageIndicator', showStorageIndicator))..add(DiagnosticsProperty('withStack', withStack))..add(DiagnosticsProperty('groupBy', groupBy));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimelineArgs&&(identical(other.maxWidth, maxWidth) || other.maxWidth == maxWidth)&&(identical(other.maxHeight, maxHeight) || other.maxHeight == maxHeight)&&(identical(other.spacing, spacing) || other.spacing == spacing)&&(identical(other.columnCount, columnCount) || other.columnCount == columnCount)&&(identical(other.showStorageIndicator, showStorageIndicator) || other.showStorageIndicator == showStorageIndicator)&&(identical(other.withStack, withStack) || other.withStack == withStack)&&(identical(other.groupBy, groupBy) || other.groupBy == groupBy));
}


@override
int get hashCode => Object.hash(runtimeType,maxWidth,maxHeight,spacing,columnCount,showStorageIndicator,withStack,groupBy);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimelineArgs(maxWidth: $maxWidth, maxHeight: $maxHeight, spacing: $spacing, columnCount: $columnCount, showStorageIndicator: $showStorageIndicator, withStack: $withStack, groupBy: $groupBy)';
}


}

/// @nodoc
abstract mixin class _$TimelineArgsCopyWith<$Res> implements $TimelineArgsCopyWith<$Res> {
  factory _$TimelineArgsCopyWith(_TimelineArgs value, $Res Function(_TimelineArgs) _then) = __$TimelineArgsCopyWithImpl;
@override @useResult
$Res call({
 double maxWidth, double maxHeight, double spacing, int columnCount, bool showStorageIndicator, bool withStack, GroupAssetsBy? groupBy
});




}
/// @nodoc
class __$TimelineArgsCopyWithImpl<$Res>
    implements _$TimelineArgsCopyWith<$Res> {
  __$TimelineArgsCopyWithImpl(this._self, this._then);

  final _TimelineArgs _self;
  final $Res Function(_TimelineArgs) _then;

/// Create a copy of TimelineArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxWidth = null,Object? maxHeight = null,Object? spacing = null,Object? columnCount = null,Object? showStorageIndicator = null,Object? withStack = null,Object? groupBy = freezed,}) {
  return _then(_TimelineArgs(
maxWidth: null == maxWidth ? _self.maxWidth : maxWidth // ignore: cast_nullable_to_non_nullable
as double,maxHeight: null == maxHeight ? _self.maxHeight : maxHeight // ignore: cast_nullable_to_non_nullable
as double,spacing: null == spacing ? _self.spacing : spacing // ignore: cast_nullable_to_non_nullable
as double,columnCount: null == columnCount ? _self.columnCount : columnCount // ignore: cast_nullable_to_non_nullable
as int,showStorageIndicator: null == showStorageIndicator ? _self.showStorageIndicator : showStorageIndicator // ignore: cast_nullable_to_non_nullable
as bool,withStack: null == withStack ? _self.withStack : withStack // ignore: cast_nullable_to_non_nullable
as bool,groupBy: freezed == groupBy ? _self.groupBy : groupBy // ignore: cast_nullable_to_non_nullable
as GroupAssetsBy?,
  ));
}


}

// dart format on
