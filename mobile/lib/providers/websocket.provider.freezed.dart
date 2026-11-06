// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'websocket.provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WebsocketState implements DiagnosticableTreeMixin {

 Socket? get socket; bool get isConnected;
/// Create a copy of WebsocketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebsocketStateCopyWith<WebsocketState> get copyWith => _$WebsocketStateCopyWithImpl<WebsocketState>(this as WebsocketState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WebsocketState'))
    ..add(DiagnosticsProperty('socket', socket))..add(DiagnosticsProperty('isConnected', isConnected));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebsocketState&&(identical(other.socket, socket) || other.socket == socket)&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected));
}


@override
int get hashCode => Object.hash(runtimeType,socket,isConnected);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WebsocketState(socket: $socket, isConnected: $isConnected)';
}


}

/// @nodoc
abstract mixin class $WebsocketStateCopyWith<$Res>  {
  factory $WebsocketStateCopyWith(WebsocketState value, $Res Function(WebsocketState) _then) = _$WebsocketStateCopyWithImpl;
@useResult
$Res call({
 Socket? socket, bool isConnected
});




}
/// @nodoc
class _$WebsocketStateCopyWithImpl<$Res>
    implements $WebsocketStateCopyWith<$Res> {
  _$WebsocketStateCopyWithImpl(this._self, this._then);

  final WebsocketState _self;
  final $Res Function(WebsocketState) _then;

/// Create a copy of WebsocketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? socket = freezed,Object? isConnected = null,}) {
  return _then(_self.copyWith(
socket: freezed == socket ? _self.socket : socket // ignore: cast_nullable_to_non_nullable
as Socket?,isConnected: null == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WebsocketState].
extension WebsocketStatePatterns on WebsocketState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebsocketState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebsocketState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebsocketState value)  $default,){
final _that = this;
switch (_that) {
case _WebsocketState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebsocketState value)?  $default,){
final _that = this;
switch (_that) {
case _WebsocketState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Socket? socket,  bool isConnected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebsocketState() when $default != null:
return $default(_that.socket,_that.isConnected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Socket? socket,  bool isConnected)  $default,) {final _that = this;
switch (_that) {
case _WebsocketState():
return $default(_that.socket,_that.isConnected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Socket? socket,  bool isConnected)?  $default,) {final _that = this;
switch (_that) {
case _WebsocketState() when $default != null:
return $default(_that.socket,_that.isConnected);case _:
  return null;

}
}

}

/// @nodoc


class _WebsocketState with DiagnosticableTreeMixin implements WebsocketState {
  const _WebsocketState({this.socket, required this.isConnected});
  

@override final  Socket? socket;
@override final  bool isConnected;

/// Create a copy of WebsocketState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebsocketStateCopyWith<_WebsocketState> get copyWith => __$WebsocketStateCopyWithImpl<_WebsocketState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WebsocketState'))
    ..add(DiagnosticsProperty('socket', socket))..add(DiagnosticsProperty('isConnected', isConnected));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebsocketState&&(identical(other.socket, socket) || other.socket == socket)&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected));
}


@override
int get hashCode => Object.hash(runtimeType,socket,isConnected);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WebsocketState(socket: $socket, isConnected: $isConnected)';
}


}

/// @nodoc
abstract mixin class _$WebsocketStateCopyWith<$Res> implements $WebsocketStateCopyWith<$Res> {
  factory _$WebsocketStateCopyWith(_WebsocketState value, $Res Function(_WebsocketState) _then) = __$WebsocketStateCopyWithImpl;
@override @useResult
$Res call({
 Socket? socket, bool isConnected
});




}
/// @nodoc
class __$WebsocketStateCopyWithImpl<$Res>
    implements _$WebsocketStateCopyWith<$Res> {
  __$WebsocketStateCopyWithImpl(this._self, this._then);

  final _WebsocketState _self;
  final $Res Function(_WebsocketState) _then;

/// Create a copy of WebsocketState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? socket = freezed,Object? isConnected = null,}) {
  return _then(_WebsocketState(
socket: freezed == socket ? _self.socket : socket // ignore: cast_nullable_to_non_nullable
as Socket?,isConnected: null == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
