//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Sharing direction
enum SharingDirection {
  sharedBy._(r'shared-by'),
  sharedWith._(r'shared-with'),
  ;

  /// Instantiate a new enum with the provided value.
  const SharingDirection._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [SharingDirection] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static SharingDirection? fromJson(dynamic value) => SharingDirectionTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [SharingDirection]
  /// that were successfully decoded from the passed [JSON][json].
  static List<SharingDirection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SharingDirection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SharingDirection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SharingDirection] to String,
/// and [decode] dynamic data back to [SharingDirection].
class SharingDirectionTypeTransformer {
  factory SharingDirectionTypeTransformer() => _instance ??= const SharingDirectionTypeTransformer._();

  const SharingDirectionTypeTransformer._();

  /// Encodes this enum as a value suitable for JSON.
  String encode(SharingDirection data) => data._value;

  /// Returns the instance of [SharingDirection] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SharingDirection? decode(dynamic data, {bool allowNull = true}) {
    if (data is SharingDirection) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'shared-by': return SharingDirection.sharedBy;
        case r'shared-with': return SharingDirection.sharedWith;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static SharingDirectionTypeTransformer? _instance;
}

