// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LogMessage {

 String get message; LogLevel get level; DateTime get createdAt; String? get logger; String? get error; String? get stack;
/// Create a copy of LogMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogMessageCopyWith<LogMessage> get copyWith => _$LogMessageCopyWithImpl<LogMessage>(this as LogMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogMessage&&(identical(other.message, message) || other.message == message)&&(identical(other.level, level) || other.level == level)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.logger, logger) || other.logger == logger)&&(identical(other.error, error) || other.error == error)&&(identical(other.stack, stack) || other.stack == stack));
}


@override
int get hashCode => Object.hash(runtimeType,message,level,createdAt,logger,error,stack);

@override
String toString() {
  return 'LogMessage(message: $message, level: $level, createdAt: $createdAt, logger: $logger, error: $error, stack: $stack)';
}


}

/// @nodoc
abstract mixin class $LogMessageCopyWith<$Res>  {
  factory $LogMessageCopyWith(LogMessage value, $Res Function(LogMessage) _then) = _$LogMessageCopyWithImpl;
@useResult
$Res call({
 String message, LogLevel level, DateTime createdAt, String? logger, String? error, String? stack
});




}
/// @nodoc
class _$LogMessageCopyWithImpl<$Res>
    implements $LogMessageCopyWith<$Res> {
  _$LogMessageCopyWithImpl(this._self, this._then);

  final LogMessage _self;
  final $Res Function(LogMessage) _then;

/// Create a copy of LogMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? level = null,Object? createdAt = null,Object? logger = freezed,Object? error = freezed,Object? stack = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as LogLevel,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,logger: freezed == logger ? _self.logger : logger // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,stack: freezed == stack ? _self.stack : stack // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LogMessage].
extension LogMessagePatterns on LogMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LogMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LogMessage value)  $default,){
final _that = this;
switch (_that) {
case _LogMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LogMessage value)?  $default,){
final _that = this;
switch (_that) {
case _LogMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  LogLevel level,  DateTime createdAt,  String? logger,  String? error,  String? stack)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LogMessage() when $default != null:
return $default(_that.message,_that.level,_that.createdAt,_that.logger,_that.error,_that.stack);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  LogLevel level,  DateTime createdAt,  String? logger,  String? error,  String? stack)  $default,) {final _that = this;
switch (_that) {
case _LogMessage():
return $default(_that.message,_that.level,_that.createdAt,_that.logger,_that.error,_that.stack);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  LogLevel level,  DateTime createdAt,  String? logger,  String? error,  String? stack)?  $default,) {final _that = this;
switch (_that) {
case _LogMessage() when $default != null:
return $default(_that.message,_that.level,_that.createdAt,_that.logger,_that.error,_that.stack);case _:
  return null;

}
}

}

/// @nodoc


class _LogMessage implements LogMessage {
  const _LogMessage({required this.message, required this.level, required this.createdAt, this.logger, this.error, this.stack});
  

@override final  String message;
@override final  LogLevel level;
@override final  DateTime createdAt;
@override final  String? logger;
@override final  String? error;
@override final  String? stack;

/// Create a copy of LogMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogMessageCopyWith<_LogMessage> get copyWith => __$LogMessageCopyWithImpl<_LogMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogMessage&&(identical(other.message, message) || other.message == message)&&(identical(other.level, level) || other.level == level)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.logger, logger) || other.logger == logger)&&(identical(other.error, error) || other.error == error)&&(identical(other.stack, stack) || other.stack == stack));
}


@override
int get hashCode => Object.hash(runtimeType,message,level,createdAt,logger,error,stack);

@override
String toString() {
  return 'LogMessage(message: $message, level: $level, createdAt: $createdAt, logger: $logger, error: $error, stack: $stack)';
}


}

/// @nodoc
abstract mixin class _$LogMessageCopyWith<$Res> implements $LogMessageCopyWith<$Res> {
  factory _$LogMessageCopyWith(_LogMessage value, $Res Function(_LogMessage) _then) = __$LogMessageCopyWithImpl;
@override @useResult
$Res call({
 String message, LogLevel level, DateTime createdAt, String? logger, String? error, String? stack
});




}
/// @nodoc
class __$LogMessageCopyWithImpl<$Res>
    implements _$LogMessageCopyWith<$Res> {
  __$LogMessageCopyWithImpl(this._self, this._then);

  final _LogMessage _self;
  final $Res Function(_LogMessage) _then;

/// Create a copy of LogMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? level = null,Object? createdAt = null,Object? logger = freezed,Object? error = freezed,Object? stack = freezed,}) {
  return _then(_LogMessage(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as LogLevel,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,logger: freezed == logger ? _self.logger : logger // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,stack: freezed == stack ? _self.stack : stack // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
