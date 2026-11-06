//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigReverseGeocodingDto {
  /// Returns a new [AdminConfigReverseGeocodingDto] instance.
  AdminConfigReverseGeocodingDto({
    required this.enabled,
  });

  /// Enabled
  bool enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigReverseGeocodingDto &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode);

  @override
  String toString() => 'AdminConfigReverseGeocodingDto[enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
    return json;
  }

  /// Returns a new [AdminConfigReverseGeocodingDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigReverseGeocodingDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigReverseGeocodingDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigReverseGeocodingDto(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
      );
    }
    return null;
  }

  static List<AdminConfigReverseGeocodingDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigReverseGeocodingDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigReverseGeocodingDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigReverseGeocodingDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigReverseGeocodingDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigReverseGeocodingDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigReverseGeocodingDto-objects as value to a dart map
  static Map<String, List<AdminConfigReverseGeocodingDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigReverseGeocodingDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigReverseGeocodingDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
  };
}

