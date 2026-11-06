//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PeopleUserResponseDto {
  /// Returns a new [PeopleUserResponseDto] instance.
  PeopleUserResponseDto({
    required this.avatarColor,
    required this.email,
    required this.id,
    required this.name,
    required this.profileChangedAt,
    required this.profileImagePath,
    required this.role,
  });

  UserAvatarColor avatarColor;

  /// User email
  String email;

  /// User ID
  String id;

  /// User name
  String name;

  /// Profile change date
  DateTime profileChangedAt;

  /// Profile image path
  String profileImagePath;

  PersonUserRole role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PeopleUserResponseDto &&
    other.avatarColor == avatarColor &&
    other.email == email &&
    other.id == id &&
    other.name == name &&
    other.profileChangedAt == profileChangedAt &&
    other.profileImagePath == profileImagePath &&
    other.role == role;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avatarColor.hashCode) +
    (email.hashCode) +
    (id.hashCode) +
    (name.hashCode) +
    (profileChangedAt.hashCode) +
    (profileImagePath.hashCode) +
    (role.hashCode);

  @override
  String toString() => 'PeopleUserResponseDto[avatarColor=$avatarColor, email=$email, id=$id, name=$name, profileChangedAt=$profileChangedAt, profileImagePath=$profileImagePath, role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'avatarColor'] = this.avatarColor;
      json[r'email'] = this.email;
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'profileChangedAt'] = this.profileChangedAt.toUtc().toIso8601String();
      json[r'profileImagePath'] = this.profileImagePath;
      json[r'role'] = this.role;
    return json;
  }

  /// Returns a new [PeopleUserResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PeopleUserResponseDto? fromJson(dynamic value) {
    upgradeDto(value, "PeopleUserResponseDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PeopleUserResponseDto(
        avatarColor: UserAvatarColor.fromJson(json[r'avatarColor'])!,
        email: mapValueOfType<String>(json, r'email')!,
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        profileChangedAt: mapDateTime(json, r'profileChangedAt', r'')!,
        profileImagePath: mapValueOfType<String>(json, r'profileImagePath')!,
        role: PersonUserRole.fromJson(json[r'role'])!,
      );
    }
    return null;
  }

  static List<PeopleUserResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PeopleUserResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PeopleUserResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PeopleUserResponseDto> mapFromJson(dynamic json) {
    final map = <String, PeopleUserResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PeopleUserResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PeopleUserResponseDto-objects as value to a dart map
  static Map<String, List<PeopleUserResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PeopleUserResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PeopleUserResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'avatarColor',
    'email',
    'id',
    'name',
    'profileChangedAt',
    'profileImagePath',
    'role',
  };
}

