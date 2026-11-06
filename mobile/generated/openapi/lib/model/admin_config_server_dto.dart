//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminConfigServerDto {
  /// Returns a new [AdminConfigServerDto] instance.
  AdminConfigServerDto({
    this.autoDetectLocalUrls = const Optional.absent(),
    required this.externalDomain,
    this.localUrls = const Optional.present(const []),
    required this.loginPageMessage,
    required this.publicUsers,
  });

  /// Advertise private interface addresses using the server port
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<bool?> autoDetectLocalUrls;

  /// External domain
  String externalDomain;

  /// LAN base URLs, including any reverse proxy path. Only disclosed to authenticated users
  Optional<List<String>?> localUrls;

  /// Login page message
  String loginPageMessage;

  /// Public users
  bool publicUsers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminConfigServerDto &&
    other.autoDetectLocalUrls == autoDetectLocalUrls &&
    other.externalDomain == externalDomain &&
    _deepEquality.equals(other.localUrls, localUrls) &&
    other.loginPageMessage == loginPageMessage &&
    other.publicUsers == publicUsers;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (autoDetectLocalUrls == null ? 0 : autoDetectLocalUrls!.hashCode) +
    (externalDomain.hashCode) +
    (localUrls.hashCode) +
    (loginPageMessage.hashCode) +
    (publicUsers.hashCode);

  @override
  String toString() => 'AdminConfigServerDto[autoDetectLocalUrls=$autoDetectLocalUrls, externalDomain=$externalDomain, localUrls=$localUrls, loginPageMessage=$loginPageMessage, publicUsers=$publicUsers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.autoDetectLocalUrls.isPresent) {
      final value = this.autoDetectLocalUrls.value;
      json[r'autoDetectLocalUrls'] = value;
    }
      json[r'externalDomain'] = this.externalDomain;
    if (this.localUrls.isPresent) {
      final value = this.localUrls.value;
      json[r'localUrls'] = value;
    }
      json[r'loginPageMessage'] = this.loginPageMessage;
      json[r'publicUsers'] = this.publicUsers;
    return json;
  }

  /// Returns a new [AdminConfigServerDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminConfigServerDto? fromJson(dynamic value) {
    upgradeDto(value, "AdminConfigServerDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AdminConfigServerDto(
        autoDetectLocalUrls: json.containsKey(r'autoDetectLocalUrls') ? Optional.present(mapValueOfType<bool>(json, r'autoDetectLocalUrls')) : const Optional.absent(),
        externalDomain: mapValueOfType<String>(json, r'externalDomain')!,
        localUrls: json.containsKey(r'localUrls') ? Optional.present(json[r'localUrls'] is Iterable
            ? (json[r'localUrls'] as Iterable).cast<String>().toList(growable: false)
            : const []) : const Optional.absent(),
        loginPageMessage: mapValueOfType<String>(json, r'loginPageMessage')!,
        publicUsers: mapValueOfType<bool>(json, r'publicUsers')!,
      );
    }
    return null;
  }

  static List<AdminConfigServerDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminConfigServerDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminConfigServerDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminConfigServerDto> mapFromJson(dynamic json) {
    final map = <String, AdminConfigServerDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminConfigServerDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminConfigServerDto-objects as value to a dart map
  static Map<String, List<AdminConfigServerDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminConfigServerDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminConfigServerDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'externalDomain',
    'loginPageMessage',
    'publicUsers',
  };
}

