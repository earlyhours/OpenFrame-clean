//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResumableUploadResponseDto {
  /// Returns a new [ResumableUploadResponseDto] instance.
  ResumableUploadResponseDto({
    required this.chunkSize,
    required this.expiresAt,
    required this.id,
    required this.offset,
    required this.size,
  });

  /// Minimum value: 0
  /// Maximum value: 9007199254740991
  int chunkSize;

  DateTime expiresAt;

  String id;

  /// Minimum value: 0
  /// Maximum value: 9007199254740991
  int offset;

  /// Minimum value: 0
  /// Maximum value: 9007199254740991
  int size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResumableUploadResponseDto &&
    other.chunkSize == chunkSize &&
    other.expiresAt == expiresAt &&
    other.id == id &&
    other.offset == offset &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chunkSize.hashCode) +
    (expiresAt.hashCode) +
    (id.hashCode) +
    (offset.hashCode) +
    (size.hashCode);

  @override
  String toString() => 'ResumableUploadResponseDto[chunkSize=$chunkSize, expiresAt=$expiresAt, id=$id, offset=$offset, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'chunkSize'] = this.chunkSize;
      json[r'expiresAt'] = _isEpochMarker(r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z))$/')
        ? this.expiresAt.millisecondsSinceEpoch
        : this.expiresAt.toUtc().toIso8601String();
      json[r'id'] = this.id;
      json[r'offset'] = this.offset;
      json[r'size'] = this.size;
    return json;
  }

  /// Returns a new [ResumableUploadResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResumableUploadResponseDto? fromJson(dynamic value) {
    upgradeDto(value, "ResumableUploadResponseDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return ResumableUploadResponseDto(
        chunkSize: mapValueOfType<int>(json, r'chunkSize')!,
        expiresAt: mapDateTime(json, r'expiresAt', r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z))$/')!,
        id: mapValueOfType<String>(json, r'id')!,
        offset: mapValueOfType<int>(json, r'offset')!,
        size: mapValueOfType<int>(json, r'size')!,
      );
    }
    return null;
  }

  static List<ResumableUploadResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResumableUploadResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResumableUploadResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResumableUploadResponseDto> mapFromJson(dynamic json) {
    final map = <String, ResumableUploadResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResumableUploadResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResumableUploadResponseDto-objects as value to a dart map
  static Map<String, List<ResumableUploadResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResumableUploadResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResumableUploadResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'chunkSize',
    'expiresAt',
    'id',
    'offset',
    'size',
  };
}

