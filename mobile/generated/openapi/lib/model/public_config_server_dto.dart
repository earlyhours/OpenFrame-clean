//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PublicConfigServerDto {
  /// Returns a new [PublicConfigServerDto] instance.
  PublicConfigServerDto({
    required this.loginPageMessage,
  });

  /// Login page message
  String loginPageMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicConfigServerDto &&
    other.loginPageMessage == loginPageMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (loginPageMessage.hashCode);

  @override
  String toString() => 'PublicConfigServerDto[loginPageMessage=$loginPageMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'loginPageMessage'] = this.loginPageMessage;
    return json;
  }

  /// Returns a new [PublicConfigServerDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicConfigServerDto? fromJson(dynamic value) {
    upgradeDto(value, "PublicConfigServerDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PublicConfigServerDto(
        loginPageMessage: mapValueOfType<String>(json, r'loginPageMessage')!,
      );
    }
    return null;
  }

  static List<PublicConfigServerDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicConfigServerDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicConfigServerDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicConfigServerDto> mapFromJson(dynamic json) {
    final map = <String, PublicConfigServerDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicConfigServerDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicConfigServerDto-objects as value to a dart map
  static Map<String, List<PublicConfigServerDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicConfigServerDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicConfigServerDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'loginPageMessage',
  };
}

