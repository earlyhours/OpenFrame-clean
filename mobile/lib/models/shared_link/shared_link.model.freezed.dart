// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_link.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SharedLink implements DiagnosticableTreeMixin {

 String get id; String get title; bool get allowDownload; bool get allowUpload; String? get thumbAssetId; String? get description; String? get password; DateTime? get expiresAt; String get key; bool get showMetadata; SharedLinkSource get type; String? get slug;
/// Create a copy of SharedLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SharedLinkCopyWith<SharedLink> get copyWith => _$SharedLinkCopyWithImpl<SharedLink>(this as SharedLink, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SharedLink'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('allowDownload', allowDownload))..add(DiagnosticsProperty('allowUpload', allowUpload))..add(DiagnosticsProperty('thumbAssetId', thumbAssetId))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('expiresAt', expiresAt))..add(DiagnosticsProperty('key', key))..add(DiagnosticsProperty('showMetadata', showMetadata))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('slug', slug));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SharedLink&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.allowDownload, allowDownload) || other.allowDownload == allowDownload)&&(identical(other.allowUpload, allowUpload) || other.allowUpload == allowUpload)&&(identical(other.thumbAssetId, thumbAssetId) || other.thumbAssetId == thumbAssetId)&&(identical(other.description, description) || other.description == description)&&(identical(other.password, password) || other.password == password)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.key, key) || other.key == key)&&(identical(other.showMetadata, showMetadata) || other.showMetadata == showMetadata)&&(identical(other.type, type) || other.type == type)&&(identical(other.slug, slug) || other.slug == slug));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,allowDownload,allowUpload,thumbAssetId,description,password,expiresAt,key,showMetadata,type,slug);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SharedLink(id: $id, title: $title, allowDownload: $allowDownload, allowUpload: $allowUpload, thumbAssetId: $thumbAssetId, description: $description, password: $password, expiresAt: $expiresAt, key: $key, showMetadata: $showMetadata, type: $type, slug: $slug)';
}


}

/// @nodoc
abstract mixin class $SharedLinkCopyWith<$Res>  {
  factory $SharedLinkCopyWith(SharedLink value, $Res Function(SharedLink) _then) = _$SharedLinkCopyWithImpl;
@useResult
$Res call({
 String id, String title, bool allowDownload, bool allowUpload, String? thumbAssetId, String? description, String? password, DateTime? expiresAt, String key, bool showMetadata, SharedLinkSource type, String? slug
});




}
/// @nodoc
class _$SharedLinkCopyWithImpl<$Res>
    implements $SharedLinkCopyWith<$Res> {
  _$SharedLinkCopyWithImpl(this._self, this._then);

  final SharedLink _self;
  final $Res Function(SharedLink) _then;

/// Create a copy of SharedLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? allowDownload = null,Object? allowUpload = null,Object? thumbAssetId = freezed,Object? description = freezed,Object? password = freezed,Object? expiresAt = freezed,Object? key = null,Object? showMetadata = null,Object? type = null,Object? slug = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,allowDownload: null == allowDownload ? _self.allowDownload : allowDownload // ignore: cast_nullable_to_non_nullable
as bool,allowUpload: null == allowUpload ? _self.allowUpload : allowUpload // ignore: cast_nullable_to_non_nullable
as bool,thumbAssetId: freezed == thumbAssetId ? _self.thumbAssetId : thumbAssetId // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,showMetadata: null == showMetadata ? _self.showMetadata : showMetadata // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SharedLinkSource,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SharedLink].
extension SharedLinkPatterns on SharedLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SharedLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SharedLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SharedLink value)  $default,){
final _that = this;
switch (_that) {
case _SharedLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SharedLink value)?  $default,){
final _that = this;
switch (_that) {
case _SharedLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  bool allowDownload,  bool allowUpload,  String? thumbAssetId,  String? description,  String? password,  DateTime? expiresAt,  String key,  bool showMetadata,  SharedLinkSource type,  String? slug)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SharedLink() when $default != null:
return $default(_that.id,_that.title,_that.allowDownload,_that.allowUpload,_that.thumbAssetId,_that.description,_that.password,_that.expiresAt,_that.key,_that.showMetadata,_that.type,_that.slug);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  bool allowDownload,  bool allowUpload,  String? thumbAssetId,  String? description,  String? password,  DateTime? expiresAt,  String key,  bool showMetadata,  SharedLinkSource type,  String? slug)  $default,) {final _that = this;
switch (_that) {
case _SharedLink():
return $default(_that.id,_that.title,_that.allowDownload,_that.allowUpload,_that.thumbAssetId,_that.description,_that.password,_that.expiresAt,_that.key,_that.showMetadata,_that.type,_that.slug);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  bool allowDownload,  bool allowUpload,  String? thumbAssetId,  String? description,  String? password,  DateTime? expiresAt,  String key,  bool showMetadata,  SharedLinkSource type,  String? slug)?  $default,) {final _that = this;
switch (_that) {
case _SharedLink() when $default != null:
return $default(_that.id,_that.title,_that.allowDownload,_that.allowUpload,_that.thumbAssetId,_that.description,_that.password,_that.expiresAt,_that.key,_that.showMetadata,_that.type,_that.slug);case _:
  return null;

}
}

}

/// @nodoc


class _SharedLink with DiagnosticableTreeMixin implements SharedLink {
  const _SharedLink({required this.id, required this.title, required this.allowDownload, required this.allowUpload, required this.thumbAssetId, required this.description, required this.password, required this.expiresAt, required this.key, required this.showMetadata, required this.type, required this.slug});
  

@override final  String id;
@override final  String title;
@override final  bool allowDownload;
@override final  bool allowUpload;
@override final  String? thumbAssetId;
@override final  String? description;
@override final  String? password;
@override final  DateTime? expiresAt;
@override final  String key;
@override final  bool showMetadata;
@override final  SharedLinkSource type;
@override final  String? slug;

/// Create a copy of SharedLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SharedLinkCopyWith<_SharedLink> get copyWith => __$SharedLinkCopyWithImpl<_SharedLink>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SharedLink'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('allowDownload', allowDownload))..add(DiagnosticsProperty('allowUpload', allowUpload))..add(DiagnosticsProperty('thumbAssetId', thumbAssetId))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('expiresAt', expiresAt))..add(DiagnosticsProperty('key', key))..add(DiagnosticsProperty('showMetadata', showMetadata))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('slug', slug));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SharedLink&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.allowDownload, allowDownload) || other.allowDownload == allowDownload)&&(identical(other.allowUpload, allowUpload) || other.allowUpload == allowUpload)&&(identical(other.thumbAssetId, thumbAssetId) || other.thumbAssetId == thumbAssetId)&&(identical(other.description, description) || other.description == description)&&(identical(other.password, password) || other.password == password)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.key, key) || other.key == key)&&(identical(other.showMetadata, showMetadata) || other.showMetadata == showMetadata)&&(identical(other.type, type) || other.type == type)&&(identical(other.slug, slug) || other.slug == slug));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,allowDownload,allowUpload,thumbAssetId,description,password,expiresAt,key,showMetadata,type,slug);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SharedLink(id: $id, title: $title, allowDownload: $allowDownload, allowUpload: $allowUpload, thumbAssetId: $thumbAssetId, description: $description, password: $password, expiresAt: $expiresAt, key: $key, showMetadata: $showMetadata, type: $type, slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$SharedLinkCopyWith<$Res> implements $SharedLinkCopyWith<$Res> {
  factory _$SharedLinkCopyWith(_SharedLink value, $Res Function(_SharedLink) _then) = __$SharedLinkCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, bool allowDownload, bool allowUpload, String? thumbAssetId, String? description, String? password, DateTime? expiresAt, String key, bool showMetadata, SharedLinkSource type, String? slug
});




}
/// @nodoc
class __$SharedLinkCopyWithImpl<$Res>
    implements _$SharedLinkCopyWith<$Res> {
  __$SharedLinkCopyWithImpl(this._self, this._then);

  final _SharedLink _self;
  final $Res Function(_SharedLink) _then;

/// Create a copy of SharedLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? allowDownload = null,Object? allowUpload = null,Object? thumbAssetId = freezed,Object? description = freezed,Object? password = freezed,Object? expiresAt = freezed,Object? key = null,Object? showMetadata = null,Object? type = null,Object? slug = freezed,}) {
  return _then(_SharedLink(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,allowDownload: null == allowDownload ? _self.allowDownload : allowDownload // ignore: cast_nullable_to_non_nullable
as bool,allowUpload: null == allowUpload ? _self.allowUpload : allowUpload // ignore: cast_nullable_to_non_nullable
as bool,thumbAssetId: freezed == thumbAssetId ? _self.thumbAssetId : thumbAssetId // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,showMetadata: null == showMetadata ? _self.showMetadata : showMetadata // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SharedLinkSource,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
