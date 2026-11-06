//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigNewVersionCheckDto {
  /// Returns a new [AdminConfigNewVersionCheckDto] instance.
  AdminConfigNewVersionCheckDto({
    required this.channel,
    required this.enabled,
  });

  ReleaseChannel channel;

  /// Enabled
  bool enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigNewVersionCheckDto &&
    other.channel == channel &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channel.hashCode) +
    (enabled.hashCode);

  @override
  String toString() => 'AdminConfigNewVersionCheckDto[channel=$channel, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'channel'] = this.channel;
      json[r'enabled'] = this.enabled;
    return json;
  }

  /// Returns a new [AdminConfigNewVersionCheckDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigNewVersionCheckDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigNewVersionCheckDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigNewVersionCheckDto(
        channel: ReleaseChannel.fromJson(json[r'channel'])!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
      );
    }
    return null;
  }

  static List<AdminConfigNewVersionCheckDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigNewVersionCheckDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigNewVersionCheckDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigNewVersionCheckDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigNewVersionCheckDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigNewVersionCheckDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigNewVersionCheckDto-objects as value to a dart map
  static Map<String, List<AdminConfigNewVersionCheckDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigNewVersionCheckDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigNewVersionCheckDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'channel',
    'enabled',
  };
}

