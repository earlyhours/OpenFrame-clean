//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PublicConfigFFmpegRealtimeDto {
  /// Returns a new [PublicConfigFFmpegRealtimeDto] instance.
  PublicConfigFFmpegRealtimeDto({
    required this.enabled,
  });

  /// Enable real-time HLS transcoding (alpha)
  bool enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicConfigFFmpegRealtimeDto &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode);

  @override
  String toString() => 'PublicConfigFFmpegRealtimeDto[enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
    return json;
  }

  /// Returns a new [PublicConfigFFmpegRealtimeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicConfigFFmpegRealtimeDto? fromJson(dynamic value) {
    upgradeDto(value, "PublicConfigFFmpegRealtimeDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PublicConfigFFmpegRealtimeDto(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
      );
    }
    return null;
  }

  static List<PublicConfigFFmpegRealtimeDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicConfigFFmpegRealtimeDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicConfigFFmpegRealtimeDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicConfigFFmpegRealtimeDto> mapFromJson(dynamic json) {
    final map = <String, PublicConfigFFmpegRealtimeDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicConfigFFmpegRealtimeDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicConfigFFmpegRealtimeDto-objects as value to a dart map
  static Map<String, List<PublicConfigFFmpegRealtimeDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicConfigFFmpegRealtimeDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicConfigFFmpegRealtimeDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
  };
}

