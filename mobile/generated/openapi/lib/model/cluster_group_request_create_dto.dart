//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClusterGroupRequestCreateDto {
  /// Returns a new [ClusterGroupRequestCreateDto] instance.
  ClusterGroupRequestCreateDto({
    required this.userId,
  });

  /// User to invite into the cluster group
  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClusterGroupRequestCreateDto &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode);

  @override
  String toString() => 'ClusterGroupRequestCreateDto[userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'userId'] = this.userId;
    return json;
  }

  /// Returns a new [ClusterGroupRequestCreateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterGroupRequestCreateDto? fromJson(dynamic value) {
    upgradeDto(value, "ClusterGroupRequestCreateDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return ClusterGroupRequestCreateDto(
        userId: mapValueOfType<String>(json, r'userId')!,
      );
    }
    return null;
  }

  static List<ClusterGroupRequestCreateDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClusterGroupRequestCreateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterGroupRequestCreateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterGroupRequestCreateDto> mapFromJson(dynamic json) {
    final map = <String, ClusterGroupRequestCreateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterGroupRequestCreateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterGroupRequestCreateDto-objects as value to a dart map
  static Map<String, List<ClusterGroupRequestCreateDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClusterGroupRequestCreateDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterGroupRequestCreateDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userId',
  };
}

