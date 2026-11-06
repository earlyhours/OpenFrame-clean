//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


enum AssetProcessingState {
  pending._(r'pending'),
  complete._(r'complete'),
  skipped._(r'skipped'),
  failed._(r'failed'),
  ;

  /// Instantiate a new enum with the provided value.
  const AssetProcessingState._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [AssetProcessingState] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static AssetProcessingState? fromJson(dynamic value) => AssetProcessingStateTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [AssetProcessingState]
  /// that were successfully decoded from the passed [JSON][json].
  static List<AssetProcessingState> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetProcessingState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetProcessingState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssetProcessingState] to String,
/// and [decode] dynamic data back to [AssetProcessingState].
class AssetProcessingStateTypeTransformer {
  factory AssetProcessingStateTypeTransformer() => _instance ??= const AssetProcessingStateTypeTransformer._();

  const AssetProcessingStateTypeTransformer._();

  /// Encodes this enum as a value suitable for JSON.
  String encode(AssetProcessingState data) => data._value;

  /// Returns the instance of [AssetProcessingState] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssetProcessingState? decode(dynamic data, {bool allowNull = true}) {
    if (data is AssetProcessingState) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'pending': return AssetProcessingState.pending;
        case r'complete': return AssetProcessingState.complete;
        case r'skipped': return AssetProcessingState.skipped;
        case r'failed': return AssetProcessingState.failed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static AssetProcessingStateTypeTransformer? _instance;
}

