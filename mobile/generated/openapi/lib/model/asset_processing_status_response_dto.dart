//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssetProcessingStatusResponseDto {
  /// Returns a new [AssetProcessingStatusResponseDto] instance.
  AssetProcessingStatusResponseDto({
    required this.assetId,
    this.stages = const [],
  });

  String assetId;

  List<AssetProcessingStatusResponseDtoStagesInner> stages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssetProcessingStatusResponseDto &&
    other.assetId == assetId &&
    _deepEquality.equals(other.stages, stages);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId.hashCode) +
    (stages.hashCode);

  @override
  String toString() => 'AssetProcessingStatusResponseDto[assetId=$assetId, stages=$stages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assetId'] = this.assetId;
      json[r'stages'] = this.stages;
    return json;
  }

  /// Returns a new [AssetProcessingStatusResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssetProcessingStatusResponseDto? fromJson(dynamic value) {
    upgradeDto(value, "AssetProcessingStatusResponseDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AssetProcessingStatusResponseDto(
        assetId: mapValueOfType<String>(json, r'assetId')!,
        stages: AssetProcessingStatusResponseDtoStagesInner.listFromJson(json[r'stages']),
      );
    }
    return null;
  }

  static List<AssetProcessingStatusResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetProcessingStatusResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetProcessingStatusResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssetProcessingStatusResponseDto> mapFromJson(dynamic json) {
    final map = <String, AssetProcessingStatusResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssetProcessingStatusResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssetProcessingStatusResponseDto-objects as value to a dart map
  static Map<String, List<AssetProcessingStatusResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssetProcessingStatusResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssetProcessingStatusResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assetId',
    'stages',
  };
}

