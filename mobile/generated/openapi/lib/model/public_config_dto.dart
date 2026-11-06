//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PublicConfigDto {
  /// Returns a new [PublicConfigDto] instance.
  PublicConfigDto({
    required this.ffmpeg,
    required this.map,
    required this.oauth,
    required this.passkey,
    required this.passwordLogin,
    required this.server,
  });

  PublicConfigFFmpegDto ffmpeg;

  PublicConfigMapDto map;

  PublicConfigOAuthDto oauth;

  PublicConfigPasskeyDto passkey;

  PublicConfigPasswordLoginDto passwordLogin;

  PublicConfigServerDto server;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicConfigDto &&
    other.ffmpeg == ffmpeg &&
    other.map == map &&
    other.oauth == oauth &&
    other.passkey == passkey &&
    other.passwordLogin == passwordLogin &&
    other.server == server;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ffmpeg.hashCode) +
    (map.hashCode) +
    (oauth.hashCode) +
    (passkey.hashCode) +
    (passwordLogin.hashCode) +
    (server.hashCode);

  @override
  String toString() => 'PublicConfigDto[ffmpeg=$ffmpeg, map=$map, oauth=$oauth, passkey=$passkey, passwordLogin=$passwordLogin, server=$server]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ffmpeg'] = this.ffmpeg;
      json[r'map'] = this.map;
      json[r'oauth'] = this.oauth;
      json[r'passkey'] = this.passkey;
      json[r'passwordLogin'] = this.passwordLogin;
      json[r'server'] = this.server;
    return json;
  }

  /// Returns a new [PublicConfigDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicConfigDto? fromJson(dynamic value) {
    upgradeDto(value, "PublicConfigDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PublicConfigDto(
        ffmpeg: PublicConfigFFmpegDto.fromJson(json[r'ffmpeg'])!,
        map: PublicConfigMapDto.fromJson(json[r'map'])!,
        oauth: PublicConfigOAuthDto.fromJson(json[r'oauth'])!,
        passkey: PublicConfigPasskeyDto.fromJson(json[r'passkey'])!,
        passwordLogin: PublicConfigPasswordLoginDto.fromJson(json[r'passwordLogin'])!,
        server: PublicConfigServerDto.fromJson(json[r'server'])!,
      );
    }
    return null;
  }

  static List<PublicConfigDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicConfigDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicConfigDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicConfigDto> mapFromJson(dynamic json) {
    final map = <String, PublicConfigDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicConfigDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicConfigDto-objects as value to a dart map
  static Map<String, List<PublicConfigDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicConfigDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicConfigDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ffmpeg',
    'map',
    'oauth',
    'passkey',
    'passwordLogin',
    'server',
  };
}

