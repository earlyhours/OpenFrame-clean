//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiKeyCreateResponseDto {
  /// Returns a new [ApiKeyCreateResponseDto] instance.
  ApiKeyCreateResponseDto({
    required this.apiKey,
    required this.createdAt,
    required this.id,
    required this.name,
    this.permissions = const [],
    required this.secret,
    required this.updatedAt,
  });

  ApiKeyResponseDto apiKey;

  /// Creation date
  DateTime createdAt;

  /// API key ID
  String id;

  /// API key name
  String name;

  /// List of permissions
  List<Permission> permissions;

  /// API key secret (only shown once)
  String secret;

  /// Last update date
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiKeyCreateResponseDto &&
    other.apiKey == apiKey &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.name == name &&
    _deepEquality.equals(other.permissions, permissions) &&
    other.secret == secret &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apiKey.hashCode) +
    (createdAt.hashCode) +
    (id.hashCode) +
    (name.hashCode) +
    (permissions.hashCode) +
    (secret.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'ApiKeyCreateResponseDto[apiKey=$apiKey, createdAt=$createdAt, id=$id, name=$name, permissions=$permissions, secret=$secret, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'apiKey'] = this.apiKey;
      json[r'createdAt'] = _isEpochMarker(r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z|([+-](?:[01]\\d|2[0-3]):[0-5]\\d)))$/')
        ? this.createdAt.millisecondsSinceEpoch
        : this.createdAt.toUtc().toIso8601String();
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'permissions'] = this.permissions;
      json[r'secret'] = this.secret;
      json[r'updatedAt'] = _isEpochMarker(r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z|([+-](?:[01]\\d|2[0-3]):[0-5]\\d)))$/')
        ? this.updatedAt.millisecondsSinceEpoch
        : this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ApiKeyCreateResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiKeyCreateResponseDto? fromJson(dynamic value) {
    upgradeDto(value, "ApiKeyCreateResponseDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return ApiKeyCreateResponseDto(
        apiKey: ApiKeyResponseDto.fromJson(json[r'apiKey'])!,
        createdAt: mapDateTime(json, r'createdAt', r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z|([+-](?:[01]\\d|2[0-3]):[0-5]\\d)))$/')!,
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        permissions: Permission.listFromJson(json[r'permissions']),
        secret: mapValueOfType<String>(json, r'secret')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z|([+-](?:[01]\\d|2[0-3]):[0-5]\\d)))$/')!,
      );
    }
    return null;
  }

  static List<ApiKeyCreateResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiKeyCreateResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiKeyCreateResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiKeyCreateResponseDto> mapFromJson(dynamic json) {
    final map = <String, ApiKeyCreateResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiKeyCreateResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiKeyCreateResponseDto-objects as value to a dart map
  static Map<String, List<ApiKeyCreateResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiKeyCreateResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiKeyCreateResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'apiKey',
    'createdAt',
    'id',
    'name',
    'permissions',
    'secret',
    'updatedAt',
  };
}

