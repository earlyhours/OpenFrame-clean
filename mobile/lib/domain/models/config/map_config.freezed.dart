// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapConfig {

 int get relativeDays; bool get favoritesOnly; bool get includeArchived; ThemeMode get themeMode; bool get withPartners; DateTime? get customFrom; DateTime? get customTo;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapConfig&&(identical(other.relativeDays, relativeDays) || other.relativeDays == relativeDays)&&(identical(other.favoritesOnly, favoritesOnly) || other.favoritesOnly == favoritesOnly)&&(identical(other.includeArchived, includeArchived) || other.includeArchived == includeArchived)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.withPartners, withPartners) || other.withPartners == withPartners)&&(identical(other.customFrom, customFrom) || other.customFrom == customFrom)&&(identical(other.customTo, customTo) || other.customTo == customTo));
}


@override
int get hashCode => Object.hash(runtimeType,relativeDays,favoritesOnly,includeArchived,themeMode,withPartners,customFrom,customTo);

@override
String toString() {
  return 'MapConfig(relativeDays: $relativeDays, favoritesOnly: $favoritesOnly, includeArchived: $includeArchived, themeMode: $themeMode, withPartners: $withPartners, customFrom: $customFrom, customTo: $customTo)';
}


}




/// Adds pattern-matching-related methods to [MapConfig].
extension MapConfigPatterns on MapConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapConfig value)  $default,){
final _that = this;
switch (_that) {
case _MapConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapConfig value)?  $default,){
final _that = this;
switch (_that) {
case _MapConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int relativeDays,  bool favoritesOnly,  bool includeArchived,  ThemeMode themeMode,  bool withPartners,  DateTime? customFrom,  DateTime? customTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapConfig() when $default != null:
return $default(_that.relativeDays,_that.favoritesOnly,_that.includeArchived,_that.themeMode,_that.withPartners,_that.customFrom,_that.customTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int relativeDays,  bool favoritesOnly,  bool includeArchived,  ThemeMode themeMode,  bool withPartners,  DateTime? customFrom,  DateTime? customTo)  $default,) {final _that = this;
switch (_that) {
case _MapConfig():
return $default(_that.relativeDays,_that.favoritesOnly,_that.includeArchived,_that.themeMode,_that.withPartners,_that.customFrom,_that.customTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int relativeDays,  bool favoritesOnly,  bool includeArchived,  ThemeMode themeMode,  bool withPartners,  DateTime? customFrom,  DateTime? customTo)?  $default,) {final _that = this;
switch (_that) {
case _MapConfig() when $default != null:
return $default(_that.relativeDays,_that.favoritesOnly,_that.includeArchived,_that.themeMode,_that.withPartners,_that.customFrom,_that.customTo);case _:
  return null;

}
}

}

/// @nodoc


class _MapConfig extends MapConfig {
  const _MapConfig({this.relativeDays = 0, this.favoritesOnly = false, this.includeArchived = false, this.themeMode = ThemeMode.system, this.withPartners = false, this.customFrom, this.customTo}): super._();
  

@override@JsonKey() final  int relativeDays;
@override@JsonKey() final  bool favoritesOnly;
@override@JsonKey() final  bool includeArchived;
@override@JsonKey() final  ThemeMode themeMode;
@override@JsonKey() final  bool withPartners;
@override final  DateTime? customFrom;
@override final  DateTime? customTo;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapConfig&&(identical(other.relativeDays, relativeDays) || other.relativeDays == relativeDays)&&(identical(other.favoritesOnly, favoritesOnly) || other.favoritesOnly == favoritesOnly)&&(identical(other.includeArchived, includeArchived) || other.includeArchived == includeArchived)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.withPartners, withPartners) || other.withPartners == withPartners)&&(identical(other.customFrom, customFrom) || other.customFrom == customFrom)&&(identical(other.customTo, customTo) || other.customTo == customTo));
}


@override
int get hashCode => Object.hash(runtimeType,relativeDays,favoritesOnly,includeArchived,themeMode,withPartners,customFrom,customTo);

@override
String toString() {
  return 'MapConfig(relativeDays: $relativeDays, favoritesOnly: $favoritesOnly, includeArchived: $includeArchived, themeMode: $themeMode, withPartners: $withPartners, customFrom: $customFrom, customTo: $customTo)';
}


}




// dart format on
