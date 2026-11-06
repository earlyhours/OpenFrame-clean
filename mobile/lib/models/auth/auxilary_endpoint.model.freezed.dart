// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auxilary_endpoint.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuxilaryEndpoint {

 String get url; AuxCheckStatus get status;
/// Create a copy of AuxilaryEndpoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuxilaryEndpointCopyWith<AuxilaryEndpoint> get copyWith => _$AuxilaryEndpointCopyWithImpl<AuxilaryEndpoint>(this as AuxilaryEndpoint, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuxilaryEndpoint&&(identical(other.url, url) || other.url == url)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,url,status);

@override
String toString() {
  return 'AuxilaryEndpoint(url: $url, status: $status)';
}


}

/// @nodoc
abstract mixin class $AuxilaryEndpointCopyWith<$Res>  {
  factory $AuxilaryEndpointCopyWith(AuxilaryEndpoint value, $Res Function(AuxilaryEndpoint) _then) = _$AuxilaryEndpointCopyWithImpl;
@useResult
$Res call({
 String url, AuxCheckStatus status
});


$AuxCheckStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$AuxilaryEndpointCopyWithImpl<$Res>
    implements $AuxilaryEndpointCopyWith<$Res> {
  _$AuxilaryEndpointCopyWithImpl(this._self, this._then);

  final AuxilaryEndpoint _self;
  final $Res Function(AuxilaryEndpoint) _then;

/// Create a copy of AuxilaryEndpoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? status = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuxCheckStatus,
  ));
}
/// Create a copy of AuxilaryEndpoint
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuxCheckStatusCopyWith<$Res> get status {
  
  return $AuxCheckStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuxilaryEndpoint].
extension AuxilaryEndpointPatterns on AuxilaryEndpoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuxilaryEndpoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuxilaryEndpoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuxilaryEndpoint value)  $default,){
final _that = this;
switch (_that) {
case _AuxilaryEndpoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuxilaryEndpoint value)?  $default,){
final _that = this;
switch (_that) {
case _AuxilaryEndpoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  AuxCheckStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuxilaryEndpoint() when $default != null:
return $default(_that.url,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  AuxCheckStatus status)  $default,) {final _that = this;
switch (_that) {
case _AuxilaryEndpoint():
return $default(_that.url,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  AuxCheckStatus status)?  $default,) {final _that = this;
switch (_that) {
case _AuxilaryEndpoint() when $default != null:
return $default(_that.url,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _AuxilaryEndpoint extends AuxilaryEndpoint {
  const _AuxilaryEndpoint({required this.url, required this.status}): super._();
  

@override final  String url;
@override final  AuxCheckStatus status;

/// Create a copy of AuxilaryEndpoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuxilaryEndpointCopyWith<_AuxilaryEndpoint> get copyWith => __$AuxilaryEndpointCopyWithImpl<_AuxilaryEndpoint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuxilaryEndpoint&&(identical(other.url, url) || other.url == url)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,url,status);

@override
String toString() {
  return 'AuxilaryEndpoint(url: $url, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AuxilaryEndpointCopyWith<$Res> implements $AuxilaryEndpointCopyWith<$Res> {
  factory _$AuxilaryEndpointCopyWith(_AuxilaryEndpoint value, $Res Function(_AuxilaryEndpoint) _then) = __$AuxilaryEndpointCopyWithImpl;
@override @useResult
$Res call({
 String url, AuxCheckStatus status
});


@override $AuxCheckStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$AuxilaryEndpointCopyWithImpl<$Res>
    implements _$AuxilaryEndpointCopyWith<$Res> {
  __$AuxilaryEndpointCopyWithImpl(this._self, this._then);

  final _AuxilaryEndpoint _self;
  final $Res Function(_AuxilaryEndpoint) _then;

/// Create a copy of AuxilaryEndpoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? status = null,}) {
  return _then(_AuxilaryEndpoint(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuxCheckStatus,
  ));
}

/// Create a copy of AuxilaryEndpoint
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuxCheckStatusCopyWith<$Res> get status {
  
  return $AuxCheckStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$AuxCheckStatus {

 String get name;
/// Create a copy of AuxCheckStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuxCheckStatusCopyWith<AuxCheckStatus> get copyWith => _$AuxCheckStatusCopyWithImpl<AuxCheckStatus>(this as AuxCheckStatus, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuxCheckStatus&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'AuxCheckStatus(name: $name)';
}


}

/// @nodoc
abstract mixin class $AuxCheckStatusCopyWith<$Res>  {
  factory $AuxCheckStatusCopyWith(AuxCheckStatus value, $Res Function(AuxCheckStatus) _then) = _$AuxCheckStatusCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$AuxCheckStatusCopyWithImpl<$Res>
    implements $AuxCheckStatusCopyWith<$Res> {
  _$AuxCheckStatusCopyWithImpl(this._self, this._then);

  final AuxCheckStatus _self;
  final $Res Function(AuxCheckStatus) _then;

/// Create a copy of AuxCheckStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuxCheckStatus].
extension AuxCheckStatusPatterns on AuxCheckStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuxCheckStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuxCheckStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuxCheckStatus value)  $default,){
final _that = this;
switch (_that) {
case _AuxCheckStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuxCheckStatus value)?  $default,){
final _that = this;
switch (_that) {
case _AuxCheckStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuxCheckStatus() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _AuxCheckStatus():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _AuxCheckStatus() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _AuxCheckStatus extends AuxCheckStatus {
  const _AuxCheckStatus({required this.name}): super._();
  

@override final  String name;

/// Create a copy of AuxCheckStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuxCheckStatusCopyWith<_AuxCheckStatus> get copyWith => __$AuxCheckStatusCopyWithImpl<_AuxCheckStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuxCheckStatus&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'AuxCheckStatus(name: $name)';
}


}

/// @nodoc
abstract mixin class _$AuxCheckStatusCopyWith<$Res> implements $AuxCheckStatusCopyWith<$Res> {
  factory _$AuxCheckStatusCopyWith(_AuxCheckStatus value, $Res Function(_AuxCheckStatus) _then) = __$AuxCheckStatusCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$AuxCheckStatusCopyWithImpl<$Res>
    implements _$AuxCheckStatusCopyWith<$Res> {
  __$AuxCheckStatusCopyWithImpl(this._self, this._then);

  final _AuxCheckStatus _self;
  final $Res Function(_AuxCheckStatus) _then;

/// Create a copy of AuxCheckStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_AuxCheckStatus(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
