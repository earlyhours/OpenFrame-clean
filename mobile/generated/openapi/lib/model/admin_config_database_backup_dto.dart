//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigDatabaseBackupDto {
  /// Returns a new [AdminConfigDatabaseBackupDto] instance.
  AdminConfigDatabaseBackupDto({
    required this.cronExpression,
    required this.enabled,
    required this.keepLastAmount,
  });

  /// Cron expression
  String cronExpression;

  /// Enabled
  bool enabled;

  /// Keep last amount
  ///
  /// Minimum value: 1
  /// Maximum value: 9007199254740991
  int keepLastAmount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigDatabaseBackupDto &&
    other.cronExpression == cronExpression &&
    other.enabled == enabled &&
    other.keepLastAmount == keepLastAmount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cronExpression.hashCode) +
    (enabled.hashCode) +
    (keepLastAmount.hashCode);

  @override
  String toString() => 'AdminConfigDatabaseBackupDto[cronExpression=$cronExpression, enabled=$enabled, keepLastAmount=$keepLastAmount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'cronExpression'] = this.cronExpression;
      json[r'enabled'] = this.enabled;
      json[r'keepLastAmount'] = this.keepLastAmount;
    return json;
  }

  /// Returns a new [AdminConfigDatabaseBackupDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigDatabaseBackupDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigDatabaseBackupDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigDatabaseBackupDto(
        cronExpression: mapValueOfType<String>(json, r'cronExpression')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        keepLastAmount: mapValueOfType<int>(json, r'keepLastAmount')!,
      );
    }
    return null;
  }

  static List<AdminConfigDatabaseBackupDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigDatabaseBackupDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigDatabaseBackupDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigDatabaseBackupDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigDatabaseBackupDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigDatabaseBackupDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigDatabaseBackupDto-objects as value to a dart map
  static Map<String, List<AdminConfigDatabaseBackupDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigDatabaseBackupDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigDatabaseBackupDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'cronExpression',
    'enabled',
    'keepLastAmount',
  };
}

