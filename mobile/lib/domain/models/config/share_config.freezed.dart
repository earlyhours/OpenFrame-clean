// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShareConfig implements DiagnosticableTreeMixin {

 ShareAssetType get fileType;
/// Create a copy of ShareConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShareConfigCopyWith<ShareConfig> get copyWith => _$ShareConfigCopyWithImpl<ShareConfig>(this as ShareConfig, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ShareConfig'))
    ..add(DiagnosticsProperty('fileType', fileType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShareConfig&&(identical(other.fileType, fileType) || other.fileType == fileType));
}


@override
int get hashCode => Object.hash(runtimeType,fileType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ShareConfig(fileType: $fileType)';
}


}

/// @nodoc
abstract mixin class $ShareConfigCopyWith<$Res>  {
  factory $ShareConfigCopyWith(ShareConfig value, $Res Function(ShareConfig) _then) = _$ShareConfigCopyWithImpl;
@useResult
$Res call({
 ShareAssetType fileType
});




}
/// @nodoc
class _$ShareConfigCopyWithImpl<$Res>
    implements $ShareConfigCopyWith<$Res> {
  _$ShareConfigCopyWithImpl(this._self, this._then);

  final ShareConfig _self;
  final $Res Function(ShareConfig) _then;

/// Create a copy of ShareConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fileType = null,}) {
  return _then(_self.copyWith(
fileType: null == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as ShareAssetType,
  ));
}

}


/// Adds pattern-matching-related methods to [ShareConfig].
extension ShareConfigPatterns on ShareConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShareConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShareConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShareConfig value)  $default,){
final _that = this;
switch (_that) {
case _ShareConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShareConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ShareConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ShareAssetType fileType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShareConfig() when $default != null:
return $default(_that.fileType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ShareAssetType fileType)  $default,) {final _that = this;
switch (_that) {
case _ShareConfig():
return $default(_that.fileType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ShareAssetType fileType)?  $default,) {final _that = this;
switch (_that) {
case _ShareConfig() when $default != null:
return $default(_that.fileType);case _:
  return null;

}
}

}

/// @nodoc


class _ShareConfig with DiagnosticableTreeMixin implements ShareConfig {
  const _ShareConfig({this.fileType = ShareAssetType.original});
  

@override@JsonKey() final  ShareAssetType fileType;

/// Create a copy of ShareConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShareConfigCopyWith<_ShareConfig> get copyWith => __$ShareConfigCopyWithImpl<_ShareConfig>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ShareConfig'))
    ..add(DiagnosticsProperty('fileType', fileType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShareConfig&&(identical(other.fileType, fileType) || other.fileType == fileType));
}


@override
int get hashCode => Object.hash(runtimeType,fileType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ShareConfig(fileType: $fileType)';
}


}

/// @nodoc
abstract mixin class _$ShareConfigCopyWith<$Res> implements $ShareConfigCopyWith<$Res> {
  factory _$ShareConfigCopyWith(_ShareConfig value, $Res Function(_ShareConfig) _then) = __$ShareConfigCopyWithImpl;
@override @useResult
$Res call({
 ShareAssetType fileType
});




}
/// @nodoc
class __$ShareConfigCopyWithImpl<$Res>
    implements _$ShareConfigCopyWith<$Res> {
  __$ShareConfigCopyWithImpl(this._self, this._then);

  final _ShareConfig _self;
  final $Res Function(_ShareConfig) _then;

/// Create a copy of ShareConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fileType = null,}) {
  return _then(_ShareConfig(
fileType: null == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as ShareAssetType,
  ));
}


}

// dart format on
