//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssetProcessingEventV1 {
  /// Returns a new [AssetProcessingEventV1] instance.
  AssetProcessingEventV1({
    required this.assetId,
    required this.stage,
    required this.state,
  });

  String assetId;

  AssetProcessingStage stage;

  AssetProcessingState state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssetProcessingEventV1 &&
    other.assetId == assetId &&
    other.stage == stage &&
    other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId.hashCode) +
    (stage.hashCode) +
    (state.hashCode);

  @override
  String toString() => 'AssetProcessingEventV1[assetId=$assetId, stage=$stage, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assetId'] = this.assetId;
      json[r'stage'] = this.stage;
      json[r'state'] = this.state;
    return json;
  }

  /// Returns a new [AssetProcessingEventV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssetProcessingEventV1? fromJson(dynamic value) {
    upgradeDto(value, "AssetProcessingEventV1");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AssetProcessingEventV1(
        assetId: mapValueOfType<String>(json, r'assetId')!,
        stage: AssetProcessingStage.fromJson(json[r'stage'])!,
        state: AssetProcessingState.fromJson(json[r'state'])!,
      );
    }
    return null;
  }

  static List<AssetProcessingEventV1> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetProcessingEventV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetProcessingEventV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssetProcessingEventV1> mapFromJson(dynamic json) {
    final map = <String, AssetProcessingEventV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssetProcessingEventV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssetProcessingEventV1-objects as value to a dart map
  static Map<String, List<AssetProcessingEventV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssetProcessingEventV1>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssetProcessingEventV1.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assetId',
    'stage',
    'state',
  };
}

