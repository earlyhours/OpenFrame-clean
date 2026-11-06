//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigLibraryWatchDto {
  /// Returns a new [AdminConfigLibraryWatchDto] instance.
  AdminConfigLibraryWatchDto({
    required this.enabled,
  });

  /// Enabled
  bool enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigLibraryWatchDto &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode);

  @override
  String toString() => 'AdminConfigLibraryWatchDto[enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
    return json;
  }

  /// Returns a new [AdminConfigLibraryWatchDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigLibraryWatchDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigLibraryWatchDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigLibraryWatchDto(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
      );
    }
    return null;
  }

  static List<AdminConfigLibraryWatchDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigLibraryWatchDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigLibraryWatchDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigLibraryWatchDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigLibraryWatchDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigLibraryWatchDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigLibraryWatchDto-objects as value to a dart map
  static Map<String, List<AdminConfigLibraryWatchDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigLibraryWatchDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigLibraryWatchDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
  };
}

