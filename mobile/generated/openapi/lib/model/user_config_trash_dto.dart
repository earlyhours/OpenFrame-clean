//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserConfigTrashDto {
  /// Returns a new [UserConfigTrashDto] instance.
  UserConfigTrashDto({
    required this.days,
    required this.enabled,
  });

  /// Days
  ///
  /// Minimum value: 0
  /// Maximum value: 9007199254740991
  int days;

  /// Enabled
  bool enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserConfigTrashDto &&
    other.days == days &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (days.hashCode) +
    (enabled.hashCode);

  @override
  String toString() => 'UserConfigTrashDto[days=$days, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'days'] = this.days;
      json[r'enabled'] = this.enabled;
    return json;
  }

  /// Returns a new [UserConfigTrashDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserConfigTrashDto? fromJson(dynamic value) {
    upgradeDto(value, "UserConfigTrashDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return UserConfigTrashDto(
        days: mapValueOfType<int>(json, r'days')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
      );
    }
    return null;
  }

  static List<UserConfigTrashDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserConfigTrashDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserConfigTrashDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserConfigTrashDto> mapFromJson(dynamic json) {
    final map = <String, UserConfigTrashDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserConfigTrashDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserConfigTrashDto-objects as value to a dart map
  static Map<String, List<UserConfigTrashDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserConfigTrashDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserConfigTrashDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'days',
    'enabled',
  };
}

