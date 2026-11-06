//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigDto {
  /// Returns a new [AdminConfigDto] instance.
  AdminConfigDto({
    required this.backup,
    required this.ffmpeg,
    required this.image,
    required this.integrityChecks,
    required this.job,
    required this.library_,
    required this.logging,
    required this.machineLearning,
    required this.map,
    required this.metadata,
    required this.newVersionCheck,
    required this.nightlyTasks,
    required this.notifications,
    required this.oauth,
    required this.passkey,
    required this.passwordLogin,
    required this.reverseGeocoding,
    required this.server,
    required this.storageTemplate,
    required this.templates,
    required this.theme,
    required this.trash,
    required this.user,
  });

  AdminConfigBackupsDto backup;

  AdminConfigFFmpegDto ffmpeg;

  AdminConfigImageDto image;

  AdminConfigIntegrityChecksDto integrityChecks;

  AdminConfigJobDto job;

  AdminConfigLibraryDto library_;

  AdminConfigLoggingDto logging;

  AdminConfigMachineLearningDto machineLearning;

  AdminConfigMapDto map;

  AdminConfigMetadataDto metadata;

  AdminConfigNewVersionCheckDto newVersionCheck;

  AdminConfigNightlyTasksDto nightlyTasks;

  AdminConfigNotificationsDto notifications;

  AdminConfigOAuthDto oauth;

  AdminConfigPasskeyDto passkey;

  AdminConfigPasswordLoginDto passwordLogin;

  AdminConfigReverseGeocodingDto reverseGeocoding;

  AdminConfigServerDto server;

  AdminConfigStorageTemplateDto storageTemplate;

  AdminConfigTemplatesDto templates;

  AdminConfigThemeDto theme;

  AdminConfigTrashDto trash;

  AdminConfigUserDto user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigDto &&
    other.backup == backup &&
    other.ffmpeg == ffmpeg &&
    other.image == image &&
    other.integrityChecks == integrityChecks &&
    other.job == job &&
    other.library_ == library_ &&
    other.logging == logging &&
    other.machineLearning == machineLearning &&
    other.map == map &&
    other.metadata == metadata &&
    other.newVersionCheck == newVersionCheck &&
    other.nightlyTasks == nightlyTasks &&
    other.notifications == notifications &&
    other.oauth == oauth &&
    other.passkey == passkey &&
    other.passwordLogin == passwordLogin &&
    other.reverseGeocoding == reverseGeocoding &&
    other.server == server &&
    other.storageTemplate == storageTemplate &&
    other.templates == templates &&
    other.theme == theme &&
    other.trash == trash &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (backup.hashCode) +
    (ffmpeg.hashCode) +
    (image.hashCode) +
    (integrityChecks.hashCode) +
    (job.hashCode) +
    (library_.hashCode) +
    (logging.hashCode) +
    (machineLearning.hashCode) +
    (map.hashCode) +
    (metadata.hashCode) +
    (newVersionCheck.hashCode) +
    (nightlyTasks.hashCode) +
    (notifications.hashCode) +
    (oauth.hashCode) +
    (passkey.hashCode) +
    (passwordLogin.hashCode) +
    (reverseGeocoding.hashCode) +
    (server.hashCode) +
    (storageTemplate.hashCode) +
    (templates.hashCode) +
    (theme.hashCode) +
    (trash.hashCode) +
    (user.hashCode);

  @override
  String toString() => 'AdminConfigDto[backup=$backup, ffmpeg=$ffmpeg, image=$image, integrityChecks=$integrityChecks, job=$job, library_=$library_, logging=$logging, machineLearning=$machineLearning, map=$map, metadata=$metadata, newVersionCheck=$newVersionCheck, nightlyTasks=$nightlyTasks, notifications=$notifications, oauth=$oauth, passkey=$passkey, passwordLogin=$passwordLogin, reverseGeocoding=$reverseGeocoding, server=$server, storageTemplate=$storageTemplate, templates=$templates, theme=$theme, trash=$trash, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'backup'] = this.backup;
      json[r'ffmpeg'] = this.ffmpeg;
      json[r'image'] = this.image;
      json[r'integrityChecks'] = this.integrityChecks;
      json[r'job'] = this.job;
      json[r'library'] = this.library_;
      json[r'logging'] = this.logging;
      json[r'machineLearning'] = this.machineLearning;
      json[r'map'] = this.map;
      json[r'metadata'] = this.metadata;
      json[r'newVersionCheck'] = this.newVersionCheck;
      json[r'nightlyTasks'] = this.nightlyTasks;
      json[r'notifications'] = this.notifications;
      json[r'oauth'] = this.oauth;
      json[r'passkey'] = this.passkey;
      json[r'passwordLogin'] = this.passwordLogin;
      json[r'reverseGeocoding'] = this.reverseGeocoding;
      json[r'server'] = this.server;
      json[r'storageTemplate'] = this.storageTemplate;
      json[r'templates'] = this.templates;
      json[r'theme'] = this.theme;
      json[r'trash'] = this.trash;
      json[r'user'] = this.user;
    return json;
  }

  /// Returns a new [AdminConfigDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigDto(
        backup: AdminConfigBackupsDto.fromJson(json[r'backup'])!,
        ffmpeg: AdminConfigFFmpegDto.fromJson(json[r'ffmpeg'])!,
        image: AdminConfigImageDto.fromJson(json[r'image'])!,
        integrityChecks: AdminConfigIntegrityChecksDto.fromJson(json[r'integrityChecks'])!,
        job: AdminConfigJobDto.fromJson(json[r'job'])!,
        library_: AdminConfigLibraryDto.fromJson(json[r'library'])!,
        logging: AdminConfigLoggingDto.fromJson(json[r'logging'])!,
        machineLearning: AdminConfigMachineLearningDto.fromJson(json[r'machineLearning'])!,
        map: AdminConfigMapDto.fromJson(json[r'map'])!,
        metadata: AdminConfigMetadataDto.fromJson(json[r'metadata'])!,
        newVersionCheck: AdminConfigNewVersionCheckDto.fromJson(json[r'newVersionCheck'])!,
        nightlyTasks: AdminConfigNightlyTasksDto.fromJson(json[r'nightlyTasks'])!,
        notifications: AdminConfigNotificationsDto.fromJson(json[r'notifications'])!,
        oauth: AdminConfigOAuthDto.fromJson(json[r'oauth'])!,
        passkey: AdminConfigPasskeyDto.fromJson(json[r'passkey'])!,
        passwordLogin: AdminConfigPasswordLoginDto.fromJson(json[r'passwordLogin'])!,
        reverseGeocoding: AdminConfigReverseGeocodingDto.fromJson(json[r'reverseGeocoding'])!,
        server: AdminConfigServerDto.fromJson(json[r'server'])!,
        storageTemplate: AdminConfigStorageTemplateDto.fromJson(json[r'storageTemplate'])!,
        templates: AdminConfigTemplatesDto.fromJson(json[r'templates'])!,
        theme: AdminConfigThemeDto.fromJson(json[r'theme'])!,
        trash: AdminConfigTrashDto.fromJson(json[r'trash'])!,
        user: AdminConfigUserDto.fromJson(json[r'user'])!,
      );
    }
    return null;
  }

  static List<AdminConfigDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigDto-objects as value to a dart map
  static Map<String, List<AdminConfigDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'backup',
    'ffmpeg',
    'image',
    'integrityChecks',
    'job',
    'library',
    'logging',
    'machineLearning',
    'map',
    'metadata',
    'newVersionCheck',
    'nightlyTasks',
    'notifications',
    'oauth',
    'passkey',
    'passwordLogin',
    'reverseGeocoding',
    'server',
    'storageTemplate',
    'templates',
    'theme',
    'trash',
    'user',
  };
}

