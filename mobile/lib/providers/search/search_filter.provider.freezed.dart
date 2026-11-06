// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filter.provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchSuggestionArgs {

 SearchSuggestionType get type; String? get locationCountry; String? get locationState; String? get make; String? get model;
/// Create a copy of SearchSuggestionArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchSuggestionArgsCopyWith<SearchSuggestionArgs> get copyWith => _$SearchSuggestionArgsCopyWithImpl<SearchSuggestionArgs>(this as SearchSuggestionArgs, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchSuggestionArgs&&(identical(other.type, type) || other.type == type)&&(identical(other.locationCountry, locationCountry) || other.locationCountry == locationCountry)&&(identical(other.locationState, locationState) || other.locationState == locationState)&&(identical(other.make, make) || other.make == make)&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,type,locationCountry,locationState,make,model);

@override
String toString() {
  return 'SearchSuggestionArgs(type: $type, locationCountry: $locationCountry, locationState: $locationState, make: $make, model: $model)';
}


}

/// @nodoc
abstract mixin class $SearchSuggestionArgsCopyWith<$Res>  {
  factory $SearchSuggestionArgsCopyWith(SearchSuggestionArgs value, $Res Function(SearchSuggestionArgs) _then) = _$SearchSuggestionArgsCopyWithImpl;
@useResult
$Res call({
 SearchSuggestionType type, String? locationCountry, String? locationState, String? make, String? model
});




}
/// @nodoc
class _$SearchSuggestionArgsCopyWithImpl<$Res>
    implements $SearchSuggestionArgsCopyWith<$Res> {
  _$SearchSuggestionArgsCopyWithImpl(this._self, this._then);

  final SearchSuggestionArgs _self;
  final $Res Function(SearchSuggestionArgs) _then;

/// Create a copy of SearchSuggestionArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? locationCountry = freezed,Object? locationState = freezed,Object? make = freezed,Object? model = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SearchSuggestionType,locationCountry: freezed == locationCountry ? _self.locationCountry : locationCountry // ignore: cast_nullable_to_non_nullable
as String?,locationState: freezed == locationState ? _self.locationState : locationState // ignore: cast_nullable_to_non_nullable
as String?,make: freezed == make ? _self.make : make // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchSuggestionArgs].
extension SearchSuggestionArgsPatterns on SearchSuggestionArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchSuggestionArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchSuggestionArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchSuggestionArgs value)  $default,){
final _that = this;
switch (_that) {
case _SearchSuggestionArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchSuggestionArgs value)?  $default,){
final _that = this;
switch (_that) {
case _SearchSuggestionArgs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SearchSuggestionType type,  String? locationCountry,  String? locationState,  String? make,  String? model)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchSuggestionArgs() when $default != null:
return $default(_that.type,_that.locationCountry,_that.locationState,_that.make,_that.model);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SearchSuggestionType type,  String? locationCountry,  String? locationState,  String? make,  String? model)  $default,) {final _that = this;
switch (_that) {
case _SearchSuggestionArgs():
return $default(_that.type,_that.locationCountry,_that.locationState,_that.make,_that.model);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SearchSuggestionType type,  String? locationCountry,  String? locationState,  String? make,  String? model)?  $default,) {final _that = this;
switch (_that) {
case _SearchSuggestionArgs() when $default != null:
return $default(_that.type,_that.locationCountry,_that.locationState,_that.make,_that.model);case _:
  return null;

}
}

}

/// @nodoc


class _SearchSuggestionArgs implements SearchSuggestionArgs {
  const _SearchSuggestionArgs({required this.type, this.locationCountry, this.locationState, this.make, this.model});
  

@override final  SearchSuggestionType type;
@override final  String? locationCountry;
@override final  String? locationState;
@override final  String? make;
@override final  String? model;

/// Create a copy of SearchSuggestionArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchSuggestionArgsCopyWith<_SearchSuggestionArgs> get copyWith => __$SearchSuggestionArgsCopyWithImpl<_SearchSuggestionArgs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchSuggestionArgs&&(identical(other.type, type) || other.type == type)&&(identical(other.locationCountry, locationCountry) || other.locationCountry == locationCountry)&&(identical(other.locationState, locationState) || other.locationState == locationState)&&(identical(other.make, make) || other.make == make)&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,type,locationCountry,locationState,make,model);

@override
String toString() {
  return 'SearchSuggestionArgs(type: $type, locationCountry: $locationCountry, locationState: $locationState, make: $make, model: $model)';
}


}

/// @nodoc
abstract mixin class _$SearchSuggestionArgsCopyWith<$Res> implements $SearchSuggestionArgsCopyWith<$Res> {
  factory _$SearchSuggestionArgsCopyWith(_SearchSuggestionArgs value, $Res Function(_SearchSuggestionArgs) _then) = __$SearchSuggestionArgsCopyWithImpl;
@override @useResult
$Res call({
 SearchSuggestionType type, String? locationCountry, String? locationState, String? make, String? model
});




}
/// @nodoc
class __$SearchSuggestionArgsCopyWithImpl<$Res>
    implements _$SearchSuggestionArgsCopyWith<$Res> {
  __$SearchSuggestionArgsCopyWithImpl(this._self, this._then);

  final _SearchSuggestionArgs _self;
  final $Res Function(_SearchSuggestionArgs) _then;

/// Create a copy of SearchSuggestionArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? locationCountry = freezed,Object? locationState = freezed,Object? make = freezed,Object? model = freezed,}) {
  return _then(_SearchSuggestionArgs(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SearchSuggestionType,locationCountry: freezed == locationCountry ? _self.locationCountry : locationCountry // ignore: cast_nullable_to_non_nullable
as String?,locationState: freezed == locationState ? _self.locationState : locationState // ignore: cast_nullable_to_non_nullable
as String?,make: freezed == make ? _self.make : make // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
