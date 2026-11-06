//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigTrashDto {
  /// Returns a new [AdminConfigTrashDto] instance.
  AdminConfigTrashDto({
    required this.days,
    required this.enabled,
  });

  /// Days
  ///
  /// Minimum value: 0
  /// Maximum value: 9007199254740991
  int days;

  /// Enabled
  bool enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigTrashDto &&
    other.days == days &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (days.hashCode) +
    (enabled.hashCode);

  @override
  String toString() => 'AdminConfigTrashDto[days=$days, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'days'] = this.days;
      json[r'enabled'] = this.enabled;
    return json;
  }

  /// Returns a new [AdminConfigTrashDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigTrashDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigTrashDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigTrashDto(
        days: mapValueOfType<int>(json, r'days')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
      );
    }
    return null;
  }

  static List<AdminConfigTrashDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigTrashDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigTrashDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigTrashDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigTrashDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigTrashDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigTrashDto-objects as value to a dart map
  static Map<String, List<AdminConfigTrashDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigTrashDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigTrashDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'days',
    'enabled',
  };
}

