//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigStorageTemplateDto {
  /// Returns a new [AdminConfigStorageTemplateDto] instance.
  AdminConfigStorageTemplateDto({
    required this.enabled,
    required this.hashVerificationEnabled,
    required this.template,
  });

  /// Enabled
  bool enabled;

  /// Hash verification enabled
  bool hashVerificationEnabled;

  /// Template
  String template;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigStorageTemplateDto &&
    other.enabled == enabled &&
    other.hashVerificationEnabled == hashVerificationEnabled &&
    other.template == template;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode) +
    (hashVerificationEnabled.hashCode) +
    (template.hashCode);

  @override
  String toString() => 'AdminConfigStorageTemplateDto[enabled=$enabled, hashVerificationEnabled=$hashVerificationEnabled, template=$template]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
      json[r'hashVerificationEnabled'] = this.hashVerificationEnabled;
      json[r'template'] = this.template;
    return json;
  }

  /// Returns a new [AdminConfigStorageTemplateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigStorageTemplateDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigStorageTemplateDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigStorageTemplateDto(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        hashVerificationEnabled: mapValueOfType<bool>(json, r'hashVerificationEnabled')!,
        template: mapValueOfType<String>(json, r'template')!,
      );
    }
    return null;
  }

  static List<AdminConfigStorageTemplateDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigStorageTemplateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigStorageTemplateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigStorageTemplateDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigStorageTemplateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigStorageTemplateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigStorageTemplateDto-objects as value to a dart map
  static Map<String, List<AdminConfigStorageTemplateDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigStorageTemplateDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigStorageTemplateDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
    'hashVerificationEnabled',
    'template',
  };
}

