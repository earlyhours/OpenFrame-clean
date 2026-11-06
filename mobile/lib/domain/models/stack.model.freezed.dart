// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stack.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StackResponse implements DiagnosticableTreeMixin {

 String get id; String get primaryAssetId; List<String> get assetIds;
/// Create a copy of StackResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StackResponseCopyWith<StackResponse> get copyWith => _$StackResponseCopyWithImpl<StackResponse>(this as StackResponse, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StackResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('primaryAssetId', primaryAssetId))..add(DiagnosticsProperty('assetIds', assetIds));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StackResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.primaryAssetId, primaryAssetId) || other.primaryAssetId == primaryAssetId)&&const DeepCollectionEquality().equals(other.assetIds, assetIds));
}


@override
int get hashCode => Object.hash(runtimeType,id,primaryAssetId,const DeepCollectionEquality().hash(assetIds));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StackResponse(id: $id, primaryAssetId: $primaryAssetId, assetIds: $assetIds)';
}


}

/// @nodoc
abstract mixin class $StackResponseCopyWith<$Res>  {
  factory $StackResponseCopyWith(StackResponse value, $Res Function(StackResponse) _then) = _$StackResponseCopyWithImpl;
@useResult
$Res call({
 String id, String primaryAssetId, List<String> assetIds
});




}
/// @nodoc
class _$StackResponseCopyWithImpl<$Res>
    implements $StackResponseCopyWith<$Res> {
  _$StackResponseCopyWithImpl(this._self, this._then);

  final StackResponse _self;
  final $Res Function(StackResponse) _then;

/// Create a copy of StackResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? primaryAssetId = null,Object? assetIds = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,primaryAssetId: null == primaryAssetId ? _self.primaryAssetId : primaryAssetId // ignore: cast_nullable_to_non_nullable
as String,assetIds: null == assetIds ? _self.assetIds : assetIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [StackResponse].
extension StackResponsePatterns on StackResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StackResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StackResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StackResponse value)  $default,){
final _that = this;
switch (_that) {
case _StackResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StackResponse value)?  $default,){
final _that = this;
switch (_that) {
case _StackResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String primaryAssetId,  List<String> assetIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StackResponse() when $default != null:
return $default(_that.id,_that.primaryAssetId,_that.assetIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String primaryAssetId,  List<String> assetIds)  $default,) {final _that = this;
switch (_that) {
case _StackResponse():
return $default(_that.id,_that.primaryAssetId,_that.assetIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String primaryAssetId,  List<String> assetIds)?  $default,) {final _that = this;
switch (_that) {
case _StackResponse() when $default != null:
return $default(_that.id,_that.primaryAssetId,_that.assetIds);case _:
  return null;

}
}

}

/// @nodoc


class _StackResponse with DiagnosticableTreeMixin implements StackResponse {
  const _StackResponse({required this.id, required this.primaryAssetId, required final  List<String> assetIds}): _assetIds = assetIds;
  

@override final  String id;
@override final  String primaryAssetId;
 final  List<String> _assetIds;
@override List<String> get assetIds {
  if (_assetIds is EqualUnmodifiableListView) return _assetIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assetIds);
}


/// Create a copy of StackResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StackResponseCopyWith<_StackResponse> get copyWith => __$StackResponseCopyWithImpl<_StackResponse>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StackResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('primaryAssetId', primaryAssetId))..add(DiagnosticsProperty('assetIds', assetIds));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StackResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.primaryAssetId, primaryAssetId) || other.primaryAssetId == primaryAssetId)&&const DeepCollectionEquality().equals(other._assetIds, _assetIds));
}


@override
int get hashCode => Object.hash(runtimeType,id,primaryAssetId,const DeepCollectionEquality().hash(_assetIds));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StackResponse(id: $id, primaryAssetId: $primaryAssetId, assetIds: $assetIds)';
}


}

/// @nodoc
abstract mixin class _$StackResponseCopyWith<$Res> implements $StackResponseCopyWith<$Res> {
  factory _$StackResponseCopyWith(_StackResponse value, $Res Function(_StackResponse) _then) = __$StackResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String primaryAssetId, List<String> assetIds
});




}
/// @nodoc
class __$StackResponseCopyWithImpl<$Res>
    implements _$StackResponseCopyWith<$Res> {
  __$StackResponseCopyWithImpl(this._self, this._then);

  final _StackResponse _self;
  final $Res Function(_StackResponse) _then;

/// Create a copy of StackResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? primaryAssetId = null,Object? assetIds = null,}) {
  return _then(_StackResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,primaryAssetId: null == primaryAssetId ? _self.primaryAssetId : primaryAssetId // ignore: cast_nullable_to_non_nullable
as String,assetIds: null == assetIds ? _self._assetIds : assetIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
