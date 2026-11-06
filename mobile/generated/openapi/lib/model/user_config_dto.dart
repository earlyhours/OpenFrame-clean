//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserConfigDto {
  /// Returns a new [UserConfigDto] instance.
  UserConfigDto({
    required this.ffmpeg,
    required this.image,
    required this.machineLearning,
    required this.map,
    required this.notifications,
    required this.oauth,
    required this.passkey,
    required this.passwordLogin,
    required this.reverseGeocoding,
    required this.server,
    required this.trash,
    required this.user,
  });

  UserConfigFFmpegDto ffmpeg;

  UserConfigImageDto image;

  UserConfigMachineLearningDto machineLearning;

  UserConfigMapDto map;

  UserConfigNotificationsDto notifications;

  UserConfigOAuthDto oauth;

  UserConfigPasskeyDto passkey;

  UserConfigPasswordLoginDto passwordLogin;

  UserConfigReverseGeocodingDto reverseGeocoding;

  UserConfigServerDto server;

  UserConfigTrashDto trash;

  UserConfigUserDto user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserConfigDto &&
    other.ffmpeg == ffmpeg &&
    other.image == image &&
    other.machineLearning == machineLearning &&
    other.map == map &&
    other.notifications == notifications &&
    other.oauth == oauth &&
    other.passkey == passkey &&
    other.passwordLogin == passwordLogin &&
    other.reverseGeocoding == reverseGeocoding &&
    other.server == server &&
    other.trash == trash &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ffmpeg.hashCode) +
    (image.hashCode) +
    (machineLearning.hashCode) +
    (map.hashCode) +
    (notifications.hashCode) +
    (oauth.hashCode) +
    (passkey.hashCode) +
    (passwordLogin.hashCode) +
    (reverseGeocoding.hashCode) +
    (server.hashCode) +
    (trash.hashCode) +
    (user.hashCode);

  @override
  String toString() => 'UserConfigDto[ffmpeg=$ffmpeg, image=$image, machineLearning=$machineLearning, map=$map, notifications=$notifications, oauth=$oauth, passkey=$passkey, passwordLogin=$passwordLogin, reverseGeocoding=$reverseGeocoding, server=$server, trash=$trash, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ffmpeg'] = this.ffmpeg;
      json[r'image'] = this.image;
      json[r'machineLearning'] = this.machineLearning;
      json[r'map'] = this.map;
      json[r'notifications'] = this.notifications;
      json[r'oauth'] = this.oauth;
      json[r'passkey'] = this.passkey;
      json[r'passwordLogin'] = this.passwordLogin;
      json[r'reverseGeocoding'] = this.reverseGeocoding;
      json[r'server'] = this.server;
      json[r'trash'] = this.trash;
      json[r'user'] = this.user;
    return json;
  }

  /// Returns a new [UserConfigDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserConfigDto? fromJson(dynamic value) {
    upgradeDto(value, "UserConfigDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return UserConfigDto(
        ffmpeg: UserConfigFFmpegDto.fromJson(json[r'ffmpeg'])!,
        image: UserConfigImageDto.fromJson(json[r'image'])!,
        machineLearning: UserConfigMachineLearningDto.fromJson(json[r'machineLearning'])!,
        map: UserConfigMapDto.fromJson(json[r'map'])!,
        notifications: UserConfigNotificationsDto.fromJson(json[r'notifications'])!,
        oauth: UserConfigOAuthDto.fromJson(json[r'oauth'])!,
        passkey: UserConfigPasskeyDto.fromJson(json[r'passkey'])!,
        passwordLogin: UserConfigPasswordLoginDto.fromJson(json[r'passwordLogin'])!,
        reverseGeocoding: UserConfigReverseGeocodingDto.fromJson(json[r'reverseGeocoding'])!,
        server: UserConfigServerDto.fromJson(json[r'server'])!,
        trash: UserConfigTrashDto.fromJson(json[r'trash'])!,
        user: UserConfigUserDto.fromJson(json[r'user'])!,
      );
    }
    return null;
  }

  static List<UserConfigDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserConfigDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserConfigDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserConfigDto> mapFromJson(dynamic json) {
    final map = <String, UserConfigDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserConfigDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserConfigDto-objects as value to a dart map
  static Map<String, List<UserConfigDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserConfigDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserConfigDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ffmpeg',
    'image',
    'machineLearning',
    'map',
    'notifications',
    'oauth',
    'passkey',
    'passwordLogin',
    'reverseGeocoding',
    'server',
    'trash',
    'user',
  };
}

