// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_viewer.provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AssetViewerState implements DiagnosticableTreeMixin {

 double get backgroundOpacity; bool get showingDetails; bool get showingControls; bool get isZoomed; bool get showingOcr; BaseAsset? get currentAsset;/// Physical thumbnail size retained while paging through the viewer.
 Size? get thumbnailSize; int get stackIndex;
/// Create a copy of AssetViewerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetViewerStateCopyWith<AssetViewerState> get copyWith => _$AssetViewerStateCopyWithImpl<AssetViewerState>(this as AssetViewerState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AssetViewerState'))
    ..add(DiagnosticsProperty('backgroundOpacity', backgroundOpacity))..add(DiagnosticsProperty('showingDetails', showingDetails))..add(DiagnosticsProperty('showingControls', showingControls))..add(DiagnosticsProperty('isZoomed', isZoomed))..add(DiagnosticsProperty('showingOcr', showingOcr))..add(DiagnosticsProperty('currentAsset', currentAsset))..add(DiagnosticsProperty('thumbnailSize', thumbnailSize))..add(DiagnosticsProperty('stackIndex', stackIndex));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetViewerState&&(identical(other.backgroundOpacity, backgroundOpacity) || other.backgroundOpacity == backgroundOpacity)&&(identical(other.showingDetails, showingDetails) || other.showingDetails == showingDetails)&&(identical(other.showingControls, showingControls) || other.showingControls == showingControls)&&(identical(other.isZoomed, isZoomed) || other.isZoomed == isZoomed)&&(identical(other.showingOcr, showingOcr) || other.showingOcr == showingOcr)&&(identical(other.currentAsset, currentAsset) || other.currentAsset == currentAsset)&&(identical(other.thumbnailSize, thumbnailSize) || other.thumbnailSize == thumbnailSize)&&(identical(other.stackIndex, stackIndex) || other.stackIndex == stackIndex));
}


@override
int get hashCode => Object.hash(runtimeType,backgroundOpacity,showingDetails,showingControls,isZoomed,showingOcr,currentAsset,thumbnailSize,stackIndex);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AssetViewerState(backgroundOpacity: $backgroundOpacity, showingDetails: $showingDetails, showingControls: $showingControls, isZoomed: $isZoomed, showingOcr: $showingOcr, currentAsset: $currentAsset, thumbnailSize: $thumbnailSize, stackIndex: $stackIndex)';
}


}

/// @nodoc
abstract mixin class $AssetViewerStateCopyWith<$Res>  {
  factory $AssetViewerStateCopyWith(AssetViewerState value, $Res Function(AssetViewerState) _then) = _$AssetViewerStateCopyWithImpl;
@useResult
$Res call({
 double backgroundOpacity, bool showingDetails, bool showingControls, bool isZoomed, bool showingOcr, BaseAsset? currentAsset, Size? thumbnailSize, int stackIndex
});




}
/// @nodoc
class _$AssetViewerStateCopyWithImpl<$Res>
    implements $AssetViewerStateCopyWith<$Res> {
  _$AssetViewerStateCopyWithImpl(this._self, this._then);

  final AssetViewerState _self;
  final $Res Function(AssetViewerState) _then;

/// Create a copy of AssetViewerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backgroundOpacity = null,Object? showingDetails = null,Object? showingControls = null,Object? isZoomed = null,Object? showingOcr = null,Object? currentAsset = freezed,Object? thumbnailSize = freezed,Object? stackIndex = null,}) {
  return _then(_self.copyWith(
backgroundOpacity: null == backgroundOpacity ? _self.backgroundOpacity : backgroundOpacity // ignore: cast_nullable_to_non_nullable
as double,showingDetails: null == showingDetails ? _self.showingDetails : showingDetails // ignore: cast_nullable_to_non_nullable
as bool,showingControls: null == showingControls ? _self.showingControls : showingControls // ignore: cast_nullable_to_non_nullable
as bool,isZoomed: null == isZoomed ? _self.isZoomed : isZoomed // ignore: cast_nullable_to_non_nullable
as bool,showingOcr: null == showingOcr ? _self.showingOcr : showingOcr // ignore: cast_nullable_to_non_nullable
as bool,currentAsset: freezed == currentAsset ? _self.currentAsset : currentAsset // ignore: cast_nullable_to_non_nullable
as BaseAsset?,thumbnailSize: freezed == thumbnailSize ? _self.thumbnailSize : thumbnailSize // ignore: cast_nullable_to_non_nullable
as Size?,stackIndex: null == stackIndex ? _self.stackIndex : stackIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AssetViewerState].
extension AssetViewerStatePatterns on AssetViewerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssetViewerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssetViewerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssetViewerState value)  $default,){
final _that = this;
switch (_that) {
case _AssetViewerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssetViewerState value)?  $default,){
final _that = this;
switch (_that) {
case _AssetViewerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double backgroundOpacity,  bool showingDetails,  bool showingControls,  bool isZoomed,  bool showingOcr,  BaseAsset? currentAsset,  Size? thumbnailSize,  int stackIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetViewerState() when $default != null:
return $default(_that.backgroundOpacity,_that.showingDetails,_that.showingControls,_that.isZoomed,_that.showingOcr,_that.currentAsset,_that.thumbnailSize,_that.stackIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double backgroundOpacity,  bool showingDetails,  bool showingControls,  bool isZoomed,  bool showingOcr,  BaseAsset? currentAsset,  Size? thumbnailSize,  int stackIndex)  $default,) {final _that = this;
switch (_that) {
case _AssetViewerState():
return $default(_that.backgroundOpacity,_that.showingDetails,_that.showingControls,_that.isZoomed,_that.showingOcr,_that.currentAsset,_that.thumbnailSize,_that.stackIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double backgroundOpacity,  bool showingDetails,  bool showingControls,  bool isZoomed,  bool showingOcr,  BaseAsset? currentAsset,  Size? thumbnailSize,  int stackIndex)?  $default,) {final _that = this;
switch (_that) {
case _AssetViewerState() when $default != null:
return $default(_that.backgroundOpacity,_that.showingDetails,_that.showingControls,_that.isZoomed,_that.showingOcr,_that.currentAsset,_that.thumbnailSize,_that.stackIndex);case _:
  return null;

}
}

}

/// @nodoc


class _AssetViewerState with DiagnosticableTreeMixin implements AssetViewerState {
  const _AssetViewerState({this.backgroundOpacity = 1.0, this.showingDetails = false, this.showingControls = true, this.isZoomed = false, this.showingOcr = false, this.currentAsset, this.thumbnailSize, this.stackIndex = 0});
  

@override@JsonKey() final  double backgroundOpacity;
@override@JsonKey() final  bool showingDetails;
@override@JsonKey() final  bool showingControls;
@override@JsonKey() final  bool isZoomed;
@override@JsonKey() final  bool showingOcr;
@override final  BaseAsset? currentAsset;
/// Physical thumbnail size retained while paging through the viewer.
@override final  Size? thumbnailSize;
@override@JsonKey() final  int stackIndex;

/// Create a copy of AssetViewerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetViewerStateCopyWith<_AssetViewerState> get copyWith => __$AssetViewerStateCopyWithImpl<_AssetViewerState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AssetViewerState'))
    ..add(DiagnosticsProperty('backgroundOpacity', backgroundOpacity))..add(DiagnosticsProperty('showingDetails', showingDetails))..add(DiagnosticsProperty('showingControls', showingControls))..add(DiagnosticsProperty('isZoomed', isZoomed))..add(DiagnosticsProperty('showingOcr', showingOcr))..add(DiagnosticsProperty('currentAsset', currentAsset))..add(DiagnosticsProperty('thumbnailSize', thumbnailSize))..add(DiagnosticsProperty('stackIndex', stackIndex));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetViewerState&&(identical(other.backgroundOpacity, backgroundOpacity) || other.backgroundOpacity == backgroundOpacity)&&(identical(other.showingDetails, showingDetails) || other.showingDetails == showingDetails)&&(identical(other.showingControls, showingControls) || other.showingControls == showingControls)&&(identical(other.isZoomed, isZoomed) || other.isZoomed == isZoomed)&&(identical(other.showingOcr, showingOcr) || other.showingOcr == showingOcr)&&(identical(other.currentAsset, currentAsset) || other.currentAsset == currentAsset)&&(identical(other.thumbnailSize, thumbnailSize) || other.thumbnailSize == thumbnailSize)&&(identical(other.stackIndex, stackIndex) || other.stackIndex == stackIndex));
}


@override
int get hashCode => Object.hash(runtimeType,backgroundOpacity,showingDetails,showingControls,isZoomed,showingOcr,currentAsset,thumbnailSize,stackIndex);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AssetViewerState(backgroundOpacity: $backgroundOpacity, showingDetails: $showingDetails, showingControls: $showingControls, isZoomed: $isZoomed, showingOcr: $showingOcr, currentAsset: $currentAsset, thumbnailSize: $thumbnailSize, stackIndex: $stackIndex)';
}


}

/// @nodoc
abstract mixin class _$AssetViewerStateCopyWith<$Res> implements $AssetViewerStateCopyWith<$Res> {
  factory _$AssetViewerStateCopyWith(_AssetViewerState value, $Res Function(_AssetViewerState) _then) = __$AssetViewerStateCopyWithImpl;
@override @useResult
$Res call({
 double backgroundOpacity, bool showingDetails, bool showingControls, bool isZoomed, bool showingOcr, BaseAsset? currentAsset, Size? thumbnailSize, int stackIndex
});




}
/// @nodoc
class __$AssetViewerStateCopyWithImpl<$Res>
    implements _$AssetViewerStateCopyWith<$Res> {
  __$AssetViewerStateCopyWithImpl(this._self, this._then);

  final _AssetViewerState _self;
  final $Res Function(_AssetViewerState) _then;

/// Create a copy of AssetViewerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backgroundOpacity = null,Object? showingDetails = null,Object? showingControls = null,Object? isZoomed = null,Object? showingOcr = null,Object? currentAsset = freezed,Object? thumbnailSize = freezed,Object? stackIndex = null,}) {
  return _then(_AssetViewerState(
backgroundOpacity: null == backgroundOpacity ? _self.backgroundOpacity : backgroundOpacity // ignore: cast_nullable_to_non_nullable
as double,showingDetails: null == showingDetails ? _self.showingDetails : showingDetails // ignore: cast_nullable_to_non_nullable
as bool,showingControls: null == showingControls ? _self.showingControls : showingControls // ignore: cast_nullable_to_non_nullable
as bool,isZoomed: null == isZoomed ? _self.isZoomed : isZoomed // ignore: cast_nullable_to_non_nullable
as bool,showingOcr: null == showingOcr ? _self.showingOcr : showingOcr // ignore: cast_nullable_to_non_nullable
as bool,currentAsset: freezed == currentAsset ? _self.currentAsset : currentAsset // ignore: cast_nullable_to_non_nullable
as BaseAsset?,thumbnailSize: freezed == thumbnailSize ? _self.thumbnailSize : thumbnailSize // ignore: cast_nullable_to_non_nullable
as Size?,stackIndex: null == stackIndex ? _self.stackIndex : stackIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
