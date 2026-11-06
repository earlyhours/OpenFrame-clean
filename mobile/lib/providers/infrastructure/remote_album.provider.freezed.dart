// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_album.provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RemoteAlbumState {

 List<RemoteAlbum> get albums;
/// Create a copy of RemoteAlbumState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteAlbumStateCopyWith<RemoteAlbumState> get copyWith => _$RemoteAlbumStateCopyWithImpl<RemoteAlbumState>(this as RemoteAlbumState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteAlbumState&&const DeepCollectionEquality().equals(other.albums, albums));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(albums));



}

/// @nodoc
abstract mixin class $RemoteAlbumStateCopyWith<$Res>  {
  factory $RemoteAlbumStateCopyWith(RemoteAlbumState value, $Res Function(RemoteAlbumState) _then) = _$RemoteAlbumStateCopyWithImpl;
@useResult
$Res call({
 List<RemoteAlbum> albums
});




}
/// @nodoc
class _$RemoteAlbumStateCopyWithImpl<$Res>
    implements $RemoteAlbumStateCopyWith<$Res> {
  _$RemoteAlbumStateCopyWithImpl(this._self, this._then);

  final RemoteAlbumState _self;
  final $Res Function(RemoteAlbumState) _then;

/// Create a copy of RemoteAlbumState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? albums = null,}) {
  return _then(_self.copyWith(
albums: null == albums ? _self.albums : albums // ignore: cast_nullable_to_non_nullable
as List<RemoteAlbum>,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteAlbumState].
extension RemoteAlbumStatePatterns on RemoteAlbumState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteAlbumState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteAlbumState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteAlbumState value)  $default,){
final _that = this;
switch (_that) {
case _RemoteAlbumState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteAlbumState value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteAlbumState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RemoteAlbum> albums)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteAlbumState() when $default != null:
return $default(_that.albums);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RemoteAlbum> albums)  $default,) {final _that = this;
switch (_that) {
case _RemoteAlbumState():
return $default(_that.albums);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RemoteAlbum> albums)?  $default,) {final _that = this;
switch (_that) {
case _RemoteAlbumState() when $default != null:
return $default(_that.albums);case _:
  return null;

}
}

}

/// @nodoc


class _RemoteAlbumState extends RemoteAlbumState {
  const _RemoteAlbumState({required final  List<RemoteAlbum> albums}): _albums = albums,super._();
  

 final  List<RemoteAlbum> _albums;
@override List<RemoteAlbum> get albums {
  if (_albums is EqualUnmodifiableListView) return _albums;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_albums);
}


/// Create a copy of RemoteAlbumState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteAlbumStateCopyWith<_RemoteAlbumState> get copyWith => __$RemoteAlbumStateCopyWithImpl<_RemoteAlbumState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteAlbumState&&const DeepCollectionEquality().equals(other._albums, _albums));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_albums));



}

/// @nodoc
abstract mixin class _$RemoteAlbumStateCopyWith<$Res> implements $RemoteAlbumStateCopyWith<$Res> {
  factory _$RemoteAlbumStateCopyWith(_RemoteAlbumState value, $Res Function(_RemoteAlbumState) _then) = __$RemoteAlbumStateCopyWithImpl;
@override @useResult
$Res call({
 List<RemoteAlbum> albums
});




}
/// @nodoc
class __$RemoteAlbumStateCopyWithImpl<$Res>
    implements _$RemoteAlbumStateCopyWith<$Res> {
  __$RemoteAlbumStateCopyWithImpl(this._self, this._then);

  final _RemoteAlbumState _self;
  final $Res Function(_RemoteAlbumState) _then;

/// Create a copy of RemoteAlbumState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? albums = null,}) {
  return _then(_RemoteAlbumState(
albums: null == albums ? _self._albums : albums // ignore: cast_nullable_to_non_nullable
as List<RemoteAlbum>,
  ));
}


}

// dart format on
