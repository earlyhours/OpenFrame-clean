//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigJobSettingsDto {
  /// Returns a new [AdminConfigJobSettingsDto] instance.
  AdminConfigJobSettingsDto({
    required this.concurrency,
  });

  /// Concurrency
  ///
  /// Minimum value: 1
  /// Maximum value: 9007199254740991
  int concurrency;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigJobSettingsDto &&
    other.concurrency == concurrency;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (concurrency.hashCode);

  @override
  String toString() => 'AdminConfigJobSettingsDto[concurrency=$concurrency]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'concurrency'] = this.concurrency;
    return json;
  }

  /// Returns a new [AdminConfigJobSettingsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigJobSettingsDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigJobSettingsDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigJobSettingsDto(
        concurrency: mapValueOfType<int>(json, r'concurrency')!,
      );
    }
    return null;
  }

  static List<AdminConfigJobSettingsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigJobSettingsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigJobSettingsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigJobSettingsDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigJobSettingsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigJobSettingsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigJobSettingsDto-objects as value to a dart map
  static Map<String, List<AdminConfigJobSettingsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigJobSettingsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigJobSettingsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'concurrency',
  };
}

