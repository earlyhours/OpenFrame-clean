//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigIntegrityChecksumJobDto {
  /// Returns a new [AdminConfigIntegrityChecksumJobDto] instance.
  AdminConfigIntegrityChecksumJobDto({
    required this.cronExpression,
    required this.enabled,
    required this.percentageLimit,
    required this.timeLimit,
  });

  /// Cron expression for when the integrity check should run
  String cronExpression;

  /// Enabled
  bool enabled;

  /// Percentage limit of the integrity checksum job
  ///
  /// Minimum value: 0
  /// Maximum value: 1
  double percentageLimit;

  /// How long the integrity checksum job may run for
  ///
  /// Minimum value: 0
  /// Maximum value: 9007199254740991
  int timeLimit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigIntegrityChecksumJobDto &&
    other.cronExpression == cronExpression &&
    other.enabled == enabled &&
    other.percentageLimit == percentageLimit &&
    other.timeLimit == timeLimit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cronExpression.hashCode) +
    (enabled.hashCode) +
    (percentageLimit.hashCode) +
    (timeLimit.hashCode);

  @override
  String toString() => 'AdminConfigIntegrityChecksumJobDto[cronExpression=$cronExpression, enabled=$enabled, percentageLimit=$percentageLimit, timeLimit=$timeLimit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'cronExpression'] = this.cronExpression;
      json[r'enabled'] = this.enabled;
      json[r'percentageLimit'] = this.percentageLimit;
      json[r'timeLimit'] = this.timeLimit;
    return json;
  }

  /// Returns a new [AdminConfigIntegrityChecksumJobDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigIntegrityChecksumJobDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigIntegrityChecksumJobDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigIntegrityChecksumJobDto(
        cronExpression: mapValueOfType<String>(json, r'cronExpression')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        percentageLimit: mapValueOfType<double>(json, r'percentageLimit')!,
        timeLimit: mapValueOfType<int>(json, r'timeLimit')!,
      );
    }
    return null;
  }

  static List<AdminConfigIntegrityChecksumJobDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigIntegrityChecksumJobDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigIntegrityChecksumJobDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigIntegrityChecksumJobDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigIntegrityChecksumJobDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigIntegrityChecksumJobDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigIntegrityChecksumJobDto-objects as value to a dart map
  static Map<String, List<AdminConfigIntegrityChecksumJobDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigIntegrityChecksumJobDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigIntegrityChecksumJobDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'cronExpression',
    'enabled',
    'percentageLimit',
    'timeLimit',
  };
}

