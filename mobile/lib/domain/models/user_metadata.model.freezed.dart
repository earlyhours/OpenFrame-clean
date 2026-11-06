// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_metadata.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Onboarding implements DiagnosticableTreeMixin {

 bool get isOnboarded;
/// Create a copy of Onboarding
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingCopyWith<Onboarding> get copyWith => _$OnboardingCopyWithImpl<Onboarding>(this as Onboarding, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Onboarding'))
    ..add(DiagnosticsProperty('isOnboarded', isOnboarded));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Onboarding&&(identical(other.isOnboarded, isOnboarded) || other.isOnboarded == isOnboarded));
}


@override
int get hashCode => Object.hash(runtimeType,isOnboarded);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Onboarding(isOnboarded: $isOnboarded)';
}


}

/// @nodoc
abstract mixin class $OnboardingCopyWith<$Res>  {
  factory $OnboardingCopyWith(Onboarding value, $Res Function(Onboarding) _then) = _$OnboardingCopyWithImpl;
@useResult
$Res call({
 bool isOnboarded
});




}
/// @nodoc
class _$OnboardingCopyWithImpl<$Res>
    implements $OnboardingCopyWith<$Res> {
  _$OnboardingCopyWithImpl(this._self, this._then);

  final Onboarding _self;
  final $Res Function(Onboarding) _then;

/// Create a copy of Onboarding
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isOnboarded = null,}) {
  return _then(_self.copyWith(
isOnboarded: null == isOnboarded ? _self.isOnboarded : isOnboarded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Onboarding].
extension OnboardingPatterns on Onboarding {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Onboarding value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Onboarding() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Onboarding value)  $default,){
final _that = this;
switch (_that) {
case _Onboarding():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Onboarding value)?  $default,){
final _that = this;
switch (_that) {
case _Onboarding() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isOnboarded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Onboarding() when $default != null:
return $default(_that.isOnboarded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isOnboarded)  $default,) {final _that = this;
switch (_that) {
case _Onboarding():
return $default(_that.isOnboarded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isOnboarded)?  $default,) {final _that = this;
switch (_that) {
case _Onboarding() when $default != null:
return $default(_that.isOnboarded);case _:
  return null;

}
}

}

/// @nodoc


class _Onboarding extends Onboarding with DiagnosticableTreeMixin {
  const _Onboarding({required this.isOnboarded}): super._();
  

@override final  bool isOnboarded;

/// Create a copy of Onboarding
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingCopyWith<_Onboarding> get copyWith => __$OnboardingCopyWithImpl<_Onboarding>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Onboarding'))
    ..add(DiagnosticsProperty('isOnboarded', isOnboarded));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Onboarding&&(identical(other.isOnboarded, isOnboarded) || other.isOnboarded == isOnboarded));
}


@override
int get hashCode => Object.hash(runtimeType,isOnboarded);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Onboarding(isOnboarded: $isOnboarded)';
}


}

/// @nodoc
abstract mixin class _$OnboardingCopyWith<$Res> implements $OnboardingCopyWith<$Res> {
  factory _$OnboardingCopyWith(_Onboarding value, $Res Function(_Onboarding) _then) = __$OnboardingCopyWithImpl;
@override @useResult
$Res call({
 bool isOnboarded
});




}
/// @nodoc
class __$OnboardingCopyWithImpl<$Res>
    implements _$OnboardingCopyWith<$Res> {
  __$OnboardingCopyWithImpl(this._self, this._then);

  final _Onboarding _self;
  final $Res Function(_Onboarding) _then;

/// Create a copy of Onboarding
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isOnboarded = null,}) {
  return _then(_Onboarding(
isOnboarded: null == isOnboarded ? _self.isOnboarded : isOnboarded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$Preferences implements DiagnosticableTreeMixin {

 bool get foldersEnabled; bool get memoriesEnabled; bool get peopleEnabled; bool get ratingsEnabled; bool get sharedLinksEnabled; bool get tagsEnabled; AvatarColor get userAvatarColor; bool get showSupportBadge; int get minimumFaces;
/// Create a copy of Preferences
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreferencesCopyWith<Preferences> get copyWith => _$PreferencesCopyWithImpl<Preferences>(this as Preferences, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Preferences'))
    ..add(DiagnosticsProperty('foldersEnabled', foldersEnabled))..add(DiagnosticsProperty('memoriesEnabled', memoriesEnabled))..add(DiagnosticsProperty('peopleEnabled', peopleEnabled))..add(DiagnosticsProperty('ratingsEnabled', ratingsEnabled))..add(DiagnosticsProperty('sharedLinksEnabled', sharedLinksEnabled))..add(DiagnosticsProperty('tagsEnabled', tagsEnabled))..add(DiagnosticsProperty('userAvatarColor', userAvatarColor))..add(DiagnosticsProperty('showSupportBadge', showSupportBadge))..add(DiagnosticsProperty('minimumFaces', minimumFaces));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Preferences&&(identical(other.foldersEnabled, foldersEnabled) || other.foldersEnabled == foldersEnabled)&&(identical(other.memoriesEnabled, memoriesEnabled) || other.memoriesEnabled == memoriesEnabled)&&(identical(other.peopleEnabled, peopleEnabled) || other.peopleEnabled == peopleEnabled)&&(identical(other.ratingsEnabled, ratingsEnabled) || other.ratingsEnabled == ratingsEnabled)&&(identical(other.sharedLinksEnabled, sharedLinksEnabled) || other.sharedLinksEnabled == sharedLinksEnabled)&&(identical(other.tagsEnabled, tagsEnabled) || other.tagsEnabled == tagsEnabled)&&(identical(other.userAvatarColor, userAvatarColor) || other.userAvatarColor == userAvatarColor)&&(identical(other.showSupportBadge, showSupportBadge) || other.showSupportBadge == showSupportBadge)&&(identical(other.minimumFaces, minimumFaces) || other.minimumFaces == minimumFaces));
}


@override
int get hashCode => Object.hash(runtimeType,foldersEnabled,memoriesEnabled,peopleEnabled,ratingsEnabled,sharedLinksEnabled,tagsEnabled,userAvatarColor,showSupportBadge,minimumFaces);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Preferences(foldersEnabled: $foldersEnabled, memoriesEnabled: $memoriesEnabled, peopleEnabled: $peopleEnabled, ratingsEnabled: $ratingsEnabled, sharedLinksEnabled: $sharedLinksEnabled, tagsEnabled: $tagsEnabled, userAvatarColor: $userAvatarColor, showSupportBadge: $showSupportBadge, minimumFaces: $minimumFaces)';
}


}

/// @nodoc
abstract mixin class $PreferencesCopyWith<$Res>  {
  factory $PreferencesCopyWith(Preferences value, $Res Function(Preferences) _then) = _$PreferencesCopyWithImpl;
@useResult
$Res call({
 bool foldersEnabled, bool memoriesEnabled, bool peopleEnabled, bool ratingsEnabled, bool sharedLinksEnabled, bool tagsEnabled, AvatarColor userAvatarColor, bool showSupportBadge, int minimumFaces
});




}
/// @nodoc
class _$PreferencesCopyWithImpl<$Res>
    implements $PreferencesCopyWith<$Res> {
  _$PreferencesCopyWithImpl(this._self, this._then);

  final Preferences _self;
  final $Res Function(Preferences) _then;

/// Create a copy of Preferences
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? foldersEnabled = null,Object? memoriesEnabled = null,Object? peopleEnabled = null,Object? ratingsEnabled = null,Object? sharedLinksEnabled = null,Object? tagsEnabled = null,Object? userAvatarColor = null,Object? showSupportBadge = null,Object? minimumFaces = null,}) {
  return _then(_self.copyWith(
foldersEnabled: null == foldersEnabled ? _self.foldersEnabled : foldersEnabled // ignore: cast_nullable_to_non_nullable
as bool,memoriesEnabled: null == memoriesEnabled ? _self.memoriesEnabled : memoriesEnabled // ignore: cast_nullable_to_non_nullable
as bool,peopleEnabled: null == peopleEnabled ? _self.peopleEnabled : peopleEnabled // ignore: cast_nullable_to_non_nullable
as bool,ratingsEnabled: null == ratingsEnabled ? _self.ratingsEnabled : ratingsEnabled // ignore: cast_nullable_to_non_nullable
as bool,sharedLinksEnabled: null == sharedLinksEnabled ? _self.sharedLinksEnabled : sharedLinksEnabled // ignore: cast_nullable_to_non_nullable
as bool,tagsEnabled: null == tagsEnabled ? _self.tagsEnabled : tagsEnabled // ignore: cast_nullable_to_non_nullable
as bool,userAvatarColor: null == userAvatarColor ? _self.userAvatarColor : userAvatarColor // ignore: cast_nullable_to_non_nullable
as AvatarColor,showSupportBadge: null == showSupportBadge ? _self.showSupportBadge : showSupportBadge // ignore: cast_nullable_to_non_nullable
as bool,minimumFaces: null == minimumFaces ? _self.minimumFaces : minimumFaces // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Preferences].
extension PreferencesPatterns on Preferences {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Preferences value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Preferences() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Preferences value)  $default,){
final _that = this;
switch (_that) {
case _Preferences():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Preferences value)?  $default,){
final _that = this;
switch (_that) {
case _Preferences() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool foldersEnabled,  bool memoriesEnabled,  bool peopleEnabled,  bool ratingsEnabled,  bool sharedLinksEnabled,  bool tagsEnabled,  AvatarColor userAvatarColor,  bool showSupportBadge,  int minimumFaces)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Preferences() when $default != null:
return $default(_that.foldersEnabled,_that.memoriesEnabled,_that.peopleEnabled,_that.ratingsEnabled,_that.sharedLinksEnabled,_that.tagsEnabled,_that.userAvatarColor,_that.showSupportBadge,_that.minimumFaces);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool foldersEnabled,  bool memoriesEnabled,  bool peopleEnabled,  bool ratingsEnabled,  bool sharedLinksEnabled,  bool tagsEnabled,  AvatarColor userAvatarColor,  bool showSupportBadge,  int minimumFaces)  $default,) {final _that = this;
switch (_that) {
case _Preferences():
return $default(_that.foldersEnabled,_that.memoriesEnabled,_that.peopleEnabled,_that.ratingsEnabled,_that.sharedLinksEnabled,_that.tagsEnabled,_that.userAvatarColor,_that.showSupportBadge,_that.minimumFaces);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool foldersEnabled,  bool memoriesEnabled,  bool peopleEnabled,  bool ratingsEnabled,  bool sharedLinksEnabled,  bool tagsEnabled,  AvatarColor userAvatarColor,  bool showSupportBadge,  int minimumFaces)?  $default,) {final _that = this;
switch (_that) {
case _Preferences() when $default != null:
return $default(_that.foldersEnabled,_that.memoriesEnabled,_that.peopleEnabled,_that.ratingsEnabled,_that.sharedLinksEnabled,_that.tagsEnabled,_that.userAvatarColor,_that.showSupportBadge,_that.minimumFaces);case _:
  return null;

}
}

}

/// @nodoc


class _Preferences extends Preferences with DiagnosticableTreeMixin {
  const _Preferences({this.foldersEnabled = false, this.memoriesEnabled = true, this.peopleEnabled = true, this.ratingsEnabled = false, this.sharedLinksEnabled = true, this.tagsEnabled = false, this.userAvatarColor = AvatarColor.primary, this.showSupportBadge = true, this.minimumFaces = 3}): super._();
  

@override@JsonKey() final  bool foldersEnabled;
@override@JsonKey() final  bool memoriesEnabled;
@override@JsonKey() final  bool peopleEnabled;
@override@JsonKey() final  bool ratingsEnabled;
@override@JsonKey() final  bool sharedLinksEnabled;
@override@JsonKey() final  bool tagsEnabled;
@override@JsonKey() final  AvatarColor userAvatarColor;
@override@JsonKey() final  bool showSupportBadge;
@override@JsonKey() final  int minimumFaces;

/// Create a copy of Preferences
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreferencesCopyWith<_Preferences> get copyWith => __$PreferencesCopyWithImpl<_Preferences>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Preferences'))
    ..add(DiagnosticsProperty('foldersEnabled', foldersEnabled))..add(DiagnosticsProperty('memoriesEnabled', memoriesEnabled))..add(DiagnosticsProperty('peopleEnabled', peopleEnabled))..add(DiagnosticsProperty('ratingsEnabled', ratingsEnabled))..add(DiagnosticsProperty('sharedLinksEnabled', sharedLinksEnabled))..add(DiagnosticsProperty('tagsEnabled', tagsEnabled))..add(DiagnosticsProperty('userAvatarColor', userAvatarColor))..add(DiagnosticsProperty('showSupportBadge', showSupportBadge))..add(DiagnosticsProperty('minimumFaces', minimumFaces));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Preferences&&(identical(other.foldersEnabled, foldersEnabled) || other.foldersEnabled == foldersEnabled)&&(identical(other.memoriesEnabled, memoriesEnabled) || other.memoriesEnabled == memoriesEnabled)&&(identical(other.peopleEnabled, peopleEnabled) || other.peopleEnabled == peopleEnabled)&&(identical(other.ratingsEnabled, ratingsEnabled) || other.ratingsEnabled == ratingsEnabled)&&(identical(other.sharedLinksEnabled, sharedLinksEnabled) || other.sharedLinksEnabled == sharedLinksEnabled)&&(identical(other.tagsEnabled, tagsEnabled) || other.tagsEnabled == tagsEnabled)&&(identical(other.userAvatarColor, userAvatarColor) || other.userAvatarColor == userAvatarColor)&&(identical(other.showSupportBadge, showSupportBadge) || other.showSupportBadge == showSupportBadge)&&(identical(other.minimumFaces, minimumFaces) || other.minimumFaces == minimumFaces));
}


@override
int get hashCode => Object.hash(runtimeType,foldersEnabled,memoriesEnabled,peopleEnabled,ratingsEnabled,sharedLinksEnabled,tagsEnabled,userAvatarColor,showSupportBadge,minimumFaces);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Preferences(foldersEnabled: $foldersEnabled, memoriesEnabled: $memoriesEnabled, peopleEnabled: $peopleEnabled, ratingsEnabled: $ratingsEnabled, sharedLinksEnabled: $sharedLinksEnabled, tagsEnabled: $tagsEnabled, userAvatarColor: $userAvatarColor, showSupportBadge: $showSupportBadge, minimumFaces: $minimumFaces)';
}


}

/// @nodoc
abstract mixin class _$PreferencesCopyWith<$Res> implements $PreferencesCopyWith<$Res> {
  factory _$PreferencesCopyWith(_Preferences value, $Res Function(_Preferences) _then) = __$PreferencesCopyWithImpl;
@override @useResult
$Res call({
 bool foldersEnabled, bool memoriesEnabled, bool peopleEnabled, bool ratingsEnabled, bool sharedLinksEnabled, bool tagsEnabled, AvatarColor userAvatarColor, bool showSupportBadge, int minimumFaces
});




}
/// @nodoc
class __$PreferencesCopyWithImpl<$Res>
    implements _$PreferencesCopyWith<$Res> {
  __$PreferencesCopyWithImpl(this._self, this._then);

  final _Preferences _self;
  final $Res Function(_Preferences) _then;

/// Create a copy of Preferences
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foldersEnabled = null,Object? memoriesEnabled = null,Object? peopleEnabled = null,Object? ratingsEnabled = null,Object? sharedLinksEnabled = null,Object? tagsEnabled = null,Object? userAvatarColor = null,Object? showSupportBadge = null,Object? minimumFaces = null,}) {
  return _then(_Preferences(
foldersEnabled: null == foldersEnabled ? _self.foldersEnabled : foldersEnabled // ignore: cast_nullable_to_non_nullable
as bool,memoriesEnabled: null == memoriesEnabled ? _self.memoriesEnabled : memoriesEnabled // ignore: cast_nullable_to_non_nullable
as bool,peopleEnabled: null == peopleEnabled ? _self.peopleEnabled : peopleEnabled // ignore: cast_nullable_to_non_nullable
as bool,ratingsEnabled: null == ratingsEnabled ? _self.ratingsEnabled : ratingsEnabled // ignore: cast_nullable_to_non_nullable
as bool,sharedLinksEnabled: null == sharedLinksEnabled ? _self.sharedLinksEnabled : sharedLinksEnabled // ignore: cast_nullable_to_non_nullable
as bool,tagsEnabled: null == tagsEnabled ? _self.tagsEnabled : tagsEnabled // ignore: cast_nullable_to_non_nullable
as bool,userAvatarColor: null == userAvatarColor ? _self.userAvatarColor : userAvatarColor // ignore: cast_nullable_to_non_nullable
as AvatarColor,showSupportBadge: null == showSupportBadge ? _self.showSupportBadge : showSupportBadge // ignore: cast_nullable_to_non_nullable
as bool,minimumFaces: null == minimumFaces ? _self.minimumFaces : minimumFaces // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$License implements DiagnosticableTreeMixin {

 DateTime get activatedAt; String get activationKey; String get licenseKey;
/// Create a copy of License
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LicenseCopyWith<License> get copyWith => _$LicenseCopyWithImpl<License>(this as License, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'License'))
    ..add(DiagnosticsProperty('activatedAt', activatedAt))..add(DiagnosticsProperty('activationKey', activationKey))..add(DiagnosticsProperty('licenseKey', licenseKey));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is License&&(identical(other.activatedAt, activatedAt) || other.activatedAt == activatedAt)&&(identical(other.activationKey, activationKey) || other.activationKey == activationKey)&&(identical(other.licenseKey, licenseKey) || other.licenseKey == licenseKey));
}


@override
int get hashCode => Object.hash(runtimeType,activatedAt,activationKey,licenseKey);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'License(activatedAt: $activatedAt, activationKey: $activationKey, licenseKey: $licenseKey)';
}


}

/// @nodoc
abstract mixin class $LicenseCopyWith<$Res>  {
  factory $LicenseCopyWith(License value, $Res Function(License) _then) = _$LicenseCopyWithImpl;
@useResult
$Res call({
 DateTime activatedAt, String activationKey, String licenseKey
});




}
/// @nodoc
class _$LicenseCopyWithImpl<$Res>
    implements $LicenseCopyWith<$Res> {
  _$LicenseCopyWithImpl(this._self, this._then);

  final License _self;
  final $Res Function(License) _then;

/// Create a copy of License
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activatedAt = null,Object? activationKey = null,Object? licenseKey = null,}) {
  return _then(_self.copyWith(
activatedAt: null == activatedAt ? _self.activatedAt : activatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,activationKey: null == activationKey ? _self.activationKey : activationKey // ignore: cast_nullable_to_non_nullable
as String,licenseKey: null == licenseKey ? _self.licenseKey : licenseKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [License].
extension LicensePatterns on License {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _License value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _License() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _License value)  $default,){
final _that = this;
switch (_that) {
case _License():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _License value)?  $default,){
final _that = this;
switch (_that) {
case _License() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime activatedAt,  String activationKey,  String licenseKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _License() when $default != null:
return $default(_that.activatedAt,_that.activationKey,_that.licenseKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime activatedAt,  String activationKey,  String licenseKey)  $default,) {final _that = this;
switch (_that) {
case _License():
return $default(_that.activatedAt,_that.activationKey,_that.licenseKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime activatedAt,  String activationKey,  String licenseKey)?  $default,) {final _that = this;
switch (_that) {
case _License() when $default != null:
return $default(_that.activatedAt,_that.activationKey,_that.licenseKey);case _:
  return null;

}
}

}

/// @nodoc


class _License extends License with DiagnosticableTreeMixin {
  const _License({required this.activatedAt, required this.activationKey, required this.licenseKey}): super._();
  

@override final  DateTime activatedAt;
@override final  String activationKey;
@override final  String licenseKey;

/// Create a copy of License
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LicenseCopyWith<_License> get copyWith => __$LicenseCopyWithImpl<_License>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'License'))
    ..add(DiagnosticsProperty('activatedAt', activatedAt))..add(DiagnosticsProperty('activationKey', activationKey))..add(DiagnosticsProperty('licenseKey', licenseKey));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _License&&(identical(other.activatedAt, activatedAt) || other.activatedAt == activatedAt)&&(identical(other.activationKey, activationKey) || other.activationKey == activationKey)&&(identical(other.licenseKey, licenseKey) || other.licenseKey == licenseKey));
}


@override
int get hashCode => Object.hash(runtimeType,activatedAt,activationKey,licenseKey);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'License(activatedAt: $activatedAt, activationKey: $activationKey, licenseKey: $licenseKey)';
}


}

/// @nodoc
abstract mixin class _$LicenseCopyWith<$Res> implements $LicenseCopyWith<$Res> {
  factory _$LicenseCopyWith(_License value, $Res Function(_License) _then) = __$LicenseCopyWithImpl;
@override @useResult
$Res call({
 DateTime activatedAt, String activationKey, String licenseKey
});




}
/// @nodoc
class __$LicenseCopyWithImpl<$Res>
    implements _$LicenseCopyWith<$Res> {
  __$LicenseCopyWithImpl(this._self, this._then);

  final _License _self;
  final $Res Function(_License) _then;

/// Create a copy of License
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activatedAt = null,Object? activationKey = null,Object? licenseKey = null,}) {
  return _then(_License(
activatedAt: null == activatedAt ? _self.activatedAt : activatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,activationKey: null == activationKey ? _self.activationKey : activationKey // ignore: cast_nullable_to_non_nullable
as String,licenseKey: null == licenseKey ? _self.licenseKey : licenseKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$UserMetadata implements DiagnosticableTreeMixin {

 String get userId; UserMetadataKey get key; Onboarding? get onboarding; Preferences? get preferences; License? get license;
/// Create a copy of UserMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserMetadataCopyWith<UserMetadata> get copyWith => _$UserMetadataCopyWithImpl<UserMetadata>(this as UserMetadata, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserMetadata'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('key', key))..add(DiagnosticsProperty('onboarding', onboarding))..add(DiagnosticsProperty('preferences', preferences))..add(DiagnosticsProperty('license', license));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMetadata&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.key, key) || other.key == key)&&(identical(other.onboarding, onboarding) || other.onboarding == onboarding)&&(identical(other.preferences, preferences) || other.preferences == preferences)&&(identical(other.license, license) || other.license == license));
}


@override
int get hashCode => Object.hash(runtimeType,userId,key,onboarding,preferences,license);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserMetadata(userId: $userId, key: $key, onboarding: $onboarding, preferences: $preferences, license: $license)';
}


}

/// @nodoc
abstract mixin class $UserMetadataCopyWith<$Res>  {
  factory $UserMetadataCopyWith(UserMetadata value, $Res Function(UserMetadata) _then) = _$UserMetadataCopyWithImpl;
@useResult
$Res call({
 String userId, UserMetadataKey key, Onboarding? onboarding, Preferences? preferences, License? license
});


$OnboardingCopyWith<$Res>? get onboarding;$PreferencesCopyWith<$Res>? get preferences;$LicenseCopyWith<$Res>? get license;

}
/// @nodoc
class _$UserMetadataCopyWithImpl<$Res>
    implements $UserMetadataCopyWith<$Res> {
  _$UserMetadataCopyWithImpl(this._self, this._then);

  final UserMetadata _self;
  final $Res Function(UserMetadata) _then;

/// Create a copy of UserMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? key = null,Object? onboarding = freezed,Object? preferences = freezed,Object? license = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as UserMetadataKey,onboarding: freezed == onboarding ? _self.onboarding : onboarding // ignore: cast_nullable_to_non_nullable
as Onboarding?,preferences: freezed == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as Preferences?,license: freezed == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as License?,
  ));
}
/// Create a copy of UserMetadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnboardingCopyWith<$Res>? get onboarding {
    if (_self.onboarding == null) {
    return null;
  }

  return $OnboardingCopyWith<$Res>(_self.onboarding!, (value) {
    return _then(_self.copyWith(onboarding: value));
  });
}/// Create a copy of UserMetadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreferencesCopyWith<$Res>? get preferences {
    if (_self.preferences == null) {
    return null;
  }

  return $PreferencesCopyWith<$Res>(_self.preferences!, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}/// Create a copy of UserMetadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LicenseCopyWith<$Res>? get license {
    if (_self.license == null) {
    return null;
  }

  return $LicenseCopyWith<$Res>(_self.license!, (value) {
    return _then(_self.copyWith(license: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserMetadata].
extension UserMetadataPatterns on UserMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserMetadata value)  $default,){
final _that = this;
switch (_that) {
case _UserMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _UserMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  UserMetadataKey key,  Onboarding? onboarding,  Preferences? preferences,  License? license)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserMetadata() when $default != null:
return $default(_that.userId,_that.key,_that.onboarding,_that.preferences,_that.license);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  UserMetadataKey key,  Onboarding? onboarding,  Preferences? preferences,  License? license)  $default,) {final _that = this;
switch (_that) {
case _UserMetadata():
return $default(_that.userId,_that.key,_that.onboarding,_that.preferences,_that.license);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  UserMetadataKey key,  Onboarding? onboarding,  Preferences? preferences,  License? license)?  $default,) {final _that = this;
switch (_that) {
case _UserMetadata() when $default != null:
return $default(_that.userId,_that.key,_that.onboarding,_that.preferences,_that.license);case _:
  return null;

}
}

}

/// @nodoc


class _UserMetadata with DiagnosticableTreeMixin implements UserMetadata {
  const _UserMetadata({required this.userId, required this.key, this.onboarding, this.preferences, this.license}): assert(onboarding != null || preferences != null || license != null, 'One of onboarding, preferences and license must be provided');
  

@override final  String userId;
@override final  UserMetadataKey key;
@override final  Onboarding? onboarding;
@override final  Preferences? preferences;
@override final  License? license;

/// Create a copy of UserMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserMetadataCopyWith<_UserMetadata> get copyWith => __$UserMetadataCopyWithImpl<_UserMetadata>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserMetadata'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('key', key))..add(DiagnosticsProperty('onboarding', onboarding))..add(DiagnosticsProperty('preferences', preferences))..add(DiagnosticsProperty('license', license));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserMetadata&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.key, key) || other.key == key)&&(identical(other.onboarding, onboarding) || other.onboarding == onboarding)&&(identical(other.preferences, preferences) || other.preferences == preferences)&&(identical(other.license, license) || other.license == license));
}


@override
int get hashCode => Object.hash(runtimeType,userId,key,onboarding,preferences,license);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserMetadata(userId: $userId, key: $key, onboarding: $onboarding, preferences: $preferences, license: $license)';
}


}

/// @nodoc
abstract mixin class _$UserMetadataCopyWith<$Res> implements $UserMetadataCopyWith<$Res> {
  factory _$UserMetadataCopyWith(_UserMetadata value, $Res Function(_UserMetadata) _then) = __$UserMetadataCopyWithImpl;
@override @useResult
$Res call({
 String userId, UserMetadataKey key, Onboarding? onboarding, Preferences? preferences, License? license
});


@override $OnboardingCopyWith<$Res>? get onboarding;@override $PreferencesCopyWith<$Res>? get preferences;@override $LicenseCopyWith<$Res>? get license;

}
/// @nodoc
class __$UserMetadataCopyWithImpl<$Res>
    implements _$UserMetadataCopyWith<$Res> {
  __$UserMetadataCopyWithImpl(this._self, this._then);

  final _UserMetadata _self;
  final $Res Function(_UserMetadata) _then;

/// Create a copy of UserMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? key = null,Object? onboarding = freezed,Object? preferences = freezed,Object? license = freezed,}) {
  return _then(_UserMetadata(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as UserMetadataKey,onboarding: freezed == onboarding ? _self.onboarding : onboarding // ignore: cast_nullable_to_non_nullable
as Onboarding?,preferences: freezed == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as Preferences?,license: freezed == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as License?,
  ));
}

/// Create a copy of UserMetadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnboardingCopyWith<$Res>? get onboarding {
    if (_self.onboarding == null) {
    return null;
  }

  return $OnboardingCopyWith<$Res>(_self.onboarding!, (value) {
    return _then(_self.copyWith(onboarding: value));
  });
}/// Create a copy of UserMetadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreferencesCopyWith<$Res>? get preferences {
    if (_self.preferences == null) {
    return null;
  }

  return $PreferencesCopyWith<$Res>(_self.preferences!, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}/// Create a copy of UserMetadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LicenseCopyWith<$Res>? get license {
    if (_self.license == null) {
    return null;
  }

  return $LicenseCopyWith<$Res>(_self.license!, (value) {
    return _then(_self.copyWith(license: value));
  });
}
}

// dart format on
