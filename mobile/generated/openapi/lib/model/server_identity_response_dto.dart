//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ServerIdentityResponseDto {
  /// Returns a new [ServerIdentityResponseDto] instance.
  ServerIdentityResponseDto({
    required this.proof,
    required this.serverId,
  });

  /// HMAC-SHA256 of the nonce, in hexadecimal
  String proof;

  /// SHA-256 fingerprint of the persistent instance secret
  String serverId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerIdentityResponseDto &&
    other.proof == proof &&
    other.serverId == serverId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (proof.hashCode) +
    (serverId.hashCode);

  @override
  String toString() => 'ServerIdentityResponseDto[proof=$proof, serverId=$serverId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'proof'] = this.proof;
      json[r'serverId'] = this.serverId;
    return json;
  }

  /// Returns a new [ServerIdentityResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerIdentityResponseDto? fromJson(dynamic value) {
    upgradeDto(value, "ServerIdentityResponseDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return ServerIdentityResponseDto(
        proof: mapValueOfType<String>(json, r'proof')!,
        serverId: mapValueOfType<String>(json, r'serverId')!,
      );
    }
    return null;
  }

  static List<ServerIdentityResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerIdentityResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerIdentityResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerIdentityResponseDto> mapFromJson(dynamic json) {
    final map = <String, ServerIdentityResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerIdentityResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerIdentityResponseDto-objects as value to a dart map
  static Map<String, List<ServerIdentityResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerIdentityResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerIdentityResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'proof',
    'serverId',
  };
}

