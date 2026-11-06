//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Server feature level
enum ServerFeatureLevel {
  FeatureLevel._(1),
  ;

  /// Instantiate a new enum with the provided value.
  const ServerFeatureLevel._(this._value);

  /// The underlying value of this enum member.
  final int _value;

  @override
  String toString() => _value.toString();

  /// Encodes this enum as a value suitable for JSON.
  int toJson() => _value;

  /// Returns the instance of [ServerFeatureLevel] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static ServerFeatureLevel? fromJson(dynamic value) => ServerFeatureLevelTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [ServerFeatureLevel]
  /// that were successfully decoded from the passed [JSON][json].
  static List<ServerFeatureLevel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerFeatureLevel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerFeatureLevel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ServerFeatureLevel] to int,
/// and [decode] dynamic data back to [ServerFeatureLevel].
class ServerFeatureLevelTypeTransformer {
  factory ServerFeatureLevelTypeTransformer() => _instance ??= const ServerFeatureLevelTypeTransformer._();

  const ServerFeatureLevelTypeTransformer._();

  /// Encodes this enum as a value suitable for JSON.
  int encode(ServerFeatureLevel data) => data._value;

  /// Returns the instance of [ServerFeatureLevel] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ServerFeatureLevel? decode(dynamic data, {bool allowNull = true}) {
    if (data is ServerFeatureLevel) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case 1: return ServerFeatureLevel.FeatureLevel;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static ServerFeatureLevelTypeTransformer? _instance;
}

