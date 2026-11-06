//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeviceTransferResponseDto {
  /// Returns a new [DeviceTransferResponseDto] instance.
  DeviceTransferResponseDto({
    required this.action,
    this.assetIds = const [],
    required this.id,
    required this.sentAt,
    required this.sourceSessionId,
    required this.targetSessionId,
  });

  DeviceTransferAction action;

  List<String> assetIds;

  /// Transfer ID
  String id;

  DateTime sentAt;

  String sourceSessionId;

  String targetSessionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeviceTransferResponseDto &&
    other.action == action &&
    _deepEquality.equals(other.assetIds, assetIds) &&
    other.id == id &&
    other.sentAt == sentAt &&
    other.sourceSessionId == sourceSessionId &&
    other.targetSessionId == targetSessionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action.hashCode) +
    (assetIds.hashCode) +
    (id.hashCode) +
    (sentAt.hashCode) +
    (sourceSessionId.hashCode) +
    (targetSessionId.hashCode);

  @override
  String toString() => 'DeviceTransferResponseDto[action=$action, assetIds=$assetIds, id=$id, sentAt=$sentAt, sourceSessionId=$sourceSessionId, targetSessionId=$targetSessionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'action'] = this.action;
      json[r'assetIds'] = this.assetIds;
      json[r'id'] = this.id;
      json[r'sentAt'] = _isEpochMarker(r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z))$/')
        ? this.sentAt.millisecondsSinceEpoch
        : this.sentAt.toUtc().toIso8601String();
      json[r'sourceSessionId'] = this.sourceSessionId;
      json[r'targetSessionId'] = this.targetSessionId;
    return json;
  }

  /// Returns a new [DeviceTransferResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceTransferResponseDto? fromJson(dynamic value) {
    upgradeDto(value, "DeviceTransferResponseDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return DeviceTransferResponseDto(
        action: DeviceTransferAction.fromJson(json[r'action'])!,
        assetIds: json[r'assetIds'] is Iterable
            ? (json[r'assetIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        id: mapValueOfType<String>(json, r'id')!,
        sentAt: mapDateTime(json, r'sentAt', r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z))$/')!,
        sourceSessionId: mapValueOfType<String>(json, r'sourceSessionId')!,
        targetSessionId: mapValueOfType<String>(json, r'targetSessionId')!,
      );
    }
    return null;
  }

  static List<DeviceTransferResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeviceTransferResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceTransferResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceTransferResponseDto> mapFromJson(dynamic json) {
    final map = <String, DeviceTransferResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceTransferResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceTransferResponseDto-objects as value to a dart map
  static Map<String, List<DeviceTransferResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeviceTransferResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeviceTransferResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'action',
    'assetIds',
    'id',
    'sentAt',
    'sourceSessionId',
    'targetSessionId',
  };
}

