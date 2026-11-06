//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserConfigUserDto {
  /// Returns a new [UserConfigUserDto] instance.
  UserConfigUserDto({
    required this.deleteDelay,
  });

  /// Delete delay
  ///
  /// Minimum value: 1
  /// Maximum value: 9007199254740991
  int deleteDelay;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserConfigUserDto &&
    other.deleteDelay == deleteDelay;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deleteDelay.hashCode);

  @override
  String toString() => 'UserConfigUserDto[deleteDelay=$deleteDelay]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'deleteDelay'] = this.deleteDelay;
    return json;
  }

  /// Returns a new [UserConfigUserDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserConfigUserDto? fromJson(dynamic value) {
    upgradeDto(value, "UserConfigUserDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return UserConfigUserDto(
        deleteDelay: mapValueOfType<int>(json, r'deleteDelay')!,
      );
    }
    return null;
  }

  static List<UserConfigUserDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserConfigUserDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserConfigUserDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserConfigUserDto> mapFromJson(dynamic json) {
    final map = <String, UserConfigUserDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserConfigUserDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserConfigUserDto-objects as value to a dart map
  static Map<String, List<UserConfigUserDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserConfigUserDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserConfigUserDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'deleteDelay',
  };
}

