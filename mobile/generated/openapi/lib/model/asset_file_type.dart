//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Type of file
enum AssetFileType {
  fullsize._(r'fullsize'),
  preview._(r'preview'),
  thumbnail._(r'thumbnail'),
  sidecar._(r'sidecar'),
  encodedVideo._(r'encoded_video'),
  ;

  /// Instantiate a new enum with the provided value.
  const AssetFileType._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [AssetFileType] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static AssetFileType? fromJson(dynamic value) => AssetFileTypeTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [AssetFileType]
  /// that were successfully decoded from the passed [JSON][json].
  static List<AssetFileType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetFileType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetFileType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssetFileType] to String,
/// and [decode] dynamic data back to [AssetFileType].
class AssetFileTypeTypeTransformer {
  factory AssetFileTypeTypeTransformer() => _instance ??= const AssetFileTypeTypeTransformer._();

  const AssetFileTypeTypeTransformer._();

  /// Encodes this enum as a value suitable for JSON.
  String encode(AssetFileType data) => data._value;

  /// Returns the instance of [AssetFileType] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssetFileType? decode(dynamic data, {bool allowNull = true}) {
    if (data is AssetFileType) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'fullsize': return AssetFileType.fullsize;
        case r'preview': return AssetFileType.preview;
        case r'thumbnail': return AssetFileType.thumbnail;
        case r'sidecar': return AssetFileType.sidecar;
        case r'encoded_video': return AssetFileType.encodedVideo;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static AssetFileTypeTypeTransformer? _instance;
}

