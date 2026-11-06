//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserConfigGeneratedImageDto {
  /// Returns a new [UserConfigGeneratedImageDto] instance.
  UserConfigGeneratedImageDto({
    required this.size,
  });

  /// Size
  ///
  /// Minimum value: 1
  /// Maximum value: 9007199254740991
  int size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserConfigGeneratedImageDto &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (size.hashCode);

  @override
  String toString() => 'UserConfigGeneratedImageDto[size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'size'] = this.size;
    return json;
  }

  /// Returns a new [UserConfigGeneratedImageDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserConfigGeneratedImageDto? fromJson(dynamic value) {
    upgradeDto(value, "UserConfigGeneratedImageDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return UserConfigGeneratedImageDto(
        size: mapValueOfType<int>(json, r'size')!,
      );
    }
    return null;
  }

  static List<UserConfigGeneratedImageDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserConfigGeneratedImageDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserConfigGeneratedImageDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserConfigGeneratedImageDto> mapFromJson(dynamic json) {
    final map = <String, UserConfigGeneratedImageDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserConfigGeneratedImageDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserConfigGeneratedImageDto-objects as value to a dart map
  static Map<String, List<UserConfigGeneratedImageDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserConfigGeneratedImageDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserConfigGeneratedImageDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'size',
  };
}

