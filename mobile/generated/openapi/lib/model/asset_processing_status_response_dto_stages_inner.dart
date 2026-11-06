//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssetProcessingStatusResponseDtoStagesInner {
  /// Returns a new [AssetProcessingStatusResponseDtoStagesInner] instance.
  AssetProcessingStatusResponseDtoStagesInner({
    required this.stage,
    required this.state,
  });

  AssetProcessingStage stage;

  AssetProcessingState state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssetProcessingStatusResponseDtoStagesInner &&
    other.stage == stage &&
    other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (stage.hashCode) +
    (state.hashCode);

  @override
  String toString() => 'AssetProcessingStatusResponseDtoStagesInner[stage=$stage, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'stage'] = this.stage;
      json[r'state'] = this.state;
    return json;
  }

  /// Returns a new [AssetProcessingStatusResponseDtoStagesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssetProcessingStatusResponseDtoStagesInner? fromJson(dynamic value) {
    upgradeDto(value, "AssetProcessingStatusResponseDtoStagesInner");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AssetProcessingStatusResponseDtoStagesInner(
        stage: AssetProcessingStage.fromJson(json[r'stage'])!,
        state: AssetProcessingState.fromJson(json[r'state'])!,
      );
    }
    return null;
  }

  static List<AssetProcessingStatusResponseDtoStagesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetProcessingStatusResponseDtoStagesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetProcessingStatusResponseDtoStagesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssetProcessingStatusResponseDtoStagesInner> mapFromJson(dynamic json) {
    final map = <String, AssetProcessingStatusResponseDtoStagesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssetProcessingStatusResponseDtoStagesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssetProcessingStatusResponseDtoStagesInner-objects as value to a dart map
  static Map<String, List<AssetProcessingStatusResponseDtoStagesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssetProcessingStatusResponseDtoStagesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssetProcessingStatusResponseDtoStagesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'stage',
    'state',
  };
}

