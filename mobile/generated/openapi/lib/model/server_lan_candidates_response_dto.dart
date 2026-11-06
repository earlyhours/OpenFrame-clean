//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ServerLanCandidatesResponseDto {
  /// Returns a new [ServerLanCandidatesResponseDto] instance.
  ServerLanCandidatesResponseDto({
    required this.proof,
    required this.serverId,
    this.urls = const [],
  });

  /// HMAC-SHA256 of the nonce, in hexadecimal
  String proof;

  /// SHA-256 fingerprint of the persistent instance secret
  String serverId;

  /// Candidate LAN base URLs without /api, unless explicitly configured
  List<String> urls;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerLanCandidatesResponseDto &&
    other.proof == proof &&
    other.serverId == serverId &&
    _deepEquality.equals(other.urls, urls);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (proof.hashCode) +
    (serverId.hashCode) +
    (urls.hashCode);

  @override
  String toString() => 'ServerLanCandidatesResponseDto[proof=$proof, serverId=$serverId, urls=$urls]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'proof'] = this.proof;
      json[r'serverId'] = this.serverId;
      json[r'urls'] = this.urls;
    return json;
  }

  /// Returns a new [ServerLanCandidatesResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerLanCandidatesResponseDto? fromJson(dynamic value) {
    upgradeDto(value, "ServerLanCandidatesResponseDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return ServerLanCandidatesResponseDto(
        proof: mapValueOfType<String>(json, r'proof')!,
        serverId: mapValueOfType<String>(json, r'serverId')!,
        urls: json[r'urls'] is Iterable
            ? (json[r'urls'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ServerLanCandidatesResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerLanCandidatesResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerLanCandidatesResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerLanCandidatesResponseDto> mapFromJson(dynamic json) {
    final map = <String, ServerLanCandidatesResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerLanCandidatesResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerLanCandidatesResponseDto-objects as value to a dart map
  static Map<String, List<ServerLanCandidatesResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerLanCandidatesResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerLanCandidatesResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'proof',
    'serverId',
    'urls',
  };
}

