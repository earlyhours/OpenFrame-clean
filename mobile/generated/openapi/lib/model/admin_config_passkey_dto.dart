//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigPasskeyDto {
  /// Returns a new [AdminConfigPasskeyDto] instance.
  AdminConfigPasskeyDto({
    this.additionalDomains = const [],
    required this.domain,
    required this.enabled,
  });

  /// Additional domains
  List<String> additionalDomains;

  /// Passkey domain
  String? domain;

  /// Enabled
  bool enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigPasskeyDto &&
    _deepEquality.equals(other.additionalDomains, additionalDomains) &&
    other.domain == domain &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (additionalDomains.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (enabled.hashCode);

  @override
  String toString() => 'AdminConfigPasskeyDto[additionalDomains=$additionalDomains, domain=$domain, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'additionalDomains'] = this.additionalDomains;
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
      json[r'enabled'] = this.enabled;
    return json;
  }

  /// Returns a new [AdminConfigPasskeyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigPasskeyDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigPasskeyDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigPasskeyDto(
        additionalDomains: json[r'additionalDomains'] is Iterable
            ? (json[r'additionalDomains'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        domain: mapValueOfType<String>(json, r'domain'),
        enabled: mapValueOfType<bool>(json, r'enabled')!,
      );
    }
    return null;
  }

  static List<AdminConfigPasskeyDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigPasskeyDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigPasskeyDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigPasskeyDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigPasskeyDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigPasskeyDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigPasskeyDto-objects as value to a dart map
  static Map<String, List<AdminConfigPasskeyDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigPasskeyDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigPasskeyDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'additionalDomains',
    'domain',
    'enabled',
  };
}

