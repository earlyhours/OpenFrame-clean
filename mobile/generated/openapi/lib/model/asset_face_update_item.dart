//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssetFaceUpdateItem {
  /// Returns a new [AssetFaceUpdateItem] instance.
  AssetFaceUpdateItem({
    required this.assetId,
    required this.personId,
    this.userId = const Optional.absent(),
  });

  /// Asset ID
  String assetId;

  /// Person ID
  String personId;

  /// User ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<String?> userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssetFaceUpdateItem &&
    other.assetId == assetId &&
    other.personId == personId &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId.hashCode) +
    (personId.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'AssetFaceUpdateItem[assetId=$assetId, personId=$personId, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assetId'] = this.assetId;
      json[r'personId'] = this.personId;
    if (this.userId.isPresent) {
      final value = this.userId.value;
      json[r'userId'] = value;
    }
    return json;
  }

  /// Returns a new [AssetFaceUpdateItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssetFaceUpdateItem? fromJson(dynamic value) {
    upgradeDto(value, "AssetFaceUpdateItem");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AssetFaceUpdateItem(
        assetId: mapValueOfType<String>(json, r'assetId')!,
        personId: mapValueOfType<String>(json, r'personId')!,
        userId: json.containsKey(r'userId') ? Optional.present(mapValueOfType<String>(json, r'userId')) : const Optional.absent(),
      );
    }
    return null;
  }

  static List<AssetFaceUpdateItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetFaceUpdateItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetFaceUpdateItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssetFaceUpdateItem> mapFromJson(dynamic json) {
    final map = <String, AssetFaceUpdateItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssetFaceUpdateItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssetFaceUpdateItem-objects as value to a dart map
  static Map<String, List<AssetFaceUpdateItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssetFaceUpdateItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssetFaceUpdateItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assetId',
    'personId',
  };
}

