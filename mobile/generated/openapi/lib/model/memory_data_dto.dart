//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MemoryDataDto {
  /// Returns a new [MemoryDataDto] instance.
  MemoryDataDto({
    this.personId = const Optional.absent(),
    this.personName = const Optional.absent(),
    required this.year,
  });

  /// Person ID (birthday memories)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<String?> personId;

  /// Name of the person when the memory was created (birthday memories)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<String?> personName;

  /// Year of the memory
  ///
  /// Minimum value: 1000
  /// Maximum value: 9999
  int year;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MemoryDataDto &&
    other.personId == personId &&
    other.personName == personName &&
    other.year == year;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (personId == null ? 0 : personId!.hashCode) +
    (personName == null ? 0 : personName!.hashCode) +
    (year.hashCode);

  @override
  String toString() => 'MemoryDataDto[personId=$personId, personName=$personName, year=$year]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.personId.isPresent) {
      final value = this.personId.value;
      json[r'personId'] = value;
    }
    if (this.personName.isPresent) {
      final value = this.personName.value;
      json[r'personName'] = value;
    }
      json[r'year'] = this.year;
    return json;
  }

  /// Returns a new [MemoryDataDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MemoryDataDto? fromJson(dynamic value) {
    upgradeDto(value, "MemoryDataDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return MemoryDataDto(
        personId: json.containsKey(r'personId') ? Optional.present(mapValueOfType<String>(json, r'personId')) : const Optional.absent(),
        personName: json.containsKey(r'personName') ? Optional.present(mapValueOfType<String>(json, r'personName')) : const Optional.absent(),
        year: mapValueOfType<int>(json, r'year')!,
      );
    }
    return null;
  }

  static List<MemoryDataDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MemoryDataDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MemoryDataDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MemoryDataDto> mapFromJson(dynamic json) {
    final map = <String, MemoryDataDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MemoryDataDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MemoryDataDto-objects as value to a dart map
  static Map<String, List<MemoryDataDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MemoryDataDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MemoryDataDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'year',
  };
}

