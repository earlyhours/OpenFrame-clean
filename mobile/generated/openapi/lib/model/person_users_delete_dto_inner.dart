//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PersonUsersDeleteDtoInner {
  /// Returns a new [PersonUsersDeleteDtoInner] instance.
  PersonUsersDeleteDtoInner({
    required this.personId,
    this.sharedById = const Optional.absent(),
    required this.sharedWithId,
  });

  /// Person ID
  String personId;

  /// User ID of the user that gave access to the person
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<String?> sharedById;

  /// User ID of the user that was given access to the person
  String sharedWithId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PersonUsersDeleteDtoInner &&
    other.personId == personId &&
    other.sharedById == sharedById &&
    other.sharedWithId == sharedWithId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (personId.hashCode) +
    (sharedById == null ? 0 : sharedById!.hashCode) +
    (sharedWithId.hashCode);

  @override
  String toString() => 'PersonUsersDeleteDtoInner[personId=$personId, sharedById=$sharedById, sharedWithId=$sharedWithId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'personId'] = this.personId;
    if (this.sharedById.isPresent) {
      final value = this.sharedById.value;
      json[r'sharedById'] = value;
    }
      json[r'sharedWithId'] = this.sharedWithId;
    return json;
  }

  /// Returns a new [PersonUsersDeleteDtoInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PersonUsersDeleteDtoInner? fromJson(dynamic value) {
    upgradeDto(value, "PersonUsersDeleteDtoInner");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PersonUsersDeleteDtoInner(
        personId: mapValueOfType<String>(json, r'personId')!,
        sharedById: json.containsKey(r'sharedById') ? Optional.present(mapValueOfType<String>(json, r'sharedById')) : const Optional.absent(),
        sharedWithId: mapValueOfType<String>(json, r'sharedWithId')!,
      );
    }
    return null;
  }

  static List<PersonUsersDeleteDtoInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PersonUsersDeleteDtoInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PersonUsersDeleteDtoInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PersonUsersDeleteDtoInner> mapFromJson(dynamic json) {
    final map = <String, PersonUsersDeleteDtoInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PersonUsersDeleteDtoInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PersonUsersDeleteDtoInner-objects as value to a dart map
  static Map<String, List<PersonUsersDeleteDtoInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PersonUsersDeleteDtoInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PersonUsersDeleteDtoInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'personId',
    'sharedWithId',
  };
}

