//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PeopleDeleteDto {
  /// Returns a new [PeopleDeleteDto] instance.
  PeopleDeleteDto({
    this.ids = const [],
    this.userId = const Optional.absent(),
  });

  /// IDs to process
  List<String> ids;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<String?> userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PeopleDeleteDto &&
    _deepEquality.equals(other.ids, ids) &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ids.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'PeopleDeleteDto[ids=$ids, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ids'] = this.ids;
    if (this.userId.isPresent) {
      final value = this.userId.value;
      json[r'userId'] = value;
    }
    return json;
  }

  /// Returns a new [PeopleDeleteDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PeopleDeleteDto? fromJson(dynamic value) {
    upgradeDto(value, "PeopleDeleteDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PeopleDeleteDto(
        ids: json[r'ids'] is Iterable
            ? (json[r'ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        userId: json.containsKey(r'userId') ? Optional.present(mapValueOfType<String>(json, r'userId')) : const Optional.absent(),
      );
    }
    return null;
  }

  static List<PeopleDeleteDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PeopleDeleteDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PeopleDeleteDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PeopleDeleteDto> mapFromJson(dynamic json) {
    final map = <String, PeopleDeleteDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PeopleDeleteDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PeopleDeleteDto-objects as value to a dart map
  static Map<String, List<PeopleDeleteDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PeopleDeleteDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PeopleDeleteDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ids',
  };
}

