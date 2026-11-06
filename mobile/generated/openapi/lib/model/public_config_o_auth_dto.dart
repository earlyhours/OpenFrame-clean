//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PublicConfigOAuthDto {
  /// Returns a new [PublicConfigOAuthDto] instance.
  PublicConfigOAuthDto({
    required this.autoLaunch,
    required this.buttonText,
    required this.enabled,
  });

  /// Auto launch
  bool autoLaunch;

  /// Button text
  String buttonText;

  /// Enabled
  bool enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicConfigOAuthDto &&
    other.autoLaunch == autoLaunch &&
    other.buttonText == buttonText &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (autoLaunch.hashCode) +
    (buttonText.hashCode) +
    (enabled.hashCode);

  @override
  String toString() => 'PublicConfigOAuthDto[autoLaunch=$autoLaunch, buttonText=$buttonText, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'autoLaunch'] = this.autoLaunch;
      json[r'buttonText'] = this.buttonText;
      json[r'enabled'] = this.enabled;
    return json;
  }

  /// Returns a new [PublicConfigOAuthDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicConfigOAuthDto? fromJson(dynamic value) {
    upgradeDto(value, "PublicConfigOAuthDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PublicConfigOAuthDto(
        autoLaunch: mapValueOfType<bool>(json, r'autoLaunch')!,
        buttonText: mapValueOfType<String>(json, r'buttonText')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
      );
    }
    return null;
  }

  static List<PublicConfigOAuthDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicConfigOAuthDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicConfigOAuthDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicConfigOAuthDto> mapFromJson(dynamic json) {
    final map = <String, PublicConfigOAuthDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicConfigOAuthDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicConfigOAuthDto-objects as value to a dart map
  static Map<String, List<PublicConfigOAuthDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicConfigOAuthDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicConfigOAuthDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'autoLaunch',
    'buttonText',
    'enabled',
  };
}

