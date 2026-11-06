//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserConfigOAuthDto {
  /// Returns a new [UserConfigOAuthDto] instance.
  UserConfigOAuthDto({
    this.accountManagementUrl = const Optional.present(''),
    required this.autoLaunch,
    required this.buttonText,
    required this.enabled,
  });

  /// Account management URL
  Optional<String?> accountManagementUrl;

  /// Auto launch
  bool autoLaunch;

  /// Button text
  String buttonText;

  /// Enabled
  bool enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserConfigOAuthDto &&
    other.accountManagementUrl == accountManagementUrl &&
    other.autoLaunch == autoLaunch &&
    other.buttonText == buttonText &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountManagementUrl.hashCode) +
    (autoLaunch.hashCode) +
    (buttonText.hashCode) +
    (enabled.hashCode);

  @override
  String toString() => 'UserConfigOAuthDto[accountManagementUrl=$accountManagementUrl, autoLaunch=$autoLaunch, buttonText=$buttonText, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountManagementUrl.isPresent) {
      final value = this.accountManagementUrl.value;
      json[r'accountManagementUrl'] = value;
    }
      json[r'autoLaunch'] = this.autoLaunch;
      json[r'buttonText'] = this.buttonText;
      json[r'enabled'] = this.enabled;
    return json;
  }

  /// Returns a new [UserConfigOAuthDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserConfigOAuthDto? fromJson(dynamic value) {
    upgradeDto(value, "UserConfigOAuthDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return UserConfigOAuthDto(
        accountManagementUrl: json.containsKey(r'accountManagementUrl') ? Optional.present(mapValueOfType<String>(json, r'accountManagementUrl')) : const Optional.absent(),
        autoLaunch: mapValueOfType<bool>(json, r'autoLaunch')!,
        buttonText: mapValueOfType<String>(json, r'buttonText')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
      );
    }
    return null;
  }

  static List<UserConfigOAuthDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserConfigOAuthDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserConfigOAuthDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserConfigOAuthDto> mapFromJson(dynamic json) {
    final map = <String, UserConfigOAuthDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserConfigOAuthDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserConfigOAuthDto-objects as value to a dart map
  static Map<String, List<UserConfigOAuthDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserConfigOAuthDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserConfigOAuthDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'autoLaunch',
    'buttonText',
    'enabled',
  };
}

