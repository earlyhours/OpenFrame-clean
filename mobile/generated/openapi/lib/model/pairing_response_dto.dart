//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PairingResponseDto {
  /// Returns a new [PairingResponseDto] instance.
  PairingResponseDto({
    required this.code,
    required this.expiresAt,
    required this.id,
    this.serverUrls = const [],
  });

  String code;

  DateTime expiresAt;

  String id;

  List<String> serverUrls;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PairingResponseDto &&
    other.code == code &&
    other.expiresAt == expiresAt &&
    other.id == id &&
    _deepEquality.equals(other.serverUrls, serverUrls);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (expiresAt.hashCode) +
    (id.hashCode) +
    (serverUrls.hashCode);

  @override
  String toString() => 'PairingResponseDto[code=$code, expiresAt=$expiresAt, id=$id, serverUrls=$serverUrls]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = this.code;
      json[r'expiresAt'] = _isEpochMarker(r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z))$/')
        ? this.expiresAt.millisecondsSinceEpoch
        : this.expiresAt.toUtc().toIso8601String();
      json[r'id'] = this.id;
      json[r'serverUrls'] = this.serverUrls;
    return json;
  }

  /// Returns a new [PairingResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PairingResponseDto? fromJson(dynamic value) {
    upgradeDto(value, "PairingResponseDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PairingResponseDto(
        code: mapValueOfType<String>(json, r'code')!,
        expiresAt: mapDateTime(json, r'expiresAt', r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z))$/')!,
        id: mapValueOfType<String>(json, r'id')!,
        serverUrls: json[r'serverUrls'] is Iterable
            ? (json[r'serverUrls'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PairingResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PairingResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PairingResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PairingResponseDto> mapFromJson(dynamic json) {
    final map = <String, PairingResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PairingResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PairingResponseDto-objects as value to a dart map
  static Map<String, List<PairingResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PairingResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PairingResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
    'expiresAt',
    'id',
    'serverUrls',
  };
}

