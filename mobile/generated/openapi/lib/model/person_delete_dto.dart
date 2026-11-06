//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PersonDeleteDto {
  /// Returns a new [PersonDeleteDto] instance.
  PersonDeleteDto({
    this.userId = const Optional.absent(),
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<String?> userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PersonDeleteDto &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'PersonDeleteDto[userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.userId.isPresent) {
      final value = this.userId.value;
      json[r'userId'] = value;
    }
    return json;
  }

  /// Returns a new [PersonDeleteDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PersonDeleteDto? fromJson(dynamic value) {
    upgradeDto(value, "PersonDeleteDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PersonDeleteDto(
        userId: json.containsKey(r'userId') ? Optional.present(mapValueOfType<String>(json, r'userId')) : const Optional.absent(),
      );
    }
    return null;
  }

  static List<PersonDeleteDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PersonDeleteDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PersonDeleteDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PersonDeleteDto> mapFromJson(dynamic json) {
    final map = <String, PersonDeleteDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PersonDeleteDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PersonDeleteDto-objects as value to a dart map
  static Map<String, List<PersonDeleteDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PersonDeleteDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PersonDeleteDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

