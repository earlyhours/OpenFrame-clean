//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PeopleUsersUpsertDto {
  /// Returns a new [PeopleUsersUpsertDto] instance.
  PeopleUsersUpsertDto({
    this.personIds = const Optional.present(const []),
    required this.role,
    this.sharedWithIds = const [],
    this.type = const Optional.absent(),
  });

  /// Person IDs, required when type is omitted
  Optional<List<String>?> personIds;

  PersonUserRole role;

  /// User IDs that should be given access to the person
  List<String> sharedWithIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<PeopleUsersUpsertType?> type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PeopleUsersUpsertDto &&
    _deepEquality.equals(other.personIds, personIds) &&
    other.role == role &&
    _deepEquality.equals(other.sharedWithIds, sharedWithIds) &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (personIds.hashCode) +
    (role.hashCode) +
    (sharedWithIds.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'PeopleUsersUpsertDto[personIds=$personIds, role=$role, sharedWithIds=$sharedWithIds, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.personIds.isPresent) {
      final value = this.personIds.value;
      json[r'personIds'] = value;
    }
      json[r'role'] = this.role;
      json[r'sharedWithIds'] = this.sharedWithIds;
    if (this.type.isPresent) {
      final value = this.type.value;
      json[r'type'] = value;
    }
    return json;
  }

  /// Returns a new [PeopleUsersUpsertDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PeopleUsersUpsertDto? fromJson(dynamic value) {
    upgradeDto(value, "PeopleUsersUpsertDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PeopleUsersUpsertDto(
        personIds: json.containsKey(r'personIds') ? Optional.present(json[r'personIds'] is Iterable
            ? (json[r'personIds'] as Iterable).cast<String>().toList(growable: false)
            : const []) : const Optional.absent(),
        role: PersonUserRole.fromJson(json[r'role'])!,
        sharedWithIds: json[r'sharedWithIds'] is Iterable
            ? (json[r'sharedWithIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        type: json.containsKey(r'type') ? Optional.present(PeopleUsersUpsertType.fromJson(json[r'type'])) : const Optional.absent(),
      );
    }
    return null;
  }

  static List<PeopleUsersUpsertDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PeopleUsersUpsertDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PeopleUsersUpsertDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PeopleUsersUpsertDto> mapFromJson(dynamic json) {
    final map = <String, PeopleUsersUpsertDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PeopleUsersUpsertDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PeopleUsersUpsertDto-objects as value to a dart map
  static Map<String, List<PeopleUsersUpsertDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PeopleUsersUpsertDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PeopleUsersUpsertDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'role',
    'sharedWithIds',
  };
}

