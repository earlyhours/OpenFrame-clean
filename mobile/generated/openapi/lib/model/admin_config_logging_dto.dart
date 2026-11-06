//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigLoggingDto {
  /// Returns a new [AdminConfigLoggingDto] instance.
  AdminConfigLoggingDto({
    required this.enabled,
    required this.level,
  });

  /// Enabled
  bool enabled;

  LogLevel level;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigLoggingDto &&
    other.enabled == enabled &&
    other.level == level;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode) +
    (level.hashCode);

  @override
  String toString() => 'AdminConfigLoggingDto[enabled=$enabled, level=$level]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
      json[r'level'] = this.level;
    return json;
  }

  /// Returns a new [AdminConfigLoggingDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigLoggingDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigLoggingDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigLoggingDto(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        level: LogLevel.fromJson(json[r'level'])!,
      );
    }
    return null;
  }

  static List<AdminConfigLoggingDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigLoggingDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigLoggingDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigLoggingDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigLoggingDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigLoggingDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigLoggingDto-objects as value to a dart map
  static Map<String, List<AdminConfigLoggingDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigLoggingDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigLoggingDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
    'level',
  };
}

