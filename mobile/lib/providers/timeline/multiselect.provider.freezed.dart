// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multiselect.provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MultiSelectState {

 Set<BaseAsset> get selectedAssets; Set<BaseAsset> get lockedSelectionAssets; bool get forceEnable;
/// Create a copy of MultiSelectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultiSelectStateCopyWith<MultiSelectState> get copyWith => _$MultiSelectStateCopyWithImpl<MultiSelectState>(this as MultiSelectState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultiSelectState&&const DeepCollectionEquality().equals(other.selectedAssets, selectedAssets)&&const DeepCollectionEquality().equals(other.lockedSelectionAssets, lockedSelectionAssets)&&(identical(other.forceEnable, forceEnable) || other.forceEnable == forceEnable));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(selectedAssets),const DeepCollectionEquality().hash(lockedSelectionAssets),forceEnable);

@override
String toString() {
  return 'MultiSelectState(selectedAssets: $selectedAssets, lockedSelectionAssets: $lockedSelectionAssets, forceEnable: $forceEnable)';
}


}

/// @nodoc
abstract mixin class $MultiSelectStateCopyWith<$Res>  {
  factory $MultiSelectStateCopyWith(MultiSelectState value, $Res Function(MultiSelectState) _then) = _$MultiSelectStateCopyWithImpl;
@useResult
$Res call({
 Set<BaseAsset> selectedAssets, Set<BaseAsset> lockedSelectionAssets, bool forceEnable
});




}
/// @nodoc
class _$MultiSelectStateCopyWithImpl<$Res>
    implements $MultiSelectStateCopyWith<$Res> {
  _$MultiSelectStateCopyWithImpl(this._self, this._then);

  final MultiSelectState _self;
  final $Res Function(MultiSelectState) _then;

/// Create a copy of MultiSelectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedAssets = null,Object? lockedSelectionAssets = null,Object? forceEnable = null,}) {
  return _then(_self.copyWith(
selectedAssets: null == selectedAssets ? _self.selectedAssets : selectedAssets // ignore: cast_nullable_to_non_nullable
as Set<BaseAsset>,lockedSelectionAssets: null == lockedSelectionAssets ? _self.lockedSelectionAssets : lockedSelectionAssets // ignore: cast_nullable_to_non_nullable
as Set<BaseAsset>,forceEnable: null == forceEnable ? _self.forceEnable : forceEnable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MultiSelectState].
extension MultiSelectStatePatterns on MultiSelectState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MultiSelectState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MultiSelectState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MultiSelectState value)  $default,){
final _that = this;
switch (_that) {
case _MultiSelectState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MultiSelectState value)?  $default,){
final _that = this;
switch (_that) {
case _MultiSelectState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Set<BaseAsset> selectedAssets,  Set<BaseAsset> lockedSelectionAssets,  bool forceEnable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MultiSelectState() when $default != null:
return $default(_that.selectedAssets,_that.lockedSelectionAssets,_that.forceEnable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Set<BaseAsset> selectedAssets,  Set<BaseAsset> lockedSelectionAssets,  bool forceEnable)  $default,) {final _that = this;
switch (_that) {
case _MultiSelectState():
return $default(_that.selectedAssets,_that.lockedSelectionAssets,_that.forceEnable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Set<BaseAsset> selectedAssets,  Set<BaseAsset> lockedSelectionAssets,  bool forceEnable)?  $default,) {final _that = this;
switch (_that) {
case _MultiSelectState() when $default != null:
return $default(_that.selectedAssets,_that.lockedSelectionAssets,_that.forceEnable);case _:
  return null;

}
}

}

/// @nodoc


class _MultiSelectState extends MultiSelectState {
  const _MultiSelectState({required final  Set<BaseAsset> selectedAssets, required final  Set<BaseAsset> lockedSelectionAssets, this.forceEnable = false}): _selectedAssets = selectedAssets,_lockedSelectionAssets = lockedSelectionAssets,super._();
  

 final  Set<BaseAsset> _selectedAssets;
@override Set<BaseAsset> get selectedAssets {
  if (_selectedAssets is EqualUnmodifiableSetView) return _selectedAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedAssets);
}

 final  Set<BaseAsset> _lockedSelectionAssets;
@override Set<BaseAsset> get lockedSelectionAssets {
  if (_lockedSelectionAssets is EqualUnmodifiableSetView) return _lockedSelectionAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_lockedSelectionAssets);
}

@override@JsonKey() final  bool forceEnable;

/// Create a copy of MultiSelectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MultiSelectStateCopyWith<_MultiSelectState> get copyWith => __$MultiSelectStateCopyWithImpl<_MultiSelectState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MultiSelectState&&const DeepCollectionEquality().equals(other._selectedAssets, _selectedAssets)&&const DeepCollectionEquality().equals(other._lockedSelectionAssets, _lockedSelectionAssets)&&(identical(other.forceEnable, forceEnable) || other.forceEnable == forceEnable));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedAssets),const DeepCollectionEquality().hash(_lockedSelectionAssets),forceEnable);

@override
String toString() {
  return 'MultiSelectState(selectedAssets: $selectedAssets, lockedSelectionAssets: $lockedSelectionAssets, forceEnable: $forceEnable)';
}


}

/// @nodoc
abstract mixin class _$MultiSelectStateCopyWith<$Res> implements $MultiSelectStateCopyWith<$Res> {
  factory _$MultiSelectStateCopyWith(_MultiSelectState value, $Res Function(_MultiSelectState) _then) = __$MultiSelectStateCopyWithImpl;
@override @useResult
$Res call({
 Set<BaseAsset> selectedAssets, Set<BaseAsset> lockedSelectionAssets, bool forceEnable
});




}
/// @nodoc
class __$MultiSelectStateCopyWithImpl<$Res>
    implements _$MultiSelectStateCopyWith<$Res> {
  __$MultiSelectStateCopyWithImpl(this._self, this._then);

  final _MultiSelectState _self;
  final $Res Function(_MultiSelectState) _then;

/// Create a copy of MultiSelectState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedAssets = null,Object? lockedSelectionAssets = null,Object? forceEnable = null,}) {
  return _then(_MultiSelectState(
selectedAssets: null == selectedAssets ? _self._selectedAssets : selectedAssets // ignore: cast_nullable_to_non_nullable
as Set<BaseAsset>,lockedSelectionAssets: null == lockedSelectionAssets ? _self._lockedSelectionAssets : lockedSelectionAssets // ignore: cast_nullable_to_non_nullable
as Set<BaseAsset>,forceEnable: null == forceEnable ? _self.forceEnable : forceEnable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
