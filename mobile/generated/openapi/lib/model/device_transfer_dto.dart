//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeviceTransferDto {
  /// Returns a new [DeviceTransferDto] instance.
  DeviceTransferDto({
    required this.action,
    this.assetIds = const [],
    required this.targetSessionId,
  });

  DeviceTransferAction action;

  List<String> assetIds;

  String targetSessionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeviceTransferDto &&
    other.action == action &&
    _deepEquality.equals(other.assetIds, assetIds) &&
    other.targetSessionId == targetSessionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action.hashCode) +
    (assetIds.hashCode) +
    (targetSessionId.hashCode);

  @override
  String toString() => 'DeviceTransferDto[action=$action, assetIds=$assetIds, targetSessionId=$targetSessionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'action'] = this.action;
      json[r'assetIds'] = this.assetIds;
      json[r'targetSessionId'] = this.targetSessionId;
    return json;
  }

  /// Returns a new [DeviceTransferDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceTransferDto? fromJson(dynamic value) {
    upgradeDto(value, "DeviceTransferDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return DeviceTransferDto(
        action: DeviceTransferAction.fromJson(json[r'action'])!,
        assetIds: json[r'assetIds'] is Iterable
            ? (json[r'assetIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        targetSessionId: mapValueOfType<String>(json, r'targetSessionId')!,
      );
    }
    return null;
  }

  static List<DeviceTransferDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeviceTransferDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceTransferDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceTransferDto> mapFromJson(dynamic json) {
    final map = <String, DeviceTransferDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceTransferDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceTransferDto-objects as value to a dart map
  static Map<String, List<DeviceTransferDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeviceTransferDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeviceTransferDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'action',
    'assetIds',
    'targetSessionId',
  };
}

