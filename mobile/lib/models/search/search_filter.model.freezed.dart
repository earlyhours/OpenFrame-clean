// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filter.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchLocationFilter {

 String? get country; String? get state; String? get city;
/// Create a copy of SearchLocationFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchLocationFilterCopyWith<SearchLocationFilter> get copyWith => _$SearchLocationFilterCopyWithImpl<SearchLocationFilter>(this as SearchLocationFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchLocationFilter&&(identical(other.country, country) || other.country == country)&&(identical(other.state, state) || other.state == state)&&(identical(other.city, city) || other.city == city));
}


@override
int get hashCode => Object.hash(runtimeType,country,state,city);

@override
String toString() {
  return 'SearchLocationFilter(country: $country, state: $state, city: $city)';
}


}

/// @nodoc
abstract mixin class $SearchLocationFilterCopyWith<$Res>  {
  factory $SearchLocationFilterCopyWith(SearchLocationFilter value, $Res Function(SearchLocationFilter) _then) = _$SearchLocationFilterCopyWithImpl;
@useResult
$Res call({
 String? country, String? state, String? city
});




}
/// @nodoc
class _$SearchLocationFilterCopyWithImpl<$Res>
    implements $SearchLocationFilterCopyWith<$Res> {
  _$SearchLocationFilterCopyWithImpl(this._self, this._then);

  final SearchLocationFilter _self;
  final $Res Function(SearchLocationFilter) _then;

/// Create a copy of SearchLocationFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = freezed,Object? state = freezed,Object? city = freezed,}) {
  return _then(_self.copyWith(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchLocationFilter].
extension SearchLocationFilterPatterns on SearchLocationFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchLocationFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchLocationFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchLocationFilter value)  $default,){
final _that = this;
switch (_that) {
case _SearchLocationFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchLocationFilter value)?  $default,){
final _that = this;
switch (_that) {
case _SearchLocationFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? country,  String? state,  String? city)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchLocationFilter() when $default != null:
return $default(_that.country,_that.state,_that.city);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? country,  String? state,  String? city)  $default,) {final _that = this;
switch (_that) {
case _SearchLocationFilter():
return $default(_that.country,_that.state,_that.city);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? country,  String? state,  String? city)?  $default,) {final _that = this;
switch (_that) {
case _SearchLocationFilter() when $default != null:
return $default(_that.country,_that.state,_that.city);case _:
  return null;

}
}

}

/// @nodoc


class _SearchLocationFilter extends SearchLocationFilter {
  const _SearchLocationFilter({this.country, this.state, this.city}): super._();
  

@override final  String? country;
@override final  String? state;
@override final  String? city;

/// Create a copy of SearchLocationFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchLocationFilterCopyWith<_SearchLocationFilter> get copyWith => __$SearchLocationFilterCopyWithImpl<_SearchLocationFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchLocationFilter&&(identical(other.country, country) || other.country == country)&&(identical(other.state, state) || other.state == state)&&(identical(other.city, city) || other.city == city));
}


@override
int get hashCode => Object.hash(runtimeType,country,state,city);

@override
String toString() {
  return 'SearchLocationFilter(country: $country, state: $state, city: $city)';
}


}

/// @nodoc
abstract mixin class _$SearchLocationFilterCopyWith<$Res> implements $SearchLocationFilterCopyWith<$Res> {
  factory _$SearchLocationFilterCopyWith(_SearchLocationFilter value, $Res Function(_SearchLocationFilter) _then) = __$SearchLocationFilterCopyWithImpl;
@override @useResult
$Res call({
 String? country, String? state, String? city
});




}
/// @nodoc
class __$SearchLocationFilterCopyWithImpl<$Res>
    implements _$SearchLocationFilterCopyWith<$Res> {
  __$SearchLocationFilterCopyWithImpl(this._self, this._then);

  final _SearchLocationFilter _self;
  final $Res Function(_SearchLocationFilter) _then;

/// Create a copy of SearchLocationFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = freezed,Object? state = freezed,Object? city = freezed,}) {
  return _then(_SearchLocationFilter(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SearchCameraFilter {

 String? get make; String? get model;
/// Create a copy of SearchCameraFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCameraFilterCopyWith<SearchCameraFilter> get copyWith => _$SearchCameraFilterCopyWithImpl<SearchCameraFilter>(this as SearchCameraFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCameraFilter&&(identical(other.make, make) || other.make == make)&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,make,model);

@override
String toString() {
  return 'SearchCameraFilter(make: $make, model: $model)';
}


}

/// @nodoc
abstract mixin class $SearchCameraFilterCopyWith<$Res>  {
  factory $SearchCameraFilterCopyWith(SearchCameraFilter value, $Res Function(SearchCameraFilter) _then) = _$SearchCameraFilterCopyWithImpl;
@useResult
$Res call({
 String? make, String? model
});




}
/// @nodoc
class _$SearchCameraFilterCopyWithImpl<$Res>
    implements $SearchCameraFilterCopyWith<$Res> {
  _$SearchCameraFilterCopyWithImpl(this._self, this._then);

  final SearchCameraFilter _self;
  final $Res Function(SearchCameraFilter) _then;

/// Create a copy of SearchCameraFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? make = freezed,Object? model = freezed,}) {
  return _then(_self.copyWith(
make: freezed == make ? _self.make : make // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchCameraFilter].
extension SearchCameraFilterPatterns on SearchCameraFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchCameraFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchCameraFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchCameraFilter value)  $default,){
final _that = this;
switch (_that) {
case _SearchCameraFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchCameraFilter value)?  $default,){
final _that = this;
switch (_that) {
case _SearchCameraFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? make,  String? model)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchCameraFilter() when $default != null:
return $default(_that.make,_that.model);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? make,  String? model)  $default,) {final _that = this;
switch (_that) {
case _SearchCameraFilter():
return $default(_that.make,_that.model);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? make,  String? model)?  $default,) {final _that = this;
switch (_that) {
case _SearchCameraFilter() when $default != null:
return $default(_that.make,_that.model);case _:
  return null;

}
}

}

/// @nodoc


class _SearchCameraFilter extends SearchCameraFilter {
  const _SearchCameraFilter({this.make, this.model}): super._();
  

@override final  String? make;
@override final  String? model;

/// Create a copy of SearchCameraFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCameraFilterCopyWith<_SearchCameraFilter> get copyWith => __$SearchCameraFilterCopyWithImpl<_SearchCameraFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchCameraFilter&&(identical(other.make, make) || other.make == make)&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,make,model);

@override
String toString() {
  return 'SearchCameraFilter(make: $make, model: $model)';
}


}

/// @nodoc
abstract mixin class _$SearchCameraFilterCopyWith<$Res> implements $SearchCameraFilterCopyWith<$Res> {
  factory _$SearchCameraFilterCopyWith(_SearchCameraFilter value, $Res Function(_SearchCameraFilter) _then) = __$SearchCameraFilterCopyWithImpl;
@override @useResult
$Res call({
 String? make, String? model
});




}
/// @nodoc
class __$SearchCameraFilterCopyWithImpl<$Res>
    implements _$SearchCameraFilterCopyWith<$Res> {
  __$SearchCameraFilterCopyWithImpl(this._self, this._then);

  final _SearchCameraFilter _self;
  final $Res Function(_SearchCameraFilter) _then;

/// Create a copy of SearchCameraFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? make = freezed,Object? model = freezed,}) {
  return _then(_SearchCameraFilter(
make: freezed == make ? _self.make : make // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SearchDateFilter {

 DateTime? get takenBefore; DateTime? get takenAfter;
/// Create a copy of SearchDateFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchDateFilterCopyWith<SearchDateFilter> get copyWith => _$SearchDateFilterCopyWithImpl<SearchDateFilter>(this as SearchDateFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDateFilter&&(identical(other.takenBefore, takenBefore) || other.takenBefore == takenBefore)&&(identical(other.takenAfter, takenAfter) || other.takenAfter == takenAfter));
}


@override
int get hashCode => Object.hash(runtimeType,takenBefore,takenAfter);

@override
String toString() {
  return 'SearchDateFilter(takenBefore: $takenBefore, takenAfter: $takenAfter)';
}


}

/// @nodoc
abstract mixin class $SearchDateFilterCopyWith<$Res>  {
  factory $SearchDateFilterCopyWith(SearchDateFilter value, $Res Function(SearchDateFilter) _then) = _$SearchDateFilterCopyWithImpl;
@useResult
$Res call({
 DateTime? takenBefore, DateTime? takenAfter
});




}
/// @nodoc
class _$SearchDateFilterCopyWithImpl<$Res>
    implements $SearchDateFilterCopyWith<$Res> {
  _$SearchDateFilterCopyWithImpl(this._self, this._then);

  final SearchDateFilter _self;
  final $Res Function(SearchDateFilter) _then;

/// Create a copy of SearchDateFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? takenBefore = freezed,Object? takenAfter = freezed,}) {
  return _then(_self.copyWith(
takenBefore: freezed == takenBefore ? _self.takenBefore : takenBefore // ignore: cast_nullable_to_non_nullable
as DateTime?,takenAfter: freezed == takenAfter ? _self.takenAfter : takenAfter // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchDateFilter].
extension SearchDateFilterPatterns on SearchDateFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchDateFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchDateFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchDateFilter value)  $default,){
final _that = this;
switch (_that) {
case _SearchDateFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchDateFilter value)?  $default,){
final _that = this;
switch (_that) {
case _SearchDateFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? takenBefore,  DateTime? takenAfter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchDateFilter() when $default != null:
return $default(_that.takenBefore,_that.takenAfter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? takenBefore,  DateTime? takenAfter)  $default,) {final _that = this;
switch (_that) {
case _SearchDateFilter():
return $default(_that.takenBefore,_that.takenAfter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? takenBefore,  DateTime? takenAfter)?  $default,) {final _that = this;
switch (_that) {
case _SearchDateFilter() when $default != null:
return $default(_that.takenBefore,_that.takenAfter);case _:
  return null;

}
}

}

/// @nodoc


class _SearchDateFilter extends SearchDateFilter {
  const _SearchDateFilter({this.takenBefore, this.takenAfter}): super._();
  

@override final  DateTime? takenBefore;
@override final  DateTime? takenAfter;

/// Create a copy of SearchDateFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchDateFilterCopyWith<_SearchDateFilter> get copyWith => __$SearchDateFilterCopyWithImpl<_SearchDateFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchDateFilter&&(identical(other.takenBefore, takenBefore) || other.takenBefore == takenBefore)&&(identical(other.takenAfter, takenAfter) || other.takenAfter == takenAfter));
}


@override
int get hashCode => Object.hash(runtimeType,takenBefore,takenAfter);

@override
String toString() {
  return 'SearchDateFilter(takenBefore: $takenBefore, takenAfter: $takenAfter)';
}


}

/// @nodoc
abstract mixin class _$SearchDateFilterCopyWith<$Res> implements $SearchDateFilterCopyWith<$Res> {
  factory _$SearchDateFilterCopyWith(_SearchDateFilter value, $Res Function(_SearchDateFilter) _then) = __$SearchDateFilterCopyWithImpl;
@override @useResult
$Res call({
 DateTime? takenBefore, DateTime? takenAfter
});




}
/// @nodoc
class __$SearchDateFilterCopyWithImpl<$Res>
    implements _$SearchDateFilterCopyWith<$Res> {
  __$SearchDateFilterCopyWithImpl(this._self, this._then);

  final _SearchDateFilter _self;
  final $Res Function(_SearchDateFilter) _then;

/// Create a copy of SearchDateFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? takenBefore = freezed,Object? takenAfter = freezed,}) {
  return _then(_SearchDateFilter(
takenBefore: freezed == takenBefore ? _self.takenBefore : takenBefore // ignore: cast_nullable_to_non_nullable
as DateTime?,takenAfter: freezed == takenAfter ? _self.takenAfter : takenAfter // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$SearchRatingFilter {

 Option<int?> get rating;
/// Create a copy of SearchRatingFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchRatingFilterCopyWith<SearchRatingFilter> get copyWith => _$SearchRatingFilterCopyWithImpl<SearchRatingFilter>(this as SearchRatingFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchRatingFilter&&(identical(other.rating, rating) || other.rating == rating));
}


@override
int get hashCode => Object.hash(runtimeType,rating);

@override
String toString() {
  return 'SearchRatingFilter(rating: $rating)';
}


}

/// @nodoc
abstract mixin class $SearchRatingFilterCopyWith<$Res>  {
  factory $SearchRatingFilterCopyWith(SearchRatingFilter value, $Res Function(SearchRatingFilter) _then) = _$SearchRatingFilterCopyWithImpl;
@useResult
$Res call({
 Option<int?> rating
});




}
/// @nodoc
class _$SearchRatingFilterCopyWithImpl<$Res>
    implements $SearchRatingFilterCopyWith<$Res> {
  _$SearchRatingFilterCopyWithImpl(this._self, this._then);

  final SearchRatingFilter _self;
  final $Res Function(SearchRatingFilter) _then;

/// Create a copy of SearchRatingFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rating = null,}) {
  return _then(_self.copyWith(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as Option<int?>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchRatingFilter].
extension SearchRatingFilterPatterns on SearchRatingFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchRatingFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchRatingFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchRatingFilter value)  $default,){
final _that = this;
switch (_that) {
case _SearchRatingFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchRatingFilter value)?  $default,){
final _that = this;
switch (_that) {
case _SearchRatingFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Option<int?> rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchRatingFilter() when $default != null:
return $default(_that.rating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Option<int?> rating)  $default,) {final _that = this;
switch (_that) {
case _SearchRatingFilter():
return $default(_that.rating);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Option<int?> rating)?  $default,) {final _that = this;
switch (_that) {
case _SearchRatingFilter() when $default != null:
return $default(_that.rating);case _:
  return null;

}
}

}

/// @nodoc


class _SearchRatingFilter extends SearchRatingFilter {
  const _SearchRatingFilter({this.rating = const Option.none()}): super._();
  

@override@JsonKey() final  Option<int?> rating;

/// Create a copy of SearchRatingFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchRatingFilterCopyWith<_SearchRatingFilter> get copyWith => __$SearchRatingFilterCopyWithImpl<_SearchRatingFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchRatingFilter&&(identical(other.rating, rating) || other.rating == rating));
}


@override
int get hashCode => Object.hash(runtimeType,rating);

@override
String toString() {
  return 'SearchRatingFilter(rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$SearchRatingFilterCopyWith<$Res> implements $SearchRatingFilterCopyWith<$Res> {
  factory _$SearchRatingFilterCopyWith(_SearchRatingFilter value, $Res Function(_SearchRatingFilter) _then) = __$SearchRatingFilterCopyWithImpl;
@override @useResult
$Res call({
 Option<int?> rating
});




}
/// @nodoc
class __$SearchRatingFilterCopyWithImpl<$Res>
    implements _$SearchRatingFilterCopyWith<$Res> {
  __$SearchRatingFilterCopyWithImpl(this._self, this._then);

  final _SearchRatingFilter _self;
  final $Res Function(_SearchRatingFilter) _then;

/// Create a copy of SearchRatingFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rating = null,}) {
  return _then(_SearchRatingFilter(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as Option<int?>,
  ));
}


}

/// @nodoc
mixin _$SearchDisplayFilters {

 bool get isNotInAlbum; bool get isArchive; bool get isFavorite;
/// Create a copy of SearchDisplayFilters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchDisplayFiltersCopyWith<SearchDisplayFilters> get copyWith => _$SearchDisplayFiltersCopyWithImpl<SearchDisplayFilters>(this as SearchDisplayFilters, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDisplayFilters&&(identical(other.isNotInAlbum, isNotInAlbum) || other.isNotInAlbum == isNotInAlbum)&&(identical(other.isArchive, isArchive) || other.isArchive == isArchive)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,isNotInAlbum,isArchive,isFavorite);

@override
String toString() {
  return 'SearchDisplayFilters(isNotInAlbum: $isNotInAlbum, isArchive: $isArchive, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $SearchDisplayFiltersCopyWith<$Res>  {
  factory $SearchDisplayFiltersCopyWith(SearchDisplayFilters value, $Res Function(SearchDisplayFilters) _then) = _$SearchDisplayFiltersCopyWithImpl;
@useResult
$Res call({
 bool isNotInAlbum, bool isArchive, bool isFavorite
});




}
/// @nodoc
class _$SearchDisplayFiltersCopyWithImpl<$Res>
    implements $SearchDisplayFiltersCopyWith<$Res> {
  _$SearchDisplayFiltersCopyWithImpl(this._self, this._then);

  final SearchDisplayFilters _self;
  final $Res Function(SearchDisplayFilters) _then;

/// Create a copy of SearchDisplayFilters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isNotInAlbum = null,Object? isArchive = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
isNotInAlbum: null == isNotInAlbum ? _self.isNotInAlbum : isNotInAlbum // ignore: cast_nullable_to_non_nullable
as bool,isArchive: null == isArchive ? _self.isArchive : isArchive // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchDisplayFilters].
extension SearchDisplayFiltersPatterns on SearchDisplayFilters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchDisplayFilters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchDisplayFilters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchDisplayFilters value)  $default,){
final _that = this;
switch (_that) {
case _SearchDisplayFilters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchDisplayFilters value)?  $default,){
final _that = this;
switch (_that) {
case _SearchDisplayFilters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isNotInAlbum,  bool isArchive,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchDisplayFilters() when $default != null:
return $default(_that.isNotInAlbum,_that.isArchive,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isNotInAlbum,  bool isArchive,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _SearchDisplayFilters():
return $default(_that.isNotInAlbum,_that.isArchive,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isNotInAlbum,  bool isArchive,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _SearchDisplayFilters() when $default != null:
return $default(_that.isNotInAlbum,_that.isArchive,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc


class _SearchDisplayFilters implements SearchDisplayFilters {
  const _SearchDisplayFilters({required this.isNotInAlbum, required this.isArchive, required this.isFavorite});
  

@override final  bool isNotInAlbum;
@override final  bool isArchive;
@override final  bool isFavorite;

/// Create a copy of SearchDisplayFilters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchDisplayFiltersCopyWith<_SearchDisplayFilters> get copyWith => __$SearchDisplayFiltersCopyWithImpl<_SearchDisplayFilters>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchDisplayFilters&&(identical(other.isNotInAlbum, isNotInAlbum) || other.isNotInAlbum == isNotInAlbum)&&(identical(other.isArchive, isArchive) || other.isArchive == isArchive)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,isNotInAlbum,isArchive,isFavorite);

@override
String toString() {
  return 'SearchDisplayFilters(isNotInAlbum: $isNotInAlbum, isArchive: $isArchive, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$SearchDisplayFiltersCopyWith<$Res> implements $SearchDisplayFiltersCopyWith<$Res> {
  factory _$SearchDisplayFiltersCopyWith(_SearchDisplayFilters value, $Res Function(_SearchDisplayFilters) _then) = __$SearchDisplayFiltersCopyWithImpl;
@override @useResult
$Res call({
 bool isNotInAlbum, bool isArchive, bool isFavorite
});




}
/// @nodoc
class __$SearchDisplayFiltersCopyWithImpl<$Res>
    implements _$SearchDisplayFiltersCopyWith<$Res> {
  __$SearchDisplayFiltersCopyWithImpl(this._self, this._then);

  final _SearchDisplayFilters _self;
  final $Res Function(_SearchDisplayFilters) _then;

/// Create a copy of SearchDisplayFilters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isNotInAlbum = null,Object? isArchive = null,Object? isFavorite = null,}) {
  return _then(_SearchDisplayFilters(
isNotInAlbum: null == isNotInAlbum ? _self.isNotInAlbum : isNotInAlbum // ignore: cast_nullable_to_non_nullable
as bool,isArchive: null == isArchive ? _self.isArchive : isArchive // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$SearchFilter {

 String? get context; String? get filename; String? get description; String? get ocr; String? get language; String? get assetId; Set<Tag>? get tags; Set<Person> get people; SearchLocationFilter get location; SearchCameraFilter get camera; SearchDateFilter get date; SearchRatingFilter get rating; SearchDisplayFilters get display; AssetType get mediaType;
/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFilterCopyWith<SearchFilter> get copyWith => _$SearchFilterCopyWithImpl<SearchFilter>(this as SearchFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFilter&&(identical(other.context, context) || other.context == context)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.description, description) || other.description == description)&&(identical(other.ocr, ocr) || other.ocr == ocr)&&(identical(other.language, language) || other.language == language)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.people, people)&&(identical(other.location, location) || other.location == location)&&(identical(other.camera, camera) || other.camera == camera)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.display, display) || other.display == display)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType));
}


@override
int get hashCode => Object.hash(runtimeType,context,filename,description,ocr,language,assetId,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(people),location,camera,date,rating,display,mediaType);

@override
String toString() {
  return 'SearchFilter(context: $context, filename: $filename, description: $description, ocr: $ocr, language: $language, assetId: $assetId, tags: $tags, people: $people, location: $location, camera: $camera, date: $date, rating: $rating, display: $display, mediaType: $mediaType)';
}


}

/// @nodoc
abstract mixin class $SearchFilterCopyWith<$Res>  {
  factory $SearchFilterCopyWith(SearchFilter value, $Res Function(SearchFilter) _then) = _$SearchFilterCopyWithImpl;
@useResult
$Res call({
 String? context, String? filename, String? description, String? ocr, String? language, String? assetId, Set<Tag>? tags, Set<Person> people, SearchLocationFilter location, SearchCameraFilter camera, SearchDateFilter date, SearchRatingFilter rating, SearchDisplayFilters display, AssetType mediaType
});


$SearchLocationFilterCopyWith<$Res> get location;$SearchCameraFilterCopyWith<$Res> get camera;$SearchDateFilterCopyWith<$Res> get date;$SearchRatingFilterCopyWith<$Res> get rating;$SearchDisplayFiltersCopyWith<$Res> get display;

}
/// @nodoc
class _$SearchFilterCopyWithImpl<$Res>
    implements $SearchFilterCopyWith<$Res> {
  _$SearchFilterCopyWithImpl(this._self, this._then);

  final SearchFilter _self;
  final $Res Function(SearchFilter) _then;

/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = freezed,Object? filename = freezed,Object? description = freezed,Object? ocr = freezed,Object? language = freezed,Object? assetId = freezed,Object? tags = freezed,Object? people = null,Object? location = null,Object? camera = null,Object? date = null,Object? rating = null,Object? display = null,Object? mediaType = null,}) {
  return _then(_self.copyWith(
context: freezed == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String?,filename: freezed == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,ocr: freezed == ocr ? _self.ocr : ocr // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as Set<Tag>?,people: null == people ? _self.people : people // ignore: cast_nullable_to_non_nullable
as Set<Person>,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as SearchLocationFilter,camera: null == camera ? _self.camera : camera // ignore: cast_nullable_to_non_nullable
as SearchCameraFilter,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as SearchDateFilter,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as SearchRatingFilter,display: null == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as SearchDisplayFilters,mediaType: null == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as AssetType,
  ));
}
/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchLocationFilterCopyWith<$Res> get location {
  
  return $SearchLocationFilterCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchCameraFilterCopyWith<$Res> get camera {
  
  return $SearchCameraFilterCopyWith<$Res>(_self.camera, (value) {
    return _then(_self.copyWith(camera: value));
  });
}/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchDateFilterCopyWith<$Res> get date {
  
  return $SearchDateFilterCopyWith<$Res>(_self.date, (value) {
    return _then(_self.copyWith(date: value));
  });
}/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchRatingFilterCopyWith<$Res> get rating {
  
  return $SearchRatingFilterCopyWith<$Res>(_self.rating, (value) {
    return _then(_self.copyWith(rating: value));
  });
}/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchDisplayFiltersCopyWith<$Res> get display {
  
  return $SearchDisplayFiltersCopyWith<$Res>(_self.display, (value) {
    return _then(_self.copyWith(display: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchFilter].
extension SearchFilterPatterns on SearchFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchFilter value)  $default,){
final _that = this;
switch (_that) {
case _SearchFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchFilter value)?  $default,){
final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? context,  String? filename,  String? description,  String? ocr,  String? language,  String? assetId,  Set<Tag>? tags,  Set<Person> people,  SearchLocationFilter location,  SearchCameraFilter camera,  SearchDateFilter date,  SearchRatingFilter rating,  SearchDisplayFilters display,  AssetType mediaType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
return $default(_that.context,_that.filename,_that.description,_that.ocr,_that.language,_that.assetId,_that.tags,_that.people,_that.location,_that.camera,_that.date,_that.rating,_that.display,_that.mediaType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? context,  String? filename,  String? description,  String? ocr,  String? language,  String? assetId,  Set<Tag>? tags,  Set<Person> people,  SearchLocationFilter location,  SearchCameraFilter camera,  SearchDateFilter date,  SearchRatingFilter rating,  SearchDisplayFilters display,  AssetType mediaType)  $default,) {final _that = this;
switch (_that) {
case _SearchFilter():
return $default(_that.context,_that.filename,_that.description,_that.ocr,_that.language,_that.assetId,_that.tags,_that.people,_that.location,_that.camera,_that.date,_that.rating,_that.display,_that.mediaType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? context,  String? filename,  String? description,  String? ocr,  String? language,  String? assetId,  Set<Tag>? tags,  Set<Person> people,  SearchLocationFilter location,  SearchCameraFilter camera,  SearchDateFilter date,  SearchRatingFilter rating,  SearchDisplayFilters display,  AssetType mediaType)?  $default,) {final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
return $default(_that.context,_that.filename,_that.description,_that.ocr,_that.language,_that.assetId,_that.tags,_that.people,_that.location,_that.camera,_that.date,_that.rating,_that.display,_that.mediaType);case _:
  return null;

}
}

}

/// @nodoc


class _SearchFilter extends SearchFilter {
  const _SearchFilter({this.context, this.filename, this.description, this.ocr, this.language, this.assetId, final  Set<Tag>? tags, required final  Set<Person> people, required this.location, required this.camera, required this.date, required this.rating, required this.display, required this.mediaType}): _tags = tags,_people = people,super._();
  

@override final  String? context;
@override final  String? filename;
@override final  String? description;
@override final  String? ocr;
@override final  String? language;
@override final  String? assetId;
 final  Set<Tag>? _tags;
@override Set<Tag>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableSetView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}

 final  Set<Person> _people;
@override Set<Person> get people {
  if (_people is EqualUnmodifiableSetView) return _people;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_people);
}

@override final  SearchLocationFilter location;
@override final  SearchCameraFilter camera;
@override final  SearchDateFilter date;
@override final  SearchRatingFilter rating;
@override final  SearchDisplayFilters display;
@override final  AssetType mediaType;

/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchFilterCopyWith<_SearchFilter> get copyWith => __$SearchFilterCopyWithImpl<_SearchFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchFilter&&(identical(other.context, context) || other.context == context)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.description, description) || other.description == description)&&(identical(other.ocr, ocr) || other.ocr == ocr)&&(identical(other.language, language) || other.language == language)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._people, _people)&&(identical(other.location, location) || other.location == location)&&(identical(other.camera, camera) || other.camera == camera)&&(identical(other.date, date) || other.date == date)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.display, display) || other.display == display)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType));
}


@override
int get hashCode => Object.hash(runtimeType,context,filename,description,ocr,language,assetId,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_people),location,camera,date,rating,display,mediaType);

@override
String toString() {
  return 'SearchFilter(context: $context, filename: $filename, description: $description, ocr: $ocr, language: $language, assetId: $assetId, tags: $tags, people: $people, location: $location, camera: $camera, date: $date, rating: $rating, display: $display, mediaType: $mediaType)';
}


}

/// @nodoc
abstract mixin class _$SearchFilterCopyWith<$Res> implements $SearchFilterCopyWith<$Res> {
  factory _$SearchFilterCopyWith(_SearchFilter value, $Res Function(_SearchFilter) _then) = __$SearchFilterCopyWithImpl;
@override @useResult
$Res call({
 String? context, String? filename, String? description, String? ocr, String? language, String? assetId, Set<Tag>? tags, Set<Person> people, SearchLocationFilter location, SearchCameraFilter camera, SearchDateFilter date, SearchRatingFilter rating, SearchDisplayFilters display, AssetType mediaType
});


@override $SearchLocationFilterCopyWith<$Res> get location;@override $SearchCameraFilterCopyWith<$Res> get camera;@override $SearchDateFilterCopyWith<$Res> get date;@override $SearchRatingFilterCopyWith<$Res> get rating;@override $SearchDisplayFiltersCopyWith<$Res> get display;

}
/// @nodoc
class __$SearchFilterCopyWithImpl<$Res>
    implements _$SearchFilterCopyWith<$Res> {
  __$SearchFilterCopyWithImpl(this._self, this._then);

  final _SearchFilter _self;
  final $Res Function(_SearchFilter) _then;

/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = freezed,Object? filename = freezed,Object? description = freezed,Object? ocr = freezed,Object? language = freezed,Object? assetId = freezed,Object? tags = freezed,Object? people = null,Object? location = null,Object? camera = null,Object? date = null,Object? rating = null,Object? display = null,Object? mediaType = null,}) {
  return _then(_SearchFilter(
context: freezed == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String?,filename: freezed == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,ocr: freezed == ocr ? _self.ocr : ocr // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as Set<Tag>?,people: null == people ? _self._people : people // ignore: cast_nullable_to_non_nullable
as Set<Person>,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as SearchLocationFilter,camera: null == camera ? _self.camera : camera // ignore: cast_nullable_to_non_nullable
as SearchCameraFilter,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as SearchDateFilter,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as SearchRatingFilter,display: null == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as SearchDisplayFilters,mediaType: null == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as AssetType,
  ));
}

/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchLocationFilterCopyWith<$Res> get location {
  
  return $SearchLocationFilterCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchCameraFilterCopyWith<$Res> get camera {
  
  return $SearchCameraFilterCopyWith<$Res>(_self.camera, (value) {
    return _then(_self.copyWith(camera: value));
  });
}/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchDateFilterCopyWith<$Res> get date {
  
  return $SearchDateFilterCopyWith<$Res>(_self.date, (value) {
    return _then(_self.copyWith(date: value));
  });
}/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchRatingFilterCopyWith<$Res> get rating {
  
  return $SearchRatingFilterCopyWith<$Res>(_self.rating, (value) {
    return _then(_self.copyWith(rating: value));
  });
}/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchDisplayFiltersCopyWith<$Res> get display {
  
  return $SearchDisplayFiltersCopyWith<$Res>(_self.display, (value) {
    return _then(_self.copyWith(display: value));
  });
}
}

// dart format on
