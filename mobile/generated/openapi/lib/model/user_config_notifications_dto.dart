//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserConfigNotificationsDto {
  /// Returns a new [UserConfigNotificationsDto] instance.
  UserConfigNotificationsDto({
    required this.smtp,
  });

  UserConfigSmtpDto smtp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserConfigNotificationsDto &&
    other.smtp == smtp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (smtp.hashCode);

  @override
  String toString() => 'UserConfigNotificationsDto[smtp=$smtp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'smtp'] = this.smtp;
    return json;
  }

  /// Returns a new [UserConfigNotificationsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserConfigNotificationsDto? fromJson(dynamic value) {
    upgradeDto(value, "UserConfigNotificationsDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return UserConfigNotificationsDto(
        smtp: UserConfigSmtpDto.fromJson(json[r'smtp'])!,
      );
    }
    return null;
  }

  static List<UserConfigNotificationsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserConfigNotificationsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserConfigNotificationsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserConfigNotificationsDto> mapFromJson(dynamic json) {
    final map = <String, UserConfigNotificationsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserConfigNotificationsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserConfigNotificationsDto-objects as value to a dart map
  static Map<String, List<UserConfigNotificationsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserConfigNotificationsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserConfigNotificationsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'smtp',
  };
}

