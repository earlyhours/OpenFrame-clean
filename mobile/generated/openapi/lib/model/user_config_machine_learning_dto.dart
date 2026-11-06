//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserConfigMachineLearningDto {
  /// Returns a new [UserConfigMachineLearningDto] instance.
  UserConfigMachineLearningDto({
    required this.clip,
    required this.duplicateDetection,
    required this.enabled,
    required this.facialRecognition,
    required this.ocr,
  });

  UserConfigClipDto clip;

  UserConfigDuplicateDetectionDto duplicateDetection;

  /// Enabled
  bool enabled;

  UserConfigFacialRecognitionDto facialRecognition;

  UserConfigOcrDto ocr;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserConfigMachineLearningDto &&
    other.clip == clip &&
    other.duplicateDetection == duplicateDetection &&
    other.enabled == enabled &&
    other.facialRecognition == facialRecognition &&
    other.ocr == ocr;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clip.hashCode) +
    (duplicateDetection.hashCode) +
    (enabled.hashCode) +
    (facialRecognition.hashCode) +
    (ocr.hashCode);

  @override
  String toString() => 'UserConfigMachineLearningDto[clip=$clip, duplicateDetection=$duplicateDetection, enabled=$enabled, facialRecognition=$facialRecognition, ocr=$ocr]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'clip'] = this.clip;
      json[r'duplicateDetection'] = this.duplicateDetection;
      json[r'enabled'] = this.enabled;
      json[r'facialRecognition'] = this.facialRecognition;
      json[r'ocr'] = this.ocr;
    return json;
  }

  /// Returns a new [UserConfigMachineLearningDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserConfigMachineLearningDto? fromJson(dynamic value) {
    upgradeDto(value, "UserConfigMachineLearningDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return UserConfigMachineLearningDto(
        clip: UserConfigClipDto.fromJson(json[r'clip'])!,
        duplicateDetection: UserConfigDuplicateDetectionDto.fromJson(json[r'duplicateDetection'])!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        facialRecognition: UserConfigFacialRecognitionDto.fromJson(json[r'facialRecognition'])!,
        ocr: UserConfigOcrDto.fromJson(json[r'ocr'])!,
      );
    }
    return null;
  }

  static List<UserConfigMachineLearningDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserConfigMachineLearningDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserConfigMachineLearningDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserConfigMachineLearningDto> mapFromJson(dynamic json) {
    final map = <String, UserConfigMachineLearningDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserConfigMachineLearningDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserConfigMachineLearningDto-objects as value to a dart map
  static Map<String, List<UserConfigMachineLearningDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserConfigMachineLearningDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserConfigMachineLearningDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'clip',
    'duplicateDetection',
    'enabled',
    'facialRecognition',
    'ocr',
  };
}

