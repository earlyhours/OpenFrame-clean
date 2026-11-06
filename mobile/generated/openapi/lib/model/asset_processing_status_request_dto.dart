//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssetProcessingStatusRequestDto {
  /// Returns a new [AssetProcessingStatusRequestDto] instance.
  AssetProcessingStatusRequestDto({
    this.assetIds = const [],
  });

  /// Between 1 and 100 readable asset IDs
  List<String> assetIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssetProcessingStatusRequestDto &&
    _deepEquality.equals(other.assetIds, assetIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetIds.hashCode);

  @override
  String toString() => 'AssetProcessingStatusRequestDto[assetIds=$assetIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assetIds'] = this.assetIds;
    return json;
  }

  /// Returns a new [AssetProcessingStatusRequestDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssetProcessingStatusRequestDto? fromJson(dynamic value) {
    upgradeDto(value, "AssetProcessingStatusRequestDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AssetProcessingStatusRequestDto(
        assetIds: json[r'assetIds'] is Iterable
            ? (json[r'assetIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<AssetProcessingStatusRequestDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetProcessingStatusRequestDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetProcessingStatusRequestDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssetProcessingStatusRequestDto> mapFromJson(dynamic json) {
    final map = <String, AssetProcessingStatusRequestDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssetProcessingStatusRequestDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssetProcessingStatusRequestDto-objects as value to a dart map
  static Map<String, List<AssetProcessingStatusRequestDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssetProcessingStatusRequestDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssetProcessingStatusRequestDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assetIds',
  };
}

