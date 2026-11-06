// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memory.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MemoryData {

 int get year; String? get personName;
/// Create a copy of MemoryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemoryDataCopyWith<MemoryData> get copyWith => _$MemoryDataCopyWithImpl<MemoryData>(this as MemoryData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemoryData&&(identical(other.year, year) || other.year == year)&&(identical(other.personName, personName) || other.personName == personName));
}


@override
int get hashCode => Object.hash(runtimeType,year,personName);

@override
String toString() {
  return 'MemoryData(year: $year, personName: $personName)';
}


}

/// @nodoc
abstract mixin class $MemoryDataCopyWith<$Res>  {
  factory $MemoryDataCopyWith(MemoryData value, $Res Function(MemoryData) _then) = _$MemoryDataCopyWithImpl;
@useResult
$Res call({
 int year, String? personName
});




}
/// @nodoc
class _$MemoryDataCopyWithImpl<$Res>
    implements $MemoryDataCopyWith<$Res> {
  _$MemoryDataCopyWithImpl(this._self, this._then);

  final MemoryData _self;
  final $Res Function(MemoryData) _then;

/// Create a copy of MemoryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = null,Object? personName = freezed,}) {
  return _then(_self.copyWith(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,personName: freezed == personName ? _self.personName : personName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MemoryData].
extension MemoryDataPatterns on MemoryData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemoryData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemoryData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemoryData value)  $default,){
final _that = this;
switch (_that) {
case _MemoryData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemoryData value)?  $default,){
final _that = this;
switch (_that) {
case _MemoryData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int year,  String? personName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemoryData() when $default != null:
return $default(_that.year,_that.personName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int year,  String? personName)  $default,) {final _that = this;
switch (_that) {
case _MemoryData():
return $default(_that.year,_that.personName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int year,  String? personName)?  $default,) {final _that = this;
switch (_that) {
case _MemoryData() when $default != null:
return $default(_that.year,_that.personName);case _:
  return null;

}
}

}

/// @nodoc


class _MemoryData extends MemoryData {
  const _MemoryData({required this.year, this.personName}): super._();
  

@override final  int year;
@override final  String? personName;

/// Create a copy of MemoryData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemoryDataCopyWith<_MemoryData> get copyWith => __$MemoryDataCopyWithImpl<_MemoryData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemoryData&&(identical(other.year, year) || other.year == year)&&(identical(other.personName, personName) || other.personName == personName));
}


@override
int get hashCode => Object.hash(runtimeType,year,personName);

@override
String toString() {
  return 'MemoryData(year: $year, personName: $personName)';
}


}

/// @nodoc
abstract mixin class _$MemoryDataCopyWith<$Res> implements $MemoryDataCopyWith<$Res> {
  factory _$MemoryDataCopyWith(_MemoryData value, $Res Function(_MemoryData) _then) = __$MemoryDataCopyWithImpl;
@override @useResult
$Res call({
 int year, String? personName
});




}
/// @nodoc
class __$MemoryDataCopyWithImpl<$Res>
    implements _$MemoryDataCopyWith<$Res> {
  __$MemoryDataCopyWithImpl(this._self, this._then);

  final _MemoryData _self;
  final $Res Function(_MemoryData) _then;

/// Create a copy of MemoryData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = null,Object? personName = freezed,}) {
  return _then(_MemoryData(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,personName: freezed == personName ? _self.personName : personName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$Memory {

 String get id; DateTime get createdAt; DateTime get updatedAt; DateTime? get deletedAt; String get ownerId; MemoryTypeEnum get type; MemoryData get data; bool get isSaved; DateTime get memoryAt; DateTime? get seenAt; DateTime? get showAt; DateTime? get hideAt; List<RemoteAsset> get assets;
/// Create a copy of Memory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemoryCopyWith<Memory> get copyWith => _$MemoryCopyWithImpl<Memory>(this as Memory, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Memory&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.type, type) || other.type == type)&&(identical(other.data, data) || other.data == data)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.memoryAt, memoryAt) || other.memoryAt == memoryAt)&&(identical(other.seenAt, seenAt) || other.seenAt == seenAt)&&(identical(other.showAt, showAt) || other.showAt == showAt)&&(identical(other.hideAt, hideAt) || other.hideAt == hideAt)&&const DeepCollectionEquality().equals(other.assets, assets));
}


@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,deletedAt,ownerId,type,data,isSaved,memoryAt,seenAt,showAt,hideAt,const DeepCollectionEquality().hash(assets));

@override
String toString() {
  return 'Memory(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, ownerId: $ownerId, type: $type, data: $data, isSaved: $isSaved, memoryAt: $memoryAt, seenAt: $seenAt, showAt: $showAt, hideAt: $hideAt, assets: $assets)';
}


}

/// @nodoc
abstract mixin class $MemoryCopyWith<$Res>  {
  factory $MemoryCopyWith(Memory value, $Res Function(Memory) _then) = _$MemoryCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, DateTime? deletedAt, String ownerId, MemoryTypeEnum type, MemoryData data, bool isSaved, DateTime memoryAt, DateTime? seenAt, DateTime? showAt, DateTime? hideAt, List<RemoteAsset> assets
});


$MemoryDataCopyWith<$Res> get data;

}
/// @nodoc
class _$MemoryCopyWithImpl<$Res>
    implements $MemoryCopyWith<$Res> {
  _$MemoryCopyWithImpl(this._self, this._then);

  final Memory _self;
  final $Res Function(Memory) _then;

/// Create a copy of Memory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? ownerId = null,Object? type = null,Object? data = null,Object? isSaved = null,Object? memoryAt = null,Object? seenAt = freezed,Object? showAt = freezed,Object? hideAt = freezed,Object? assets = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MemoryTypeEnum,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MemoryData,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,memoryAt: null == memoryAt ? _self.memoryAt : memoryAt // ignore: cast_nullable_to_non_nullable
as DateTime,seenAt: freezed == seenAt ? _self.seenAt : seenAt // ignore: cast_nullable_to_non_nullable
as DateTime?,showAt: freezed == showAt ? _self.showAt : showAt // ignore: cast_nullable_to_non_nullable
as DateTime?,hideAt: freezed == hideAt ? _self.hideAt : hideAt // ignore: cast_nullable_to_non_nullable
as DateTime?,assets: null == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<RemoteAsset>,
  ));
}
/// Create a copy of Memory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemoryDataCopyWith<$Res> get data {
  
  return $MemoryDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [Memory].
extension MemoryPatterns on Memory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Memory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Memory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Memory value)  $default,){
final _that = this;
switch (_that) {
case _Memory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Memory value)?  $default,){
final _that = this;
switch (_that) {
case _Memory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  DateTime? deletedAt,  String ownerId,  MemoryTypeEnum type,  MemoryData data,  bool isSaved,  DateTime memoryAt,  DateTime? seenAt,  DateTime? showAt,  DateTime? hideAt,  List<RemoteAsset> assets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Memory() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.ownerId,_that.type,_that.data,_that.isSaved,_that.memoryAt,_that.seenAt,_that.showAt,_that.hideAt,_that.assets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  DateTime? deletedAt,  String ownerId,  MemoryTypeEnum type,  MemoryData data,  bool isSaved,  DateTime memoryAt,  DateTime? seenAt,  DateTime? showAt,  DateTime? hideAt,  List<RemoteAsset> assets)  $default,) {final _that = this;
switch (_that) {
case _Memory():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.ownerId,_that.type,_that.data,_that.isSaved,_that.memoryAt,_that.seenAt,_that.showAt,_that.hideAt,_that.assets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  DateTime? deletedAt,  String ownerId,  MemoryTypeEnum type,  MemoryData data,  bool isSaved,  DateTime memoryAt,  DateTime? seenAt,  DateTime? showAt,  DateTime? hideAt,  List<RemoteAsset> assets)?  $default,) {final _that = this;
switch (_that) {
case _Memory() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.ownerId,_that.type,_that.data,_that.isSaved,_that.memoryAt,_that.seenAt,_that.showAt,_that.hideAt,_that.assets);case _:
  return null;

}
}

}

/// @nodoc


class _Memory implements Memory {
  const _Memory({required this.id, required this.createdAt, required this.updatedAt, this.deletedAt, required this.ownerId, required this.type, required this.data, required this.isSaved, required this.memoryAt, this.seenAt, this.showAt, this.hideAt, required this.assets});
  

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  DateTime? deletedAt;
@override final  String ownerId;
@override final  MemoryTypeEnum type;
@override final  MemoryData data;
@override final  bool isSaved;
@override final  DateTime memoryAt;
@override final  DateTime? seenAt;
@override final  DateTime? showAt;
@override final  DateTime? hideAt;
@override final  List<RemoteAsset> assets;

/// Create a copy of Memory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemoryCopyWith<_Memory> get copyWith => __$MemoryCopyWithImpl<_Memory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Memory&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.type, type) || other.type == type)&&(identical(other.data, data) || other.data == data)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.memoryAt, memoryAt) || other.memoryAt == memoryAt)&&(identical(other.seenAt, seenAt) || other.seenAt == seenAt)&&(identical(other.showAt, showAt) || other.showAt == showAt)&&(identical(other.hideAt, hideAt) || other.hideAt == hideAt)&&const DeepCollectionEquality().equals(other.assets, assets));
}


@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,deletedAt,ownerId,type,data,isSaved,memoryAt,seenAt,showAt,hideAt,const DeepCollectionEquality().hash(assets));

@override
String toString() {
  return 'Memory(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, ownerId: $ownerId, type: $type, data: $data, isSaved: $isSaved, memoryAt: $memoryAt, seenAt: $seenAt, showAt: $showAt, hideAt: $hideAt, assets: $assets)';
}


}

/// @nodoc
abstract mixin class _$MemoryCopyWith<$Res> implements $MemoryCopyWith<$Res> {
  factory _$MemoryCopyWith(_Memory value, $Res Function(_Memory) _then) = __$MemoryCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, DateTime? deletedAt, String ownerId, MemoryTypeEnum type, MemoryData data, bool isSaved, DateTime memoryAt, DateTime? seenAt, DateTime? showAt, DateTime? hideAt, List<RemoteAsset> assets
});


@override $MemoryDataCopyWith<$Res> get data;

}
/// @nodoc
class __$MemoryCopyWithImpl<$Res>
    implements _$MemoryCopyWith<$Res> {
  __$MemoryCopyWithImpl(this._self, this._then);

  final _Memory _self;
  final $Res Function(_Memory) _then;

/// Create a copy of Memory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? ownerId = null,Object? type = null,Object? data = null,Object? isSaved = null,Object? memoryAt = null,Object? seenAt = freezed,Object? showAt = freezed,Object? hideAt = freezed,Object? assets = null,}) {
  return _then(_Memory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MemoryTypeEnum,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MemoryData,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,memoryAt: null == memoryAt ? _self.memoryAt : memoryAt // ignore: cast_nullable_to_non_nullable
as DateTime,seenAt: freezed == seenAt ? _self.seenAt : seenAt // ignore: cast_nullable_to_non_nullable
as DateTime?,showAt: freezed == showAt ? _self.showAt : showAt // ignore: cast_nullable_to_non_nullable
as DateTime?,hideAt: freezed == hideAt ? _self.hideAt : hideAt // ignore: cast_nullable_to_non_nullable
as DateTime?,assets: null == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<RemoteAsset>,
  ));
}

/// Create a copy of Memory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemoryDataCopyWith<$Res> get data {
  
  return $MemoryDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
