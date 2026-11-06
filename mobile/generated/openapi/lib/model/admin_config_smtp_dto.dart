//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigSmtpDto {
  /// Returns a new [AdminConfigSmtpDto] instance.
  AdminConfigSmtpDto({
    required this.enabled,
    required this.from,
    required this.replyTo,
    required this.transport,
  });

  /// Whether SMTP email notifications are enabled
  bool enabled;

  /// Email address to send from
  String from;

  /// Email address for replies
  String replyTo;

  AdminConfigSmtpTransportDto transport;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigSmtpDto &&
    other.enabled == enabled &&
    other.from == from &&
    other.replyTo == replyTo &&
    other.transport == transport;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode) +
    (from.hashCode) +
    (replyTo.hashCode) +
    (transport.hashCode);

  @override
  String toString() => 'AdminConfigSmtpDto[enabled=$enabled, from=$from, replyTo=$replyTo, transport=$transport]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
      json[r'from'] = this.from;
      json[r'replyTo'] = this.replyTo;
      json[r'transport'] = this.transport;
    return json;
  }

  /// Returns a new [AdminConfigSmtpDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigSmtpDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigSmtpDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigSmtpDto(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        from: mapValueOfType<String>(json, r'from')!,
        replyTo: mapValueOfType<String>(json, r'replyTo')!,
        transport: AdminConfigSmtpTransportDto.fromJson(json[r'transport'])!,
      );
    }
    return null;
  }

  static List<AdminConfigSmtpDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigSmtpDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigSmtpDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigSmtpDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigSmtpDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigSmtpDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigSmtpDto-objects as value to a dart map
  static Map<String, List<AdminConfigSmtpDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigSmtpDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigSmtpDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
    'from',
    'replyTo',
    'transport',
  };
}

