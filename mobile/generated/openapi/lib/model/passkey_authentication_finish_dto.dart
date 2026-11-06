//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PasskeyAuthenticationFinishDto {
  /// Returns a new [PasskeyAuthenticationFinishDto] instance.
  PasskeyAuthenticationFinishDto({
    required this.response,
  });

  PasskeyAuthenticationFinishDtoResponse response;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasskeyAuthenticationFinishDto &&
    other.response == response;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (response.hashCode);

  @override
  String toString() => 'PasskeyAuthenticationFinishDto[response=$response]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'response'] = this.response;
    return json;
  }

  /// Returns a new [PasskeyAuthenticationFinishDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PasskeyAuthenticationFinishDto? fromJson(dynamic value) {
    upgradeDto(value, "PasskeyAuthenticationFinishDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PasskeyAuthenticationFinishDto(
        response: PasskeyAuthenticationFinishDtoResponse.fromJson(json[r'response'])!,
      );
    }
    return null;
  }

  static List<PasskeyAuthenticationFinishDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PasskeyAuthenticationFinishDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PasskeyAuthenticationFinishDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PasskeyAuthenticationFinishDto> mapFromJson(dynamic json) {
    final map = <String, PasskeyAuthenticationFinishDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PasskeyAuthenticationFinishDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PasskeyAuthenticationFinishDto-objects as value to a dart map
  static Map<String, List<PasskeyAuthenticationFinishDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PasskeyAuthenticationFinishDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PasskeyAuthenticationFinishDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'response',
  };
}

