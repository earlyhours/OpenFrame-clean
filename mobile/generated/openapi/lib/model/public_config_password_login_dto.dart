//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PublicConfigPasswordLoginDto {
  /// Returns a new [PublicConfigPasswordLoginDto] instance.
  PublicConfigPasswordLoginDto({
    required this.enabled,
  });

  /// Enabled
  bool enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicConfigPasswordLoginDto &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode);

  @override
  String toString() => 'PublicConfigPasswordLoginDto[enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
    return json;
  }

  /// Returns a new [PublicConfigPasswordLoginDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicConfigPasswordLoginDto? fromJson(dynamic value) {
    upgradeDto(value, "PublicConfigPasswordLoginDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PublicConfigPasswordLoginDto(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
      );
    }
    return null;
  }

  static List<PublicConfigPasswordLoginDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicConfigPasswordLoginDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicConfigPasswordLoginDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicConfigPasswordLoginDto> mapFromJson(dynamic json) {
    final map = <String, PublicConfigPasswordLoginDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicConfigPasswordLoginDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicConfigPasswordLoginDto-objects as value to a dart map
  static Map<String, List<PublicConfigPasswordLoginDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicConfigPasswordLoginDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicConfigPasswordLoginDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
  };
}

