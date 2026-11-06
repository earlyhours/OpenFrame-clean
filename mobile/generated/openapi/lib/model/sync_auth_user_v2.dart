//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SyncAuthUserV2 {
  /// Returns a new [SyncAuthUserV2] instance.
  SyncAuthUserV2({
    this.avatarColor = const Optional.absent(),
    required this.deletedAt,
    required this.email,
    required this.hasProfileImage,
    required this.id,
    required this.isAdmin,
    required this.name,
    required this.oauthId,
    required this.pinCode,
    required this.profileChangedAt,
    required this.quotaSizeInBytes,
    required this.quotaUsageInBytes,
    required this.storageLabel,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<UserAvatarColor?> avatarColor;

  /// User deleted at
  DateTime? deletedAt;

  /// User email
  String email;

  /// User has profile image
  bool hasProfileImage;

  /// User ID
  String id;

  /// User is admin
  bool isAdmin;

  /// User name
  String name;

  /// User OAuth ID
  String? oauthId;

  /// User pin code
  String? pinCode;

  /// User profile changed at
  DateTime profileChangedAt;

  /// Quota size in bytes
  ///
  /// Minimum value: -9007199254740991
  /// Maximum value: 9007199254740991
  int? quotaSizeInBytes;

  /// Quota usage in bytes
  ///
  /// Minimum value: -9007199254740991
  /// Maximum value: 9007199254740991
  int quotaUsageInBytes;

  /// User storage label
  String? storageLabel;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SyncAuthUserV2 &&
    other.avatarColor == avatarColor &&
    other.deletedAt == deletedAt &&
    other.email == email &&
    other.hasProfileImage == hasProfileImage &&
    other.id == id &&
    other.isAdmin == isAdmin &&
    other.name == name &&
    other.oauthId == oauthId &&
    other.pinCode == pinCode &&
    other.profileChangedAt == profileChangedAt &&
    other.quotaSizeInBytes == quotaSizeInBytes &&
    other.quotaUsageInBytes == quotaUsageInBytes &&
    other.storageLabel == storageLabel;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avatarColor == null ? 0 : avatarColor!.hashCode) +
    (deletedAt == null ? 0 : deletedAt!.hashCode) +
    (email.hashCode) +
    (hasProfileImage.hashCode) +
    (id.hashCode) +
    (isAdmin.hashCode) +
    (name.hashCode) +
    (oauthId == null ? 0 : oauthId!.hashCode) +
    (pinCode == null ? 0 : pinCode!.hashCode) +
    (profileChangedAt.hashCode) +
    (quotaSizeInBytes == null ? 0 : quotaSizeInBytes!.hashCode) +
    (quotaUsageInBytes.hashCode) +
    (storageLabel == null ? 0 : storageLabel!.hashCode);

  @override
  String toString() => 'SyncAuthUserV2[avatarColor=$avatarColor, deletedAt=$deletedAt, email=$email, hasProfileImage=$hasProfileImage, id=$id, isAdmin=$isAdmin, name=$name, oauthId=$oauthId, pinCode=$pinCode, profileChangedAt=$profileChangedAt, quotaSizeInBytes=$quotaSizeInBytes, quotaUsageInBytes=$quotaUsageInBytes, storageLabel=$storageLabel]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avatarColor.isPresent) {
      final value = this.avatarColor.value;
      json[r'avatarColor'] = value;
    }
    if (this.deletedAt != null) {
      json[r'deletedAt'] = _isEpochMarker(r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z|([+-](?:[01]\\d|2[0-3]):[0-5]\\d)))$/')
        ? this.deletedAt!.millisecondsSinceEpoch
        : this.deletedAt!.toUtc().toIso8601String();
    } else {
      json[r'deletedAt'] = null;
    }
      json[r'email'] = this.email;
      json[r'hasProfileImage'] = this.hasProfileImage;
      json[r'id'] = this.id;
      json[r'isAdmin'] = this.isAdmin;
      json[r'name'] = this.name;
    if (this.oauthId != null) {
      json[r'oauthId'] = this.oauthId;
    } else {
      json[r'oauthId'] = null;
    }
    if (this.pinCode != null) {
      json[r'pinCode'] = this.pinCode;
    } else {
      json[r'pinCode'] = null;
    }
      json[r'profileChangedAt'] = _isEpochMarker(r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z|([+-](?:[01]\\d|2[0-3]):[0-5]\\d)))$/')
        ? this.profileChangedAt.millisecondsSinceEpoch
        : this.profileChangedAt.toUtc().toIso8601String();
    if (this.quotaSizeInBytes != null) {
      json[r'quotaSizeInBytes'] = this.quotaSizeInBytes;
    } else {
      json[r'quotaSizeInBytes'] = null;
    }
      json[r'quotaUsageInBytes'] = this.quotaUsageInBytes;
    if (this.storageLabel != null) {
      json[r'storageLabel'] = this.storageLabel;
    } else {
      json[r'storageLabel'] = null;
    }
    return json;
  }

  /// Returns a new [SyncAuthUserV2] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SyncAuthUserV2? fromJson(dynamic value) {
    upgradeDto(value, "SyncAuthUserV2");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return SyncAuthUserV2(
        avatarColor: json.containsKey(r'avatarColor') ? Optional.present(UserAvatarColor.fromJson(json[r'avatarColor'])) : const Optional.absent(),
        deletedAt: mapDateTime(json, r'deletedAt', r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z|([+-](?:[01]\\d|2[0-3]):[0-5]\\d)))$/'),
        email: mapValueOfType<String>(json, r'email')!,
        hasProfileImage: mapValueOfType<bool>(json, r'hasProfileImage')!,
        id: mapValueOfType<String>(json, r'id')!,
        isAdmin: mapValueOfType<bool>(json, r'isAdmin')!,
        name: mapValueOfType<String>(json, r'name')!,
        oauthId: mapValueOfType<String>(json, r'oauthId'),
        pinCode: mapValueOfType<String>(json, r'pinCode'),
        profileChangedAt: mapDateTime(json, r'profileChangedAt', r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z|([+-](?:[01]\\d|2[0-3]):[0-5]\\d)))$/')!,
        quotaSizeInBytes: mapValueOfType<int>(json, r'quotaSizeInBytes'),
        quotaUsageInBytes: mapValueOfType<int>(json, r'quotaUsageInBytes')!,
        storageLabel: mapValueOfType<String>(json, r'storageLabel'),
      );
    }
    return null;
  }

  static List<SyncAuthUserV2> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SyncAuthUserV2>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SyncAuthUserV2.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SyncAuthUserV2> mapFromJson(dynamic json) {
    final map = <String, SyncAuthUserV2>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SyncAuthUserV2.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SyncAuthUserV2-objects as value to a dart map
  static Map<String, List<SyncAuthUserV2>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SyncAuthUserV2>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SyncAuthUserV2.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'deletedAt',
    'email',
    'hasProfileImage',
    'id',
    'isAdmin',
    'name',
    'oauthId',
    'pinCode',
    'profileChangedAt',
    'quotaSizeInBytes',
    'quotaUsageInBytes',
    'storageLabel',
  };
}

