//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigGeneratedFullsizeImageDto {
  /// Returns a new [AdminConfigGeneratedFullsizeImageDto] instance.
  AdminConfigGeneratedFullsizeImageDto({
    required this.enabled,
    required this.format,
    this.progressive = const Optional.absent(),
    required this.quality,
  });

  /// Enabled
  bool enabled;

  ImageFormat format;

  /// Progressive
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<bool?> progressive;

  /// Quality
  ///
  /// Minimum value: 1
  /// Maximum value: 100
  int quality;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigGeneratedFullsizeImageDto &&
    other.enabled == enabled &&
    other.format == format &&
    other.progressive == progressive &&
    other.quality == quality;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode) +
    (format.hashCode) +
    (progressive == null ? 0 : progressive!.hashCode) +
    (quality.hashCode);

  @override
  String toString() => 'AdminConfigGeneratedFullsizeImageDto[enabled=$enabled, format=$format, progressive=$progressive, quality=$quality]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
      json[r'format'] = this.format;
    if (this.progressive.isPresent) {
      final value = this.progressive.value;
      json[r'progressive'] = value;
    }
      json[r'quality'] = this.quality;
    return json;
  }

  /// Returns a new [AdminConfigGeneratedFullsizeImageDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigGeneratedFullsizeImageDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigGeneratedFullsizeImageDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigGeneratedFullsizeImageDto(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        format: ImageFormat.fromJson(json[r'format'])!,
        progressive: json.containsKey(r'progressive') ? Optional.present(mapValueOfType<bool>(json, r'progressive')) : const Optional.absent(),
        quality: mapValueOfType<int>(json, r'quality')!,
      );
    }
    return null;
  }

  static List<AdminConfigGeneratedFullsizeImageDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigGeneratedFullsizeImageDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigGeneratedFullsizeImageDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigGeneratedFullsizeImageDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigGeneratedFullsizeImageDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigGeneratedFullsizeImageDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigGeneratedFullsizeImageDto-objects as value to a dart map
  static Map<String, List<AdminConfigGeneratedFullsizeImageDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigGeneratedFullsizeImageDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigGeneratedFullsizeImageDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
    'format',
    'quality',
  };
}

