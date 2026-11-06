//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigClipDto {
  /// Returns a new [AdminConfigClipDto] instance.
  AdminConfigClipDto({
    required this.enabled,
    required this.modelName,
  });

  /// Whether the task is enabled
  bool enabled;

  /// Name of the model to use
  String modelName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigClipDto &&
    other.enabled == enabled &&
    other.modelName == modelName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode) +
    (modelName.hashCode);

  @override
  String toString() => 'AdminConfigClipDto[enabled=$enabled, modelName=$modelName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
      json[r'modelName'] = this.modelName;
    return json;
  }

  /// Returns a new [AdminConfigClipDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigClipDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigClipDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigClipDto(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        modelName: mapValueOfType<String>(json, r'modelName')!,
      );
    }
    return null;
  }

  static List<AdminConfigClipDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigClipDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigClipDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigClipDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigClipDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigClipDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigClipDto-objects as value to a dart map
  static Map<String, List<AdminConfigClipDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigClipDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigClipDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
    'modelName',
  };
}

