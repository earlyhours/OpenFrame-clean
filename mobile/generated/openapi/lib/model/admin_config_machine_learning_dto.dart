//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigMachineLearningDto {
  /// Returns a new [AdminConfigMachineLearningDto] instance.
  AdminConfigMachineLearningDto({
    required this.availabilityChecks,
    required this.clip,
    required this.duplicateDetection,
    required this.enabled,
    required this.facialRecognition,
    required this.ocr,
    this.urls = const [],
  });

  AdminConfigMachineLearningAvailabilityChecksDto availabilityChecks;

  AdminConfigClipDto clip;

  AdminConfigDuplicateDetectionDto duplicateDetection;

  /// Enabled
  bool enabled;

  AdminConfigFacialRecognitionDto facialRecognition;

  AdminConfigOcrDto ocr;

  /// ML service URLs
  List<String> urls;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigMachineLearningDto &&
    other.availabilityChecks == availabilityChecks &&
    other.clip == clip &&
    other.duplicateDetection == duplicateDetection &&
    other.enabled == enabled &&
    other.facialRecognition == facialRecognition &&
    other.ocr == ocr &&
    _deepEquality.equals(other.urls, urls);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (availabilityChecks.hashCode) +
    (clip.hashCode) +
    (duplicateDetection.hashCode) +
    (enabled.hashCode) +
    (facialRecognition.hashCode) +
    (ocr.hashCode) +
    (urls.hashCode);

  @override
  String toString() => 'AdminConfigMachineLearningDto[availabilityChecks=$availabilityChecks, clip=$clip, duplicateDetection=$duplicateDetection, enabled=$enabled, facialRecognition=$facialRecognition, ocr=$ocr, urls=$urls]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'availabilityChecks'] = this.availabilityChecks;
      json[r'clip'] = this.clip;
      json[r'duplicateDetection'] = this.duplicateDetection;
      json[r'enabled'] = this.enabled;
      json[r'facialRecognition'] = this.facialRecognition;
      json[r'ocr'] = this.ocr;
      json[r'urls'] = this.urls;
    return json;
  }

  /// Returns a new [AdminConfigMachineLearningDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigMachineLearningDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigMachineLearningDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigMachineLearningDto(
        availabilityChecks: AdminConfigMachineLearningAvailabilityChecksDto.fromJson(json[r'availabilityChecks'])!,
        clip: AdminConfigClipDto.fromJson(json[r'clip'])!,
        duplicateDetection: AdminConfigDuplicateDetectionDto.fromJson(json[r'duplicateDetection'])!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        facialRecognition: AdminConfigFacialRecognitionDto.fromJson(json[r'facialRecognition'])!,
        ocr: AdminConfigOcrDto.fromJson(json[r'ocr'])!,
        urls: json[r'urls'] is Iterable
            ? (json[r'urls'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<AdminConfigMachineLearningDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigMachineLearningDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigMachineLearningDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigMachineLearningDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigMachineLearningDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigMachineLearningDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigMachineLearningDto-objects as value to a dart map
  static Map<String, List<AdminConfigMachineLearningDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigMachineLearningDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigMachineLearningDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'availabilityChecks',
    'clip',
    'duplicateDetection',
    'enabled',
    'facialRecognition',
    'ocr',
    'urls',
  };
}

