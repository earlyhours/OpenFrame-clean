//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PasskeyAuthenticationFinishDtoResponseResponse {
  /// Returns a new [PasskeyAuthenticationFinishDtoResponseResponse] instance.
  PasskeyAuthenticationFinishDtoResponseResponse({
    this.userHandle = const Optional.absent(),
  });

  /// User handle
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<String?> userHandle;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasskeyAuthenticationFinishDtoResponseResponse &&
    other.userHandle == userHandle;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userHandle == null ? 0 : userHandle!.hashCode);

  @override
  String toString() => 'PasskeyAuthenticationFinishDtoResponseResponse[userHandle=$userHandle]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.userHandle.isPresent) {
      final value = this.userHandle.value;
      json[r'userHandle'] = value;
    }
    return json;
  }

  /// Returns a new [PasskeyAuthenticationFinishDtoResponseResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PasskeyAuthenticationFinishDtoResponseResponse? fromJson(dynamic value) {
    upgradeDto(value, "PasskeyAuthenticationFinishDtoResponseResponse");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PasskeyAuthenticationFinishDtoResponseResponse(
        userHandle: json.containsKey(r'userHandle') ? Optional.present(mapValueOfType<String>(json, r'userHandle')) : const Optional.absent(),
      );
    }
    return null;
  }

  static List<PasskeyAuthenticationFinishDtoResponseResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PasskeyAuthenticationFinishDtoResponseResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PasskeyAuthenticationFinishDtoResponseResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PasskeyAuthenticationFinishDtoResponseResponse> mapFromJson(dynamic json) {
    final map = <String, PasskeyAuthenticationFinishDtoResponseResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PasskeyAuthenticationFinishDtoResponseResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PasskeyAuthenticationFinishDtoResponseResponse-objects as value to a dart map
  static Map<String, List<PasskeyAuthenticationFinishDtoResponseResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PasskeyAuthenticationFinishDtoResponseResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PasskeyAuthenticationFinishDtoResponseResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

