//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigJobDto {
  /// Returns a new [AdminConfigJobDto] instance.
  AdminConfigJobDto({
    required this.backgroundTask,
    required this.editor,
    required this.faceDetection,
    required this.integrityCheck,
    required this.library_,
    required this.metadataExtraction,
    required this.migration,
    required this.notifications,
    required this.ocr,
    required this.search,
    required this.sidecar,
    required this.smartSearch,
    required this.thumbnailGeneration,
    required this.videoConversion,
    required this.workflow,
  });

  AdminConfigJobSettingsDto backgroundTask;

  AdminConfigJobSettingsDto editor;

  AdminConfigJobSettingsDto faceDetection;

  AdminConfigJobSettingsDto integrityCheck;

  AdminConfigJobSettingsDto library_;

  AdminConfigJobSettingsDto metadataExtraction;

  AdminConfigJobSettingsDto migration;

  AdminConfigJobSettingsDto notifications;

  AdminConfigJobSettingsDto ocr;

  AdminConfigJobSettingsDto search;

  AdminConfigJobSettingsDto sidecar;

  AdminConfigJobSettingsDto smartSearch;

  AdminConfigJobSettingsDto thumbnailGeneration;

  AdminConfigJobSettingsDto videoConversion;

  AdminConfigJobSettingsDto workflow;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigJobDto &&
    other.backgroundTask == backgroundTask &&
    other.editor == editor &&
    other.faceDetection == faceDetection &&
    other.integrityCheck == integrityCheck &&
    other.library_ == library_ &&
    other.metadataExtraction == metadataExtraction &&
    other.migration == migration &&
    other.notifications == notifications &&
    other.ocr == ocr &&
    other.search == search &&
    other.sidecar == sidecar &&
    other.smartSearch == smartSearch &&
    other.thumbnailGeneration == thumbnailGeneration &&
    other.videoConversion == videoConversion &&
    other.workflow == workflow;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (backgroundTask.hashCode) +
    (editor.hashCode) +
    (faceDetection.hashCode) +
    (integrityCheck.hashCode) +
    (library_.hashCode) +
    (metadataExtraction.hashCode) +
    (migration.hashCode) +
    (notifications.hashCode) +
    (ocr.hashCode) +
    (search.hashCode) +
    (sidecar.hashCode) +
    (smartSearch.hashCode) +
    (thumbnailGeneration.hashCode) +
    (videoConversion.hashCode) +
    (workflow.hashCode);

  @override
  String toString() => 'AdminConfigJobDto[backgroundTask=$backgroundTask, editor=$editor, faceDetection=$faceDetection, integrityCheck=$integrityCheck, library_=$library_, metadataExtraction=$metadataExtraction, migration=$migration, notifications=$notifications, ocr=$ocr, search=$search, sidecar=$sidecar, smartSearch=$smartSearch, thumbnailGeneration=$thumbnailGeneration, videoConversion=$videoConversion, workflow=$workflow]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'backgroundTask'] = this.backgroundTask;
      json[r'editor'] = this.editor;
      json[r'faceDetection'] = this.faceDetection;
      json[r'integrityCheck'] = this.integrityCheck;
      json[r'library'] = this.library_;
      json[r'metadataExtraction'] = this.metadataExtraction;
      json[r'migration'] = this.migration;
      json[r'notifications'] = this.notifications;
      json[r'ocr'] = this.ocr;
      json[r'search'] = this.search;
      json[r'sidecar'] = this.sidecar;
      json[r'smartSearch'] = this.smartSearch;
      json[r'thumbnailGeneration'] = this.thumbnailGeneration;
      json[r'videoConversion'] = this.videoConversion;
      json[r'workflow'] = this.workflow;
    return json;
  }

  /// Returns a new [AdminConfigJobDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigJobDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigJobDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigJobDto(
        backgroundTask: AdminConfigJobSettingsDto.fromJson(json[r'backgroundTask'])!,
        editor: AdminConfigJobSettingsDto.fromJson(json[r'editor'])!,
        faceDetection: AdminConfigJobSettingsDto.fromJson(json[r'faceDetection'])!,
        integrityCheck: AdminConfigJobSettingsDto.fromJson(json[r'integrityCheck'])!,
        library_: AdminConfigJobSettingsDto.fromJson(json[r'library'])!,
        metadataExtraction: AdminConfigJobSettingsDto.fromJson(json[r'metadataExtraction'])!,
        migration: AdminConfigJobSettingsDto.fromJson(json[r'migration'])!,
        notifications: AdminConfigJobSettingsDto.fromJson(json[r'notifications'])!,
        ocr: AdminConfigJobSettingsDto.fromJson(json[r'ocr'])!,
        search: AdminConfigJobSettingsDto.fromJson(json[r'search'])!,
        sidecar: AdminConfigJobSettingsDto.fromJson(json[r'sidecar'])!,
        smartSearch: AdminConfigJobSettingsDto.fromJson(json[r'smartSearch'])!,
        thumbnailGeneration: AdminConfigJobSettingsDto.fromJson(json[r'thumbnailGeneration'])!,
        videoConversion: AdminConfigJobSettingsDto.fromJson(json[r'videoConversion'])!,
        workflow: AdminConfigJobSettingsDto.fromJson(json[r'workflow'])!,
      );
    }
    return null;
  }

  static List<AdminConfigJobDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigJobDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigJobDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigJobDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigJobDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigJobDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigJobDto-objects as value to a dart map
  static Map<String, List<AdminConfigJobDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigJobDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigJobDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'backgroundTask',
    'editor',
    'faceDetection',
    'integrityCheck',
    'library',
    'metadataExtraction',
    'migration',
    'notifications',
    'ocr',
    'search',
    'sidecar',
    'smartSearch',
    'thumbnailGeneration',
    'videoConversion',
    'workflow',
  };
}

