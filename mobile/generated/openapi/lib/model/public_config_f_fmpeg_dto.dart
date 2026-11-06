//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PublicConfigFFmpegDto {
  /// Returns a new [PublicConfigFFmpegDto] instance.
  PublicConfigFFmpegDto({
    required this.realtime,
  });

  PublicConfigFFmpegRealtimeDto realtime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicConfigFFmpegDto &&
    other.realtime == realtime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (realtime.hashCode);

  @override
  String toString() => 'PublicConfigFFmpegDto[realtime=$realtime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'realtime'] = this.realtime;
    return json;
  }

  /// Returns a new [PublicConfigFFmpegDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicConfigFFmpegDto? fromJson(dynamic value) {
    upgradeDto(value, "PublicConfigFFmpegDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PublicConfigFFmpegDto(
        realtime: PublicConfigFFmpegRealtimeDto.fromJson(json[r'realtime'])!,
      );
    }
    return null;
  }

  static List<PublicConfigFFmpegDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicConfigFFmpegDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicConfigFFmpegDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicConfigFFmpegDto> mapFromJson(dynamic json) {
    final map = <String, PublicConfigFFmpegDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicConfigFFmpegDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicConfigFFmpegDto-objects as value to a dart map
  static Map<String, List<PublicConfigFFmpegDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicConfigFFmpegDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicConfigFFmpegDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'realtime',
  };
}

