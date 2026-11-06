//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PasskeyAuthenticationFinishDtoResponse {
  /// Returns a new [PasskeyAuthenticationFinishDtoResponse] instance.
  PasskeyAuthenticationFinishDtoResponse({
    required this.id,
    required this.response,
  });

  /// Credential ID
  String id;

  PasskeyAuthenticationFinishDtoResponseResponse response;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasskeyAuthenticationFinishDtoResponse &&
    other.id == id &&
    other.response == response;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (response.hashCode);

  @override
  String toString() => 'PasskeyAuthenticationFinishDtoResponse[id=$id, response=$response]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'response'] = this.response;
    return json;
  }

  /// Returns a new [PasskeyAuthenticationFinishDtoResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PasskeyAuthenticationFinishDtoResponse? fromJson(dynamic value) {
    upgradeDto(value, "PasskeyAuthenticationFinishDtoResponse");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PasskeyAuthenticationFinishDtoResponse(
        id: mapValueOfType<String>(json, r'id')!,
        response: PasskeyAuthenticationFinishDtoResponseResponse.fromJson(json[r'response'])!,
      );
    }
    return null;
  }

  static List<PasskeyAuthenticationFinishDtoResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PasskeyAuthenticationFinishDtoResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PasskeyAuthenticationFinishDtoResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PasskeyAuthenticationFinishDtoResponse> mapFromJson(dynamic json) {
    final map = <String, PasskeyAuthenticationFinishDtoResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PasskeyAuthenticationFinishDtoResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PasskeyAuthenticationFinishDtoResponse-objects as value to a dart map
  static Map<String, List<PasskeyAuthenticationFinishDtoResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PasskeyAuthenticationFinishDtoResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PasskeyAuthenticationFinishDtoResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'response',
  };
}

