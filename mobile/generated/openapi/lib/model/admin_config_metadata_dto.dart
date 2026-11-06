//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigMetadataDto {
  /// Returns a new [AdminConfigMetadataDto] instance.
  AdminConfigMetadataDto({
    required this.faces,
  });

  AdminConfigFacesDto faces;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigMetadataDto &&
    other.faces == faces;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (faces.hashCode);

  @override
  String toString() => 'AdminConfigMetadataDto[faces=$faces]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'faces'] = this.faces;
    return json;
  }

  /// Returns a new [AdminConfigMetadataDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigMetadataDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigMetadataDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigMetadataDto(
        faces: AdminConfigFacesDto.fromJson(json[r'faces'])!,
      );
    }
    return null;
  }

  static List<AdminConfigMetadataDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigMetadataDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigMetadataDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigMetadataDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigMetadataDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigMetadataDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigMetadataDto-objects as value to a dart map
  static Map<String, List<AdminConfigMetadataDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigMetadataDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigMetadataDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'faces',
  };
}

