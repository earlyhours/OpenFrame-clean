//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SessionTargetResponseDto {
  /// Returns a new [SessionTargetResponseDto] instance.
  SessionTargetResponseDto({
    required this.deviceName,
    required this.deviceOS,
    required this.deviceType,
    required this.id,
    required this.label,
  });

  /// Device name inferred from existing session metadata
  String deviceName;

  String deviceOS;

  String deviceType;

  String id;

  /// Friendly device label including a short session ID
  String label;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SessionTargetResponseDto &&
    other.deviceName == deviceName &&
    other.deviceOS == deviceOS &&
    other.deviceType == deviceType &&
    other.id == id &&
    other.label == label;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deviceName.hashCode) +
    (deviceOS.hashCode) +
    (deviceType.hashCode) +
    (id.hashCode) +
    (label.hashCode);

  @override
  String toString() => 'SessionTargetResponseDto[deviceName=$deviceName, deviceOS=$deviceOS, deviceType=$deviceType, id=$id, label=$label]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'deviceName'] = this.deviceName;
      json[r'deviceOS'] = this.deviceOS;
      json[r'deviceType'] = this.deviceType;
      json[r'id'] = this.id;
      json[r'label'] = this.label;
    return json;
  }

  /// Returns a new [SessionTargetResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SessionTargetResponseDto? fromJson(dynamic value) {
    upgradeDto(value, "SessionTargetResponseDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return SessionTargetResponseDto(
        deviceName: mapValueOfType<String>(json, r'deviceName')!,
        deviceOS: mapValueOfType<String>(json, r'deviceOS')!,
        deviceType: mapValueOfType<String>(json, r'deviceType')!,
        id: mapValueOfType<String>(json, r'id')!,
        label: mapValueOfType<String>(json, r'label')!,
      );
    }
    return null;
  }

  static List<SessionTargetResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionTargetResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionTargetResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SessionTargetResponseDto> mapFromJson(dynamic json) {
    final map = <String, SessionTargetResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SessionTargetResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SessionTargetResponseDto-objects as value to a dart map
  static Map<String, List<SessionTargetResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SessionTargetResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SessionTargetResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'deviceName',
    'deviceOS',
    'deviceType',
    'id',
    'label',
  };
}

