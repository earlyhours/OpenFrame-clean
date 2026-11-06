//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


enum PairingState {
  pending._(r'pending'),
  redeemed._(r'redeemed'),
  expired._(r'expired'),
  locked._(r'locked'),
  ;

  /// Instantiate a new enum with the provided value.
  const PairingState._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [PairingState] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static PairingState? fromJson(dynamic value) => PairingStateTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [PairingState]
  /// that were successfully decoded from the passed [JSON][json].
  static List<PairingState> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PairingState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PairingState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PairingState] to String,
/// and [decode] dynamic data back to [PairingState].
class PairingStateTypeTransformer {
  factory PairingStateTypeTransformer() => _instance ??= const PairingStateTypeTransformer._();

  const PairingStateTypeTransformer._();

  /// Encodes this enum as a value suitable for JSON.
  String encode(PairingState data) => data._value;

  /// Returns the instance of [PairingState] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PairingState? decode(dynamic data, {bool allowNull = true}) {
    if (data is PairingState) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'pending': return PairingState.pending;
        case r'redeemed': return PairingState.redeemed;
        case r'expired': return PairingState.expired;
        case r'locked': return PairingState.locked;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static PairingStateTypeTransformer? _instance;
}

