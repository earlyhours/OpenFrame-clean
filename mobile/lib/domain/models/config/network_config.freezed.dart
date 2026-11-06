// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NetworkConfig {

 bool get autoEndpointSwitching; bool get automaticLanTransfer; bool get allowInsecureLanTransfer; String? get preferredWifiName; String? get localEndpoint; List<String> get externalEndpointList; Map<String, String> get customHeaders;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkConfig&&(identical(other.autoEndpointSwitching, autoEndpointSwitching) || other.autoEndpointSwitching == autoEndpointSwitching)&&(identical(other.automaticLanTransfer, automaticLanTransfer) || other.automaticLanTransfer == automaticLanTransfer)&&(identical(other.allowInsecureLanTransfer, allowInsecureLanTransfer) || other.allowInsecureLanTransfer == allowInsecureLanTransfer)&&(identical(other.preferredWifiName, preferredWifiName) || other.preferredWifiName == preferredWifiName)&&(identical(other.localEndpoint, localEndpoint) || other.localEndpoint == localEndpoint)&&const DeepCollectionEquality().equals(other.externalEndpointList, externalEndpointList)&&const DeepCollectionEquality().equals(other.customHeaders, customHeaders));
}


@override
int get hashCode => Object.hash(runtimeType,autoEndpointSwitching,automaticLanTransfer,allowInsecureLanTransfer,preferredWifiName,localEndpoint,const DeepCollectionEquality().hash(externalEndpointList),const DeepCollectionEquality().hash(customHeaders));

@override
String toString() {
  return 'NetworkConfig(autoEndpointSwitching: $autoEndpointSwitching, automaticLanTransfer: $automaticLanTransfer, allowInsecureLanTransfer: $allowInsecureLanTransfer, preferredWifiName: $preferredWifiName, localEndpoint: $localEndpoint, externalEndpointList: $externalEndpointList, customHeaders: $customHeaders)';
}


}




/// Adds pattern-matching-related methods to [NetworkConfig].
extension NetworkConfigPatterns on NetworkConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkConfig value)  $default,){
final _that = this;
switch (_that) {
case _NetworkConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkConfig value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool autoEndpointSwitching,  bool automaticLanTransfer,  bool allowInsecureLanTransfer,  String? preferredWifiName,  String? localEndpoint,  List<String> externalEndpointList,  Map<String, String> customHeaders)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkConfig() when $default != null:
return $default(_that.autoEndpointSwitching,_that.automaticLanTransfer,_that.allowInsecureLanTransfer,_that.preferredWifiName,_that.localEndpoint,_that.externalEndpointList,_that.customHeaders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool autoEndpointSwitching,  bool automaticLanTransfer,  bool allowInsecureLanTransfer,  String? preferredWifiName,  String? localEndpoint,  List<String> externalEndpointList,  Map<String, String> customHeaders)  $default,) {final _that = this;
switch (_that) {
case _NetworkConfig():
return $default(_that.autoEndpointSwitching,_that.automaticLanTransfer,_that.allowInsecureLanTransfer,_that.preferredWifiName,_that.localEndpoint,_that.externalEndpointList,_that.customHeaders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool autoEndpointSwitching,  bool automaticLanTransfer,  bool allowInsecureLanTransfer,  String? preferredWifiName,  String? localEndpoint,  List<String> externalEndpointList,  Map<String, String> customHeaders)?  $default,) {final _that = this;
switch (_that) {
case _NetworkConfig() when $default != null:
return $default(_that.autoEndpointSwitching,_that.automaticLanTransfer,_that.allowInsecureLanTransfer,_that.preferredWifiName,_that.localEndpoint,_that.externalEndpointList,_that.customHeaders);case _:
  return null;

}
}

}

/// @nodoc


class _NetworkConfig extends NetworkConfig {
  const _NetworkConfig({this.autoEndpointSwitching = false, this.automaticLanTransfer = true, this.allowInsecureLanTransfer = false, this.preferredWifiName, this.localEndpoint, final  List<String> externalEndpointList = const [], final  Map<String, String> customHeaders = const {}}): _externalEndpointList = externalEndpointList,_customHeaders = customHeaders,super._();
  

@override@JsonKey() final  bool autoEndpointSwitching;
@override@JsonKey() final  bool automaticLanTransfer;
@override@JsonKey() final  bool allowInsecureLanTransfer;
@override final  String? preferredWifiName;
@override final  String? localEndpoint;
 final  List<String> _externalEndpointList;
@override@JsonKey() List<String> get externalEndpointList {
  if (_externalEndpointList is EqualUnmodifiableListView) return _externalEndpointList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_externalEndpointList);
}

 final  Map<String, String> _customHeaders;
@override@JsonKey() Map<String, String> get customHeaders {
  if (_customHeaders is EqualUnmodifiableMapView) return _customHeaders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_customHeaders);
}





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkConfig&&(identical(other.autoEndpointSwitching, autoEndpointSwitching) || other.autoEndpointSwitching == autoEndpointSwitching)&&(identical(other.automaticLanTransfer, automaticLanTransfer) || other.automaticLanTransfer == automaticLanTransfer)&&(identical(other.allowInsecureLanTransfer, allowInsecureLanTransfer) || other.allowInsecureLanTransfer == allowInsecureLanTransfer)&&(identical(other.preferredWifiName, preferredWifiName) || other.preferredWifiName == preferredWifiName)&&(identical(other.localEndpoint, localEndpoint) || other.localEndpoint == localEndpoint)&&const DeepCollectionEquality().equals(other._externalEndpointList, _externalEndpointList)&&const DeepCollectionEquality().equals(other._customHeaders, _customHeaders));
}


@override
int get hashCode => Object.hash(runtimeType,autoEndpointSwitching,automaticLanTransfer,allowInsecureLanTransfer,preferredWifiName,localEndpoint,const DeepCollectionEquality().hash(_externalEndpointList),const DeepCollectionEquality().hash(_customHeaders));

@override
String toString() {
  return 'NetworkConfig(autoEndpointSwitching: $autoEndpointSwitching, automaticLanTransfer: $automaticLanTransfer, allowInsecureLanTransfer: $allowInsecureLanTransfer, preferredWifiName: $preferredWifiName, localEndpoint: $localEndpoint, externalEndpointList: $externalEndpointList, customHeaders: $customHeaders)';
}


}




// dart format on
