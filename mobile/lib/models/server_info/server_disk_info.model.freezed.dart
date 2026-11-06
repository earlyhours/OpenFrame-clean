// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_disk_info.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServerDiskInfo implements DiagnosticableTreeMixin {

 String get diskAvailable; String get diskSize; String get diskUse; double get diskUsagePercentage;
/// Create a copy of ServerDiskInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerDiskInfoCopyWith<ServerDiskInfo> get copyWith => _$ServerDiskInfoCopyWithImpl<ServerDiskInfo>(this as ServerDiskInfo, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServerDiskInfo'))
    ..add(DiagnosticsProperty('diskAvailable', diskAvailable))..add(DiagnosticsProperty('diskSize', diskSize))..add(DiagnosticsProperty('diskUse', diskUse))..add(DiagnosticsProperty('diskUsagePercentage', diskUsagePercentage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerDiskInfo&&(identical(other.diskAvailable, diskAvailable) || other.diskAvailable == diskAvailable)&&(identical(other.diskSize, diskSize) || other.diskSize == diskSize)&&(identical(other.diskUse, diskUse) || other.diskUse == diskUse)&&(identical(other.diskUsagePercentage, diskUsagePercentage) || other.diskUsagePercentage == diskUsagePercentage));
}


@override
int get hashCode => Object.hash(runtimeType,diskAvailable,diskSize,diskUse,diskUsagePercentage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServerDiskInfo(diskAvailable: $diskAvailable, diskSize: $diskSize, diskUse: $diskUse, diskUsagePercentage: $diskUsagePercentage)';
}


}

/// @nodoc
abstract mixin class $ServerDiskInfoCopyWith<$Res>  {
  factory $ServerDiskInfoCopyWith(ServerDiskInfo value, $Res Function(ServerDiskInfo) _then) = _$ServerDiskInfoCopyWithImpl;
@useResult
$Res call({
 String diskAvailable, String diskSize, String diskUse, double diskUsagePercentage
});




}
/// @nodoc
class _$ServerDiskInfoCopyWithImpl<$Res>
    implements $ServerDiskInfoCopyWith<$Res> {
  _$ServerDiskInfoCopyWithImpl(this._self, this._then);

  final ServerDiskInfo _self;
  final $Res Function(ServerDiskInfo) _then;

/// Create a copy of ServerDiskInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? diskAvailable = null,Object? diskSize = null,Object? diskUse = null,Object? diskUsagePercentage = null,}) {
  return _then(_self.copyWith(
diskAvailable: null == diskAvailable ? _self.diskAvailable : diskAvailable // ignore: cast_nullable_to_non_nullable
as String,diskSize: null == diskSize ? _self.diskSize : diskSize // ignore: cast_nullable_to_non_nullable
as String,diskUse: null == diskUse ? _self.diskUse : diskUse // ignore: cast_nullable_to_non_nullable
as String,diskUsagePercentage: null == diskUsagePercentage ? _self.diskUsagePercentage : diskUsagePercentage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ServerDiskInfo].
extension ServerDiskInfoPatterns on ServerDiskInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServerDiskInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServerDiskInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServerDiskInfo value)  $default,){
final _that = this;
switch (_that) {
case _ServerDiskInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServerDiskInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ServerDiskInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String diskAvailable,  String diskSize,  String diskUse,  double diskUsagePercentage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServerDiskInfo() when $default != null:
return $default(_that.diskAvailable,_that.diskSize,_that.diskUse,_that.diskUsagePercentage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String diskAvailable,  String diskSize,  String diskUse,  double diskUsagePercentage)  $default,) {final _that = this;
switch (_that) {
case _ServerDiskInfo():
return $default(_that.diskAvailable,_that.diskSize,_that.diskUse,_that.diskUsagePercentage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String diskAvailable,  String diskSize,  String diskUse,  double diskUsagePercentage)?  $default,) {final _that = this;
switch (_that) {
case _ServerDiskInfo() when $default != null:
return $default(_that.diskAvailable,_that.diskSize,_that.diskUse,_that.diskUsagePercentage);case _:
  return null;

}
}

}

/// @nodoc


class _ServerDiskInfo with DiagnosticableTreeMixin implements ServerDiskInfo {
  const _ServerDiskInfo({required this.diskAvailable, required this.diskSize, required this.diskUse, required this.diskUsagePercentage});
  

@override final  String diskAvailable;
@override final  String diskSize;
@override final  String diskUse;
@override final  double diskUsagePercentage;

/// Create a copy of ServerDiskInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerDiskInfoCopyWith<_ServerDiskInfo> get copyWith => __$ServerDiskInfoCopyWithImpl<_ServerDiskInfo>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServerDiskInfo'))
    ..add(DiagnosticsProperty('diskAvailable', diskAvailable))..add(DiagnosticsProperty('diskSize', diskSize))..add(DiagnosticsProperty('diskUse', diskUse))..add(DiagnosticsProperty('diskUsagePercentage', diskUsagePercentage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerDiskInfo&&(identical(other.diskAvailable, diskAvailable) || other.diskAvailable == diskAvailable)&&(identical(other.diskSize, diskSize) || other.diskSize == diskSize)&&(identical(other.diskUse, diskUse) || other.diskUse == diskUse)&&(identical(other.diskUsagePercentage, diskUsagePercentage) || other.diskUsagePercentage == diskUsagePercentage));
}


@override
int get hashCode => Object.hash(runtimeType,diskAvailable,diskSize,diskUse,diskUsagePercentage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServerDiskInfo(diskAvailable: $diskAvailable, diskSize: $diskSize, diskUse: $diskUse, diskUsagePercentage: $diskUsagePercentage)';
}


}

/// @nodoc
abstract mixin class _$ServerDiskInfoCopyWith<$Res> implements $ServerDiskInfoCopyWith<$Res> {
  factory _$ServerDiskInfoCopyWith(_ServerDiskInfo value, $Res Function(_ServerDiskInfo) _then) = __$ServerDiskInfoCopyWithImpl;
@override @useResult
$Res call({
 String diskAvailable, String diskSize, String diskUse, double diskUsagePercentage
});




}
/// @nodoc
class __$ServerDiskInfoCopyWithImpl<$Res>
    implements _$ServerDiskInfoCopyWith<$Res> {
  __$ServerDiskInfoCopyWithImpl(this._self, this._then);

  final _ServerDiskInfo _self;
  final $Res Function(_ServerDiskInfo) _then;

/// Create a copy of ServerDiskInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? diskAvailable = null,Object? diskSize = null,Object? diskUse = null,Object? diskUsagePercentage = null,}) {
  return _then(_ServerDiskInfo(
diskAvailable: null == diskAvailable ? _self.diskAvailable : diskAvailable // ignore: cast_nullable_to_non_nullable
as String,diskSize: null == diskSize ? _self.diskSize : diskSize // ignore: cast_nullable_to_non_nullable
as String,diskUse: null == diskUse ? _self.diskUse : diskUse // ignore: cast_nullable_to_non_nullable
as String,diskUsagePercentage: null == diskUsagePercentage ? _self.diskUsagePercentage : diskUsagePercentage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
