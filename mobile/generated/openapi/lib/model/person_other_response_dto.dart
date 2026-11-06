//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PersonOtherResponseDto {
  /// Returns a new [PersonOtherResponseDto] instance.
  PersonOtherResponseDto({
    required this.birthDate,
    required this.name,
    required this.role,
    required this.sharedById,
  });

  String? birthDate;

  String name;

  PersonUserRole role;

  String sharedById;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PersonOtherResponseDto &&
    other.birthDate == birthDate &&
    other.name == name &&
    other.role == role &&
    other.sharedById == sharedById;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (birthDate == null ? 0 : birthDate!.hashCode) +
    (name.hashCode) +
    (role.hashCode) +
    (sharedById.hashCode);

  @override
  String toString() => 'PersonOtherResponseDto[birthDate=$birthDate, name=$name, role=$role, sharedById=$sharedById]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.birthDate != null) {
      json[r'birthDate'] = this.birthDate;
    } else {
      json[r'birthDate'] = null;
    }
      json[r'name'] = this.name;
      json[r'role'] = this.role;
      json[r'sharedById'] = this.sharedById;
    return json;
  }

  /// Returns a new [PersonOtherResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PersonOtherResponseDto? fromJson(dynamic value) {
    upgradeDto(value, "PersonOtherResponseDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PersonOtherResponseDto(
        birthDate: mapValueOfType<String>(json, r'birthDate'),
        name: mapValueOfType<String>(json, r'name')!,
        role: PersonUserRole.fromJson(json[r'role'])!,
        sharedById: mapValueOfType<String>(json, r'sharedById')!,
      );
    }
    return null;
  }

  static List<PersonOtherResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PersonOtherResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PersonOtherResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PersonOtherResponseDto> mapFromJson(dynamic json) {
    final map = <String, PersonOtherResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PersonOtherResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PersonOtherResponseDto-objects as value to a dart map
  static Map<String, List<PersonOtherResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PersonOtherResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PersonOtherResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'birthDate',
    'name',
    'role',
    'sharedById',
  };
}

