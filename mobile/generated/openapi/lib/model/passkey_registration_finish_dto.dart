//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PasskeyRegistrationFinishDto {
  /// Returns a new [PasskeyRegistrationFinishDto] instance.
  PasskeyRegistrationFinishDto({
    this.name = const Optional.absent(),
    required this.response,
  });

  /// Passkey name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<String?> name;

  /// Response returned by @simplewebauthn/browser's `startAuthentication()`
  Object? response;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasskeyRegistrationFinishDto &&
    other.name == name &&
    other.response == response;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (response == null ? 0 : response!.hashCode);

  @override
  String toString() => 'PasskeyRegistrationFinishDto[name=$name, response=$response]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name.isPresent) {
      final value = this.name.value;
      json[r'name'] = value;
    }
    if (this.response != null) {
      json[r'response'] = this.response;
    } else {
      json[r'response'] = null;
    }
    return json;
  }

  /// Returns a new [PasskeyRegistrationFinishDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PasskeyRegistrationFinishDto? fromJson(dynamic value) {
    upgradeDto(value, "PasskeyRegistrationFinishDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PasskeyRegistrationFinishDto(
        name: json.containsKey(r'name') ? Optional.present(mapValueOfType<String>(json, r'name')) : const Optional.absent(),
        response: mapValueOfType<Object>(json, r'response'),
      );
    }
    return null;
  }

  static List<PasskeyRegistrationFinishDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PasskeyRegistrationFinishDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PasskeyRegistrationFinishDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PasskeyRegistrationFinishDto> mapFromJson(dynamic json) {
    final map = <String, PasskeyRegistrationFinishDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PasskeyRegistrationFinishDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PasskeyRegistrationFinishDto-objects as value to a dart map
  static Map<String, List<PasskeyRegistrationFinishDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PasskeyRegistrationFinishDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PasskeyRegistrationFinishDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'response',
  };
}

