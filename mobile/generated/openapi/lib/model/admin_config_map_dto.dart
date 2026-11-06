//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigMapDto {
  /// Returns a new [AdminConfigMapDto] instance.
  AdminConfigMapDto({
    required this.darkStyle,
    required this.enabled,
    required this.lightStyle,
  });

  /// Dark map style URL
  String darkStyle;

  /// Enabled
  bool enabled;

  /// Light map style URL
  String lightStyle;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigMapDto &&
    other.darkStyle == darkStyle &&
    other.enabled == enabled &&
    other.lightStyle == lightStyle;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (darkStyle.hashCode) +
    (enabled.hashCode) +
    (lightStyle.hashCode);

  @override
  String toString() => 'AdminConfigMapDto[darkStyle=$darkStyle, enabled=$enabled, lightStyle=$lightStyle]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'darkStyle'] = this.darkStyle;
      json[r'enabled'] = this.enabled;
      json[r'lightStyle'] = this.lightStyle;
    return json;
  }

  /// Returns a new [AdminConfigMapDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigMapDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigMapDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigMapDto(
        darkStyle: mapValueOfType<String>(json, r'darkStyle')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        lightStyle: mapValueOfType<String>(json, r'lightStyle')!,
      );
    }
    return null;
  }

  static List<AdminConfigMapDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigMapDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigMapDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigMapDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigMapDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigMapDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigMapDto-objects as value to a dart map
  static Map<String, List<AdminConfigMapDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigMapDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigMapDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'darkStyle',
    'enabled',
    'lightStyle',
  };
}

