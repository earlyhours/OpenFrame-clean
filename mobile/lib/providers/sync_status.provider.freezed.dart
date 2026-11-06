// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_status.provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SyncStatusState implements DiagnosticableTreeMixin {

 SyncStatus get remoteSyncStatus; SyncStatus get localSyncStatus; SyncStatus get hashJobStatus; SyncStatus get cloudIdSyncStatus; String? get errorMessage;
/// Create a copy of SyncStatusState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncStatusStateCopyWith<SyncStatusState> get copyWith => _$SyncStatusStateCopyWithImpl<SyncStatusState>(this as SyncStatusState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SyncStatusState'))
    ..add(DiagnosticsProperty('remoteSyncStatus', remoteSyncStatus))..add(DiagnosticsProperty('localSyncStatus', localSyncStatus))..add(DiagnosticsProperty('hashJobStatus', hashJobStatus))..add(DiagnosticsProperty('cloudIdSyncStatus', cloudIdSyncStatus))..add(DiagnosticsProperty('errorMessage', errorMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncStatusState&&(identical(other.remoteSyncStatus, remoteSyncStatus) || other.remoteSyncStatus == remoteSyncStatus)&&(identical(other.localSyncStatus, localSyncStatus) || other.localSyncStatus == localSyncStatus)&&(identical(other.hashJobStatus, hashJobStatus) || other.hashJobStatus == hashJobStatus)&&(identical(other.cloudIdSyncStatus, cloudIdSyncStatus) || other.cloudIdSyncStatus == cloudIdSyncStatus)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,remoteSyncStatus,localSyncStatus,hashJobStatus,cloudIdSyncStatus,errorMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SyncStatusState(remoteSyncStatus: $remoteSyncStatus, localSyncStatus: $localSyncStatus, hashJobStatus: $hashJobStatus, cloudIdSyncStatus: $cloudIdSyncStatus, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SyncStatusStateCopyWith<$Res>  {
  factory $SyncStatusStateCopyWith(SyncStatusState value, $Res Function(SyncStatusState) _then) = _$SyncStatusStateCopyWithImpl;
@useResult
$Res call({
 SyncStatus remoteSyncStatus, SyncStatus localSyncStatus, SyncStatus hashJobStatus, SyncStatus cloudIdSyncStatus, String? errorMessage
});




}
/// @nodoc
class _$SyncStatusStateCopyWithImpl<$Res>
    implements $SyncStatusStateCopyWith<$Res> {
  _$SyncStatusStateCopyWithImpl(this._self, this._then);

  final SyncStatusState _self;
  final $Res Function(SyncStatusState) _then;

/// Create a copy of SyncStatusState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? remoteSyncStatus = null,Object? localSyncStatus = null,Object? hashJobStatus = null,Object? cloudIdSyncStatus = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
remoteSyncStatus: null == remoteSyncStatus ? _self.remoteSyncStatus : remoteSyncStatus // ignore: cast_nullable_to_non_nullable
as SyncStatus,localSyncStatus: null == localSyncStatus ? _self.localSyncStatus : localSyncStatus // ignore: cast_nullable_to_non_nullable
as SyncStatus,hashJobStatus: null == hashJobStatus ? _self.hashJobStatus : hashJobStatus // ignore: cast_nullable_to_non_nullable
as SyncStatus,cloudIdSyncStatus: null == cloudIdSyncStatus ? _self.cloudIdSyncStatus : cloudIdSyncStatus // ignore: cast_nullable_to_non_nullable
as SyncStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncStatusState].
extension SyncStatusStatePatterns on SyncStatusState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncStatusState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncStatusState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncStatusState value)  $default,){
final _that = this;
switch (_that) {
case _SyncStatusState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncStatusState value)?  $default,){
final _that = this;
switch (_that) {
case _SyncStatusState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SyncStatus remoteSyncStatus,  SyncStatus localSyncStatus,  SyncStatus hashJobStatus,  SyncStatus cloudIdSyncStatus,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncStatusState() when $default != null:
return $default(_that.remoteSyncStatus,_that.localSyncStatus,_that.hashJobStatus,_that.cloudIdSyncStatus,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SyncStatus remoteSyncStatus,  SyncStatus localSyncStatus,  SyncStatus hashJobStatus,  SyncStatus cloudIdSyncStatus,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SyncStatusState():
return $default(_that.remoteSyncStatus,_that.localSyncStatus,_that.hashJobStatus,_that.cloudIdSyncStatus,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SyncStatus remoteSyncStatus,  SyncStatus localSyncStatus,  SyncStatus hashJobStatus,  SyncStatus cloudIdSyncStatus,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SyncStatusState() when $default != null:
return $default(_that.remoteSyncStatus,_that.localSyncStatus,_that.hashJobStatus,_that.cloudIdSyncStatus,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SyncStatusState extends SyncStatusState with DiagnosticableTreeMixin {
  const _SyncStatusState({this.remoteSyncStatus = SyncStatus.idle, this.localSyncStatus = SyncStatus.idle, this.hashJobStatus = SyncStatus.idle, this.cloudIdSyncStatus = SyncStatus.idle, this.errorMessage}): super._();
  

@override@JsonKey() final  SyncStatus remoteSyncStatus;
@override@JsonKey() final  SyncStatus localSyncStatus;
@override@JsonKey() final  SyncStatus hashJobStatus;
@override@JsonKey() final  SyncStatus cloudIdSyncStatus;
@override final  String? errorMessage;

/// Create a copy of SyncStatusState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncStatusStateCopyWith<_SyncStatusState> get copyWith => __$SyncStatusStateCopyWithImpl<_SyncStatusState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SyncStatusState'))
    ..add(DiagnosticsProperty('remoteSyncStatus', remoteSyncStatus))..add(DiagnosticsProperty('localSyncStatus', localSyncStatus))..add(DiagnosticsProperty('hashJobStatus', hashJobStatus))..add(DiagnosticsProperty('cloudIdSyncStatus', cloudIdSyncStatus))..add(DiagnosticsProperty('errorMessage', errorMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncStatusState&&(identical(other.remoteSyncStatus, remoteSyncStatus) || other.remoteSyncStatus == remoteSyncStatus)&&(identical(other.localSyncStatus, localSyncStatus) || other.localSyncStatus == localSyncStatus)&&(identical(other.hashJobStatus, hashJobStatus) || other.hashJobStatus == hashJobStatus)&&(identical(other.cloudIdSyncStatus, cloudIdSyncStatus) || other.cloudIdSyncStatus == cloudIdSyncStatus)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,remoteSyncStatus,localSyncStatus,hashJobStatus,cloudIdSyncStatus,errorMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SyncStatusState(remoteSyncStatus: $remoteSyncStatus, localSyncStatus: $localSyncStatus, hashJobStatus: $hashJobStatus, cloudIdSyncStatus: $cloudIdSyncStatus, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SyncStatusStateCopyWith<$Res> implements $SyncStatusStateCopyWith<$Res> {
  factory _$SyncStatusStateCopyWith(_SyncStatusState value, $Res Function(_SyncStatusState) _then) = __$SyncStatusStateCopyWithImpl;
@override @useResult
$Res call({
 SyncStatus remoteSyncStatus, SyncStatus localSyncStatus, SyncStatus hashJobStatus, SyncStatus cloudIdSyncStatus, String? errorMessage
});




}
/// @nodoc
class __$SyncStatusStateCopyWithImpl<$Res>
    implements _$SyncStatusStateCopyWith<$Res> {
  __$SyncStatusStateCopyWithImpl(this._self, this._then);

  final _SyncStatusState _self;
  final $Res Function(_SyncStatusState) _then;

/// Create a copy of SyncStatusState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? remoteSyncStatus = null,Object? localSyncStatus = null,Object? hashJobStatus = null,Object? cloudIdSyncStatus = null,Object? errorMessage = freezed,}) {
  return _then(_SyncStatusState(
remoteSyncStatus: null == remoteSyncStatus ? _self.remoteSyncStatus : remoteSyncStatus // ignore: cast_nullable_to_non_nullable
as SyncStatus,localSyncStatus: null == localSyncStatus ? _self.localSyncStatus : localSyncStatus // ignore: cast_nullable_to_non_nullable
as SyncStatus,hashJobStatus: null == hashJobStatus ? _self.hashJobStatus : hashJobStatus // ignore: cast_nullable_to_non_nullable
as SyncStatus,cloudIdSyncStatus: null == cloudIdSyncStatus ? _self.cloudIdSyncStatus : cloudIdSyncStatus // ignore: cast_nullable_to_non_nullable
as SyncStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
