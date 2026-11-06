//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigImageDto {
  /// Returns a new [AdminConfigImageDto] instance.
  AdminConfigImageDto({
    required this.colorspace,
    required this.extractEmbedded,
    required this.fullsize,
    required this.preview,
    required this.thumbnail,
  });

  Colorspace colorspace;

  /// Extract embedded
  bool extractEmbedded;

  AdminConfigGeneratedFullsizeImageDto fullsize;

  AdminConfigGeneratedImageDto preview;

  AdminConfigGeneratedImageDto thumbnail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigImageDto &&
    other.colorspace == colorspace &&
    other.extractEmbedded == extractEmbedded &&
    other.fullsize == fullsize &&
    other.preview == preview &&
    other.thumbnail == thumbnail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (colorspace.hashCode) +
    (extractEmbedded.hashCode) +
    (fullsize.hashCode) +
    (preview.hashCode) +
    (thumbnail.hashCode);

  @override
  String toString() => 'AdminConfigImageDto[colorspace=$colorspace, extractEmbedded=$extractEmbedded, fullsize=$fullsize, preview=$preview, thumbnail=$thumbnail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'colorspace'] = this.colorspace;
      json[r'extractEmbedded'] = this.extractEmbedded;
      json[r'fullsize'] = this.fullsize;
      json[r'preview'] = this.preview;
      json[r'thumbnail'] = this.thumbnail;
    return json;
  }

  /// Returns a new [AdminConfigImageDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigImageDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigImageDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigImageDto(
        colorspace: Colorspace.fromJson(json[r'colorspace'])!,
        extractEmbedded: mapValueOfType<bool>(json, r'extractEmbedded')!,
        fullsize: AdminConfigGeneratedFullsizeImageDto.fromJson(json[r'fullsize'])!,
        preview: AdminConfigGeneratedImageDto.fromJson(json[r'preview'])!,
        thumbnail: AdminConfigGeneratedImageDto.fromJson(json[r'thumbnail'])!,
      );
    }
    return null;
  }

  static List<AdminConfigImageDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigImageDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigImageDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigImageDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigImageDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigImageDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigImageDto-objects as value to a dart map
  static Map<String, List<AdminConfigImageDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigImageDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigImageDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'colorspace',
    'extractEmbedded',
    'fullsize',
    'preview',
    'thumbnail',
  };
}

