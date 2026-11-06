//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


enum AssetProcessingStage {
  uploaded._(r'uploaded'),
  metadata._(r'metadata'),
  thumbnails._(r'thumbnails'),
  video._(r'video'),
  smartSearch._(r'smartSearch'),
  faces._(r'faces'),
  ;

  /// Instantiate a new enum with the provided value.
  const AssetProcessingStage._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [AssetProcessingStage] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static AssetProcessingStage? fromJson(dynamic value) => AssetProcessingStageTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [AssetProcessingStage]
  /// that were successfully decoded from the passed [JSON][json].
  static List<AssetProcessingStage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetProcessingStage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetProcessingStage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssetProcessingStage] to String,
/// and [decode] dynamic data back to [AssetProcessingStage].
class AssetProcessingStageTypeTransformer {
  factory AssetProcessingStageTypeTransformer() => _instance ??= const AssetProcessingStageTypeTransformer._();

  const AssetProcessingStageTypeTransformer._();

  /// Encodes this enum as a value suitable for JSON.
  String encode(AssetProcessingStage data) => data._value;

  /// Returns the instance of [AssetProcessingStage] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssetProcessingStage? decode(dynamic data, {bool allowNull = true}) {
    if (data is AssetProcessingStage) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'uploaded': return AssetProcessingStage.uploaded;
        case r'metadata': return AssetProcessingStage.metadata;
        case r'thumbnails': return AssetProcessingStage.thumbnails;
        case r'video': return AssetProcessingStage.video;
        case r'smartSearch': return AssetProcessingStage.smartSearch;
        case r'faces': return AssetProcessingStage.faces;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static AssetProcessingStageTypeTransformer? _instance;
}

