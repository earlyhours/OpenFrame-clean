//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClusterGroupRequestResponseDto {
  /// Returns a new [ClusterGroupRequestResponseDto] instance.
  ClusterGroupRequestResponseDto({
    required this.clusterGroupId,
    required this.createdAt,
    required this.id,
    required this.userId,
  });

  /// Cluster group the user is invited to join
  String clusterGroupId;

  /// Creation date
  DateTime createdAt;

  /// Request ID
  String id;

  /// User the request was created for
  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClusterGroupRequestResponseDto &&
    other.clusterGroupId == clusterGroupId &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clusterGroupId.hashCode) +
    (createdAt.hashCode) +
    (id.hashCode) +
    (userId.hashCode);

  @override
  String toString() => 'ClusterGroupRequestResponseDto[clusterGroupId=$clusterGroupId, createdAt=$createdAt, id=$id, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'clusterGroupId'] = this.clusterGroupId;
      json[r'createdAt'] = _isEpochMarker(r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z|([+-](?:[01]\\d|2[0-3]):[0-5]\\d)))$/')
        ? this.createdAt.millisecondsSinceEpoch
        : this.createdAt.toUtc().toIso8601String();
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
    return json;
  }

  /// Returns a new [ClusterGroupRequestResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterGroupRequestResponseDto? fromJson(dynamic value) {
    upgradeDto(value, "ClusterGroupRequestResponseDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return ClusterGroupRequestResponseDto(
        clusterGroupId: mapValueOfType<String>(json, r'clusterGroupId')!,
        createdAt: mapDateTime(json, r'createdAt', r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z|([+-](?:[01]\\d|2[0-3]):[0-5]\\d)))$/')!,
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
      );
    }
    return null;
  }

  static List<ClusterGroupRequestResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClusterGroupRequestResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterGroupRequestResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterGroupRequestResponseDto> mapFromJson(dynamic json) {
    final map = <String, ClusterGroupRequestResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterGroupRequestResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterGroupRequestResponseDto-objects as value to a dart map
  static Map<String, List<ClusterGroupRequestResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClusterGroupRequestResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterGroupRequestResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'clusterGroupId',
    'createdAt',
    'id',
    'userId',
  };
}

