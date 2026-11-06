//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PersonUsersResponseDtoInner {
  /// Returns a new [PersonUsersResponseDtoInner] instance.
  PersonUsersResponseDtoInner({
    required this.personId,
    required this.role,
    required this.sharedBy,
    required this.sharedById,
    required this.sharedWith,
    required this.sharedWithId,
  });

  /// Person ID
  String personId;

  PersonUserRole role;

  UserResponseDto sharedBy;

  /// User ID of the user that gave access to this person
  String sharedById;

  UserResponseDto sharedWith;

  /// User ID of the user that was given access to this person
  String sharedWithId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PersonUsersResponseDtoInner &&
    other.personId == personId &&
    other.role == role &&
    other.sharedBy == sharedBy &&
    other.sharedById == sharedById &&
    other.sharedWith == sharedWith &&
    other.sharedWithId == sharedWithId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (personId.hashCode) +
    (role.hashCode) +
    (sharedBy.hashCode) +
    (sharedById.hashCode) +
    (sharedWith.hashCode) +
    (sharedWithId.hashCode);

  @override
  String toString() => 'PersonUsersResponseDtoInner[personId=$personId, role=$role, sharedBy=$sharedBy, sharedById=$sharedById, sharedWith=$sharedWith, sharedWithId=$sharedWithId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'personId'] = this.personId;
      json[r'role'] = this.role;
      json[r'sharedBy'] = this.sharedBy;
      json[r'sharedById'] = this.sharedById;
      json[r'sharedWith'] = this.sharedWith;
      json[r'sharedWithId'] = this.sharedWithId;
    return json;
  }

  /// Returns a new [PersonUsersResponseDtoInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PersonUsersResponseDtoInner? fromJson(dynamic value) {
    upgradeDto(value, "PersonUsersResponseDtoInner");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PersonUsersResponseDtoInner(
        personId: mapValueOfType<String>(json, r'personId')!,
        role: PersonUserRole.fromJson(json[r'role'])!,
        sharedBy: UserResponseDto.fromJson(json[r'sharedBy'])!,
        sharedById: mapValueOfType<String>(json, r'sharedById')!,
        sharedWith: UserResponseDto.fromJson(json[r'sharedWith'])!,
        sharedWithId: mapValueOfType<String>(json, r'sharedWithId')!,
      );
    }
    return null;
  }

  static List<PersonUsersResponseDtoInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PersonUsersResponseDtoInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PersonUsersResponseDtoInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PersonUsersResponseDtoInner> mapFromJson(dynamic json) {
    final map = <String, PersonUsersResponseDtoInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PersonUsersResponseDtoInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PersonUsersResponseDtoInner-objects as value to a dart map
  static Map<String, List<PersonUsersResponseDtoInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PersonUsersResponseDtoInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PersonUsersResponseDtoInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'personId',
    'role',
    'sharedBy',
    'sharedById',
    'sharedWith',
    'sharedWithId',
  };
}

