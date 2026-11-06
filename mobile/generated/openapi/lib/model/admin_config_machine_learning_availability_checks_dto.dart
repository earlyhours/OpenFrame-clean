//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigMachineLearningAvailabilityChecksDto {
  /// Returns a new [AdminConfigMachineLearningAvailabilityChecksDto] instance.
  AdminConfigMachineLearningAvailabilityChecksDto({
    required this.enabled,
    required this.interval,
    required this.timeout,
  });

  /// Enabled
  bool enabled;

  /// Minimum value: -9007199254740991
  /// Maximum value: 9007199254740991
  int interval;

  /// Minimum value: -9007199254740991
  /// Maximum value: 9007199254740991
  int timeout;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigMachineLearningAvailabilityChecksDto &&
    other.enabled == enabled &&
    other.interval == interval &&
    other.timeout == timeout;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode) +
    (interval.hashCode) +
    (timeout.hashCode);

  @override
  String toString() => 'AdminConfigMachineLearningAvailabilityChecksDto[enabled=$enabled, interval=$interval, timeout=$timeout]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
      json[r'interval'] = this.interval;
      json[r'timeout'] = this.timeout;
    return json;
  }

  /// Returns a new [AdminConfigMachineLearningAvailabilityChecksDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigMachineLearningAvailabilityChecksDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigMachineLearningAvailabilityChecksDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigMachineLearningAvailabilityChecksDto(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        interval: mapValueOfType<int>(json, r'interval')!,
        timeout: mapValueOfType<int>(json, r'timeout')!,
      );
    }
    return null;
  }

  static List<AdminConfigMachineLearningAvailabilityChecksDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigMachineLearningAvailabilityChecksDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigMachineLearningAvailabilityChecksDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigMachineLearningAvailabilityChecksDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigMachineLearningAvailabilityChecksDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigMachineLearningAvailabilityChecksDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigMachineLearningAvailabilityChecksDto-objects as value to a dart map
  static Map<String, List<AdminConfigMachineLearningAvailabilityChecksDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigMachineLearningAvailabilityChecksDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigMachineLearningAvailabilityChecksDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
    'interval',
    'timeout',
  };
}

