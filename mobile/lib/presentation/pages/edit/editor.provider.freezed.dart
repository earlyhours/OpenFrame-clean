// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor.provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditorState implements DiagnosticableTreeMixin {

 bool get isApplyingEdits; int get rotationAngle; bool get flipHorizontal; bool get flipVertical; Rect get crop; CropAspectRatio get aspectRatio; int get originalWidth; int get originalHeight; Duration get animationDuration; bool get hasUnsavedEdits;
/// Create a copy of EditorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditorStateCopyWith<EditorState> get copyWith => _$EditorStateCopyWithImpl<EditorState>(this as EditorState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EditorState'))
    ..add(DiagnosticsProperty('isApplyingEdits', isApplyingEdits))..add(DiagnosticsProperty('rotationAngle', rotationAngle))..add(DiagnosticsProperty('flipHorizontal', flipHorizontal))..add(DiagnosticsProperty('flipVertical', flipVertical))..add(DiagnosticsProperty('crop', crop))..add(DiagnosticsProperty('aspectRatio', aspectRatio))..add(DiagnosticsProperty('originalWidth', originalWidth))..add(DiagnosticsProperty('originalHeight', originalHeight))..add(DiagnosticsProperty('animationDuration', animationDuration))..add(DiagnosticsProperty('hasUnsavedEdits', hasUnsavedEdits));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditorState&&(identical(other.isApplyingEdits, isApplyingEdits) || other.isApplyingEdits == isApplyingEdits)&&(identical(other.rotationAngle, rotationAngle) || other.rotationAngle == rotationAngle)&&(identical(other.flipHorizontal, flipHorizontal) || other.flipHorizontal == flipHorizontal)&&(identical(other.flipVertical, flipVertical) || other.flipVertical == flipVertical)&&(identical(other.crop, crop) || other.crop == crop)&&(identical(other.aspectRatio, aspectRatio) || other.aspectRatio == aspectRatio)&&(identical(other.originalWidth, originalWidth) || other.originalWidth == originalWidth)&&(identical(other.originalHeight, originalHeight) || other.originalHeight == originalHeight)&&(identical(other.animationDuration, animationDuration) || other.animationDuration == animationDuration)&&(identical(other.hasUnsavedEdits, hasUnsavedEdits) || other.hasUnsavedEdits == hasUnsavedEdits));
}


@override
int get hashCode => Object.hash(runtimeType,isApplyingEdits,rotationAngle,flipHorizontal,flipVertical,crop,aspectRatio,originalWidth,originalHeight,animationDuration,hasUnsavedEdits);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EditorState(isApplyingEdits: $isApplyingEdits, rotationAngle: $rotationAngle, flipHorizontal: $flipHorizontal, flipVertical: $flipVertical, crop: $crop, aspectRatio: $aspectRatio, originalWidth: $originalWidth, originalHeight: $originalHeight, animationDuration: $animationDuration, hasUnsavedEdits: $hasUnsavedEdits)';
}


}

/// @nodoc
abstract mixin class $EditorStateCopyWith<$Res>  {
  factory $EditorStateCopyWith(EditorState value, $Res Function(EditorState) _then) = _$EditorStateCopyWithImpl;
@useResult
$Res call({
 bool isApplyingEdits, int rotationAngle, bool flipHorizontal, bool flipVertical, Rect crop, CropAspectRatio aspectRatio, int originalWidth, int originalHeight, Duration animationDuration, bool hasUnsavedEdits
});




}
/// @nodoc
class _$EditorStateCopyWithImpl<$Res>
    implements $EditorStateCopyWith<$Res> {
  _$EditorStateCopyWithImpl(this._self, this._then);

  final EditorState _self;
  final $Res Function(EditorState) _then;

/// Create a copy of EditorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isApplyingEdits = null,Object? rotationAngle = null,Object? flipHorizontal = null,Object? flipVertical = null,Object? crop = null,Object? aspectRatio = null,Object? originalWidth = null,Object? originalHeight = null,Object? animationDuration = null,Object? hasUnsavedEdits = null,}) {
  return _then(_self.copyWith(
isApplyingEdits: null == isApplyingEdits ? _self.isApplyingEdits : isApplyingEdits // ignore: cast_nullable_to_non_nullable
as bool,rotationAngle: null == rotationAngle ? _self.rotationAngle : rotationAngle // ignore: cast_nullable_to_non_nullable
as int,flipHorizontal: null == flipHorizontal ? _self.flipHorizontal : flipHorizontal // ignore: cast_nullable_to_non_nullable
as bool,flipVertical: null == flipVertical ? _self.flipVertical : flipVertical // ignore: cast_nullable_to_non_nullable
as bool,crop: null == crop ? _self.crop : crop // ignore: cast_nullable_to_non_nullable
as Rect,aspectRatio: null == aspectRatio ? _self.aspectRatio : aspectRatio // ignore: cast_nullable_to_non_nullable
as CropAspectRatio,originalWidth: null == originalWidth ? _self.originalWidth : originalWidth // ignore: cast_nullable_to_non_nullable
as int,originalHeight: null == originalHeight ? _self.originalHeight : originalHeight // ignore: cast_nullable_to_non_nullable
as int,animationDuration: null == animationDuration ? _self.animationDuration : animationDuration // ignore: cast_nullable_to_non_nullable
as Duration,hasUnsavedEdits: null == hasUnsavedEdits ? _self.hasUnsavedEdits : hasUnsavedEdits // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EditorState].
extension EditorStatePatterns on EditorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditorState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditorState value)  $default,){
final _that = this;
switch (_that) {
case _EditorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditorState value)?  $default,){
final _that = this;
switch (_that) {
case _EditorState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isApplyingEdits,  int rotationAngle,  bool flipHorizontal,  bool flipVertical,  Rect crop,  CropAspectRatio aspectRatio,  int originalWidth,  int originalHeight,  Duration animationDuration,  bool hasUnsavedEdits)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditorState() when $default != null:
return $default(_that.isApplyingEdits,_that.rotationAngle,_that.flipHorizontal,_that.flipVertical,_that.crop,_that.aspectRatio,_that.originalWidth,_that.originalHeight,_that.animationDuration,_that.hasUnsavedEdits);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isApplyingEdits,  int rotationAngle,  bool flipHorizontal,  bool flipVertical,  Rect crop,  CropAspectRatio aspectRatio,  int originalWidth,  int originalHeight,  Duration animationDuration,  bool hasUnsavedEdits)  $default,) {final _that = this;
switch (_that) {
case _EditorState():
return $default(_that.isApplyingEdits,_that.rotationAngle,_that.flipHorizontal,_that.flipVertical,_that.crop,_that.aspectRatio,_that.originalWidth,_that.originalHeight,_that.animationDuration,_that.hasUnsavedEdits);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isApplyingEdits,  int rotationAngle,  bool flipHorizontal,  bool flipVertical,  Rect crop,  CropAspectRatio aspectRatio,  int originalWidth,  int originalHeight,  Duration animationDuration,  bool hasUnsavedEdits)?  $default,) {final _that = this;
switch (_that) {
case _EditorState() when $default != null:
return $default(_that.isApplyingEdits,_that.rotationAngle,_that.flipHorizontal,_that.flipVertical,_that.crop,_that.aspectRatio,_that.originalWidth,_that.originalHeight,_that.animationDuration,_that.hasUnsavedEdits);case _:
  return null;

}
}

}

/// @nodoc


class _EditorState extends EditorState with DiagnosticableTreeMixin {
  const _EditorState({this.isApplyingEdits = false, this.rotationAngle = 0, this.flipHorizontal = false, this.flipVertical = false, this.crop = const Rect.fromLTRB(0, 0, 1, 1), this.aspectRatio = CropAspectRatio.free, this.originalWidth = 0, this.originalHeight = 0, this.animationDuration = Duration.zero, this.hasUnsavedEdits = false}): super._();
  

@override@JsonKey() final  bool isApplyingEdits;
@override@JsonKey() final  int rotationAngle;
@override@JsonKey() final  bool flipHorizontal;
@override@JsonKey() final  bool flipVertical;
@override@JsonKey() final  Rect crop;
@override@JsonKey() final  CropAspectRatio aspectRatio;
@override@JsonKey() final  int originalWidth;
@override@JsonKey() final  int originalHeight;
@override@JsonKey() final  Duration animationDuration;
@override@JsonKey() final  bool hasUnsavedEdits;

/// Create a copy of EditorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditorStateCopyWith<_EditorState> get copyWith => __$EditorStateCopyWithImpl<_EditorState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EditorState'))
    ..add(DiagnosticsProperty('isApplyingEdits', isApplyingEdits))..add(DiagnosticsProperty('rotationAngle', rotationAngle))..add(DiagnosticsProperty('flipHorizontal', flipHorizontal))..add(DiagnosticsProperty('flipVertical', flipVertical))..add(DiagnosticsProperty('crop', crop))..add(DiagnosticsProperty('aspectRatio', aspectRatio))..add(DiagnosticsProperty('originalWidth', originalWidth))..add(DiagnosticsProperty('originalHeight', originalHeight))..add(DiagnosticsProperty('animationDuration', animationDuration))..add(DiagnosticsProperty('hasUnsavedEdits', hasUnsavedEdits));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditorState&&(identical(other.isApplyingEdits, isApplyingEdits) || other.isApplyingEdits == isApplyingEdits)&&(identical(other.rotationAngle, rotationAngle) || other.rotationAngle == rotationAngle)&&(identical(other.flipHorizontal, flipHorizontal) || other.flipHorizontal == flipHorizontal)&&(identical(other.flipVertical, flipVertical) || other.flipVertical == flipVertical)&&(identical(other.crop, crop) || other.crop == crop)&&(identical(other.aspectRatio, aspectRatio) || other.aspectRatio == aspectRatio)&&(identical(other.originalWidth, originalWidth) || other.originalWidth == originalWidth)&&(identical(other.originalHeight, originalHeight) || other.originalHeight == originalHeight)&&(identical(other.animationDuration, animationDuration) || other.animationDuration == animationDuration)&&(identical(other.hasUnsavedEdits, hasUnsavedEdits) || other.hasUnsavedEdits == hasUnsavedEdits));
}


@override
int get hashCode => Object.hash(runtimeType,isApplyingEdits,rotationAngle,flipHorizontal,flipVertical,crop,aspectRatio,originalWidth,originalHeight,animationDuration,hasUnsavedEdits);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EditorState(isApplyingEdits: $isApplyingEdits, rotationAngle: $rotationAngle, flipHorizontal: $flipHorizontal, flipVertical: $flipVertical, crop: $crop, aspectRatio: $aspectRatio, originalWidth: $originalWidth, originalHeight: $originalHeight, animationDuration: $animationDuration, hasUnsavedEdits: $hasUnsavedEdits)';
}


}

/// @nodoc
abstract mixin class _$EditorStateCopyWith<$Res> implements $EditorStateCopyWith<$Res> {
  factory _$EditorStateCopyWith(_EditorState value, $Res Function(_EditorState) _then) = __$EditorStateCopyWithImpl;
@override @useResult
$Res call({
 bool isApplyingEdits, int rotationAngle, bool flipHorizontal, bool flipVertical, Rect crop, CropAspectRatio aspectRatio, int originalWidth, int originalHeight, Duration animationDuration, bool hasUnsavedEdits
});




}
/// @nodoc
class __$EditorStateCopyWithImpl<$Res>
    implements _$EditorStateCopyWith<$Res> {
  __$EditorStateCopyWithImpl(this._self, this._then);

  final _EditorState _self;
  final $Res Function(_EditorState) _then;

/// Create a copy of EditorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isApplyingEdits = null,Object? rotationAngle = null,Object? flipHorizontal = null,Object? flipVertical = null,Object? crop = null,Object? aspectRatio = null,Object? originalWidth = null,Object? originalHeight = null,Object? animationDuration = null,Object? hasUnsavedEdits = null,}) {
  return _then(_EditorState(
isApplyingEdits: null == isApplyingEdits ? _self.isApplyingEdits : isApplyingEdits // ignore: cast_nullable_to_non_nullable
as bool,rotationAngle: null == rotationAngle ? _self.rotationAngle : rotationAngle // ignore: cast_nullable_to_non_nullable
as int,flipHorizontal: null == flipHorizontal ? _self.flipHorizontal : flipHorizontal // ignore: cast_nullable_to_non_nullable
as bool,flipVertical: null == flipVertical ? _self.flipVertical : flipVertical // ignore: cast_nullable_to_non_nullable
as bool,crop: null == crop ? _self.crop : crop // ignore: cast_nullable_to_non_nullable
as Rect,aspectRatio: null == aspectRatio ? _self.aspectRatio : aspectRatio // ignore: cast_nullable_to_non_nullable
as CropAspectRatio,originalWidth: null == originalWidth ? _self.originalWidth : originalWidth // ignore: cast_nullable_to_non_nullable
as int,originalHeight: null == originalHeight ? _self.originalHeight : originalHeight // ignore: cast_nullable_to_non_nullable
as int,animationDuration: null == animationDuration ? _self.animationDuration : animationDuration // ignore: cast_nullable_to_non_nullable
as Duration,hasUnsavedEdits: null == hasUnsavedEdits ? _self.hasUnsavedEdits : hasUnsavedEdits // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
