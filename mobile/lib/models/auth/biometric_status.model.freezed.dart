// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'biometric_status.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BiometricStatus {

 List<BiometricType> get availableBiometrics; bool get canAuthenticate;
/// Create a copy of BiometricStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiometricStatusCopyWith<BiometricStatus> get copyWith => _$BiometricStatusCopyWithImpl<BiometricStatus>(this as BiometricStatus, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiometricStatus&&const DeepCollectionEquality().equals(other.availableBiometrics, availableBiometrics)&&(identical(other.canAuthenticate, canAuthenticate) || other.canAuthenticate == canAuthenticate));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(availableBiometrics),canAuthenticate);

@override
String toString() {
  return 'BiometricStatus(availableBiometrics: $availableBiometrics, canAuthenticate: $canAuthenticate)';
}


}

/// @nodoc
abstract mixin class $BiometricStatusCopyWith<$Res>  {
  factory $BiometricStatusCopyWith(BiometricStatus value, $Res Function(BiometricStatus) _then) = _$BiometricStatusCopyWithImpl;
@useResult
$Res call({
 List<BiometricType> availableBiometrics, bool canAuthenticate
});




}
/// @nodoc
class _$BiometricStatusCopyWithImpl<$Res>
    implements $BiometricStatusCopyWith<$Res> {
  _$BiometricStatusCopyWithImpl(this._self, this._then);

  final BiometricStatus _self;
  final $Res Function(BiometricStatus) _then;

/// Create a copy of BiometricStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? availableBiometrics = null,Object? canAuthenticate = null,}) {
  return _then(_self.copyWith(
availableBiometrics: null == availableBiometrics ? _self.availableBiometrics : availableBiometrics // ignore: cast_nullable_to_non_nullable
as List<BiometricType>,canAuthenticate: null == canAuthenticate ? _self.canAuthenticate : canAuthenticate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BiometricStatus].
extension BiometricStatusPatterns on BiometricStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiometricStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiometricStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiometricStatus value)  $default,){
final _that = this;
switch (_that) {
case _BiometricStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiometricStatus value)?  $default,){
final _that = this;
switch (_that) {
case _BiometricStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BiometricType> availableBiometrics,  bool canAuthenticate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiometricStatus() when $default != null:
return $default(_that.availableBiometrics,_that.canAuthenticate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BiometricType> availableBiometrics,  bool canAuthenticate)  $default,) {final _that = this;
switch (_that) {
case _BiometricStatus():
return $default(_that.availableBiometrics,_that.canAuthenticate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BiometricType> availableBiometrics,  bool canAuthenticate)?  $default,) {final _that = this;
switch (_that) {
case _BiometricStatus() when $default != null:
return $default(_that.availableBiometrics,_that.canAuthenticate);case _:
  return null;

}
}

}

/// @nodoc


class _BiometricStatus implements BiometricStatus {
  const _BiometricStatus({required final  List<BiometricType> availableBiometrics, required this.canAuthenticate}): _availableBiometrics = availableBiometrics;
  

 final  List<BiometricType> _availableBiometrics;
@override List<BiometricType> get availableBiometrics {
  if (_availableBiometrics is EqualUnmodifiableListView) return _availableBiometrics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableBiometrics);
}

@override final  bool canAuthenticate;

/// Create a copy of BiometricStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiometricStatusCopyWith<_BiometricStatus> get copyWith => __$BiometricStatusCopyWithImpl<_BiometricStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiometricStatus&&const DeepCollectionEquality().equals(other._availableBiometrics, _availableBiometrics)&&(identical(other.canAuthenticate, canAuthenticate) || other.canAuthenticate == canAuthenticate));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_availableBiometrics),canAuthenticate);

@override
String toString() {
  return 'BiometricStatus(availableBiometrics: $availableBiometrics, canAuthenticate: $canAuthenticate)';
}


}

/// @nodoc
abstract mixin class _$BiometricStatusCopyWith<$Res> implements $BiometricStatusCopyWith<$Res> {
  factory _$BiometricStatusCopyWith(_BiometricStatus value, $Res Function(_BiometricStatus) _then) = __$BiometricStatusCopyWithImpl;
@override @useResult
$Res call({
 List<BiometricType> availableBiometrics, bool canAuthenticate
});




}
/// @nodoc
class __$BiometricStatusCopyWithImpl<$Res>
    implements _$BiometricStatusCopyWith<$Res> {
  __$BiometricStatusCopyWithImpl(this._self, this._then);

  final _BiometricStatus _self;
  final $Res Function(_BiometricStatus) _then;

/// Create a copy of BiometricStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? availableBiometrics = null,Object? canAuthenticate = null,}) {
  return _then(_BiometricStatus(
availableBiometrics: null == availableBiometrics ? _self._availableBiometrics : availableBiometrics // ignore: cast_nullable_to_non_nullable
as List<BiometricType>,canAuthenticate: null == canAuthenticate ? _self.canAuthenticate : canAuthenticate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
