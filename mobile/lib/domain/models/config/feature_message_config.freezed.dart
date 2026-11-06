// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feature_message_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeatureMessageConfig implements DiagnosticableTreeMixin {

 SemVer get seenRelease;
/// Create a copy of FeatureMessageConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeatureMessageConfigCopyWith<FeatureMessageConfig> get copyWith => _$FeatureMessageConfigCopyWithImpl<FeatureMessageConfig>(this as FeatureMessageConfig, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FeatureMessageConfig'))
    ..add(DiagnosticsProperty('seenRelease', seenRelease));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeatureMessageConfig&&(identical(other.seenRelease, seenRelease) || other.seenRelease == seenRelease));
}


@override
int get hashCode => Object.hash(runtimeType,seenRelease);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FeatureMessageConfig(seenRelease: $seenRelease)';
}


}

/// @nodoc
abstract mixin class $FeatureMessageConfigCopyWith<$Res>  {
  factory $FeatureMessageConfigCopyWith(FeatureMessageConfig value, $Res Function(FeatureMessageConfig) _then) = _$FeatureMessageConfigCopyWithImpl;
@useResult
$Res call({
 SemVer seenRelease
});




}
/// @nodoc
class _$FeatureMessageConfigCopyWithImpl<$Res>
    implements $FeatureMessageConfigCopyWith<$Res> {
  _$FeatureMessageConfigCopyWithImpl(this._self, this._then);

  final FeatureMessageConfig _self;
  final $Res Function(FeatureMessageConfig) _then;

/// Create a copy of FeatureMessageConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seenRelease = null,}) {
  return _then(_self.copyWith(
seenRelease: null == seenRelease ? _self.seenRelease : seenRelease // ignore: cast_nullable_to_non_nullable
as SemVer,
  ));
}

}


/// Adds pattern-matching-related methods to [FeatureMessageConfig].
extension FeatureMessageConfigPatterns on FeatureMessageConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeatureMessageConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeatureMessageConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeatureMessageConfig value)  $default,){
final _that = this;
switch (_that) {
case _FeatureMessageConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeatureMessageConfig value)?  $default,){
final _that = this;
switch (_that) {
case _FeatureMessageConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SemVer seenRelease)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeatureMessageConfig() when $default != null:
return $default(_that.seenRelease);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SemVer seenRelease)  $default,) {final _that = this;
switch (_that) {
case _FeatureMessageConfig():
return $default(_that.seenRelease);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SemVer seenRelease)?  $default,) {final _that = this;
switch (_that) {
case _FeatureMessageConfig() when $default != null:
return $default(_that.seenRelease);case _:
  return null;

}
}

}

/// @nodoc


class _FeatureMessageConfig with DiagnosticableTreeMixin implements FeatureMessageConfig {
  const _FeatureMessageConfig({this.seenRelease = const SemVer(major: 0, minor: 0, patch: 0)});
  

@override@JsonKey() final  SemVer seenRelease;

/// Create a copy of FeatureMessageConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeatureMessageConfigCopyWith<_FeatureMessageConfig> get copyWith => __$FeatureMessageConfigCopyWithImpl<_FeatureMessageConfig>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FeatureMessageConfig'))
    ..add(DiagnosticsProperty('seenRelease', seenRelease));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeatureMessageConfig&&(identical(other.seenRelease, seenRelease) || other.seenRelease == seenRelease));
}


@override
int get hashCode => Object.hash(runtimeType,seenRelease);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FeatureMessageConfig(seenRelease: $seenRelease)';
}


}

/// @nodoc
abstract mixin class _$FeatureMessageConfigCopyWith<$Res> implements $FeatureMessageConfigCopyWith<$Res> {
  factory _$FeatureMessageConfigCopyWith(_FeatureMessageConfig value, $Res Function(_FeatureMessageConfig) _then) = __$FeatureMessageConfigCopyWithImpl;
@override @useResult
$Res call({
 SemVer seenRelease
});




}
/// @nodoc
class __$FeatureMessageConfigCopyWithImpl<$Res>
    implements _$FeatureMessageConfigCopyWith<$Res> {
  __$FeatureMessageConfigCopyWithImpl(this._self, this._then);

  final _FeatureMessageConfig _self;
  final $Res Function(_FeatureMessageConfig) _then;

/// Create a copy of FeatureMessageConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? seenRelease = null,}) {
  return _then(_FeatureMessageConfig(
seenRelease: null == seenRelease ? _self.seenRelease : seenRelease // ignore: cast_nullable_to_non_nullable
as SemVer,
  ));
}


}

// dart format on
