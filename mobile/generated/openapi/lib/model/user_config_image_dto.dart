//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserConfigImageDto {
  /// Returns a new [UserConfigImageDto] instance.
  UserConfigImageDto({
    required this.fullsize,
    required this.preview,
    required this.thumbnail,
  });

  UserConfigGeneratedFullsizeImageDto fullsize;

  UserConfigGeneratedImageDto preview;

  UserConfigGeneratedImageDto thumbnail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserConfigImageDto &&
    other.fullsize == fullsize &&
    other.preview == preview &&
    other.thumbnail == thumbnail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fullsize.hashCode) +
    (preview.hashCode) +
    (thumbnail.hashCode);

  @override
  String toString() => 'UserConfigImageDto[fullsize=$fullsize, preview=$preview, thumbnail=$thumbnail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'fullsize'] = this.fullsize;
      json[r'preview'] = this.preview;
      json[r'thumbnail'] = this.thumbnail;
    return json;
  }

  /// Returns a new [UserConfigImageDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserConfigImageDto? fromJson(dynamic value) {
    upgradeDto(value, "UserConfigImageDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return UserConfigImageDto(
        fullsize: UserConfigGeneratedFullsizeImageDto.fromJson(json[r'fullsize'])!,
        preview: UserConfigGeneratedImageDto.fromJson(json[r'preview'])!,
        thumbnail: UserConfigGeneratedImageDto.fromJson(json[r'thumbnail'])!,
      );
    }
    return null;
  }

  static List<UserConfigImageDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserConfigImageDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserConfigImageDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserConfigImageDto> mapFromJson(dynamic json) {
    final map = <String, UserConfigImageDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserConfigImageDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserConfigImageDto-objects as value to a dart map
  static Map<String, List<UserConfigImageDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserConfigImageDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserConfigImageDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'fullsize',
    'preview',
    'thumbnail',
  };
}

