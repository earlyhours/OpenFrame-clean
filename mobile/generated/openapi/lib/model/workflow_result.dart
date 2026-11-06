//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Workflow run result
enum WorkflowResult {
  completed._(r'completed'),
  halted._(r'halted'),
  error._(r'error'),
  ;

  /// Instantiate a new enum with the provided value.
  const WorkflowResult._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [WorkflowResult] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static WorkflowResult? fromJson(dynamic value) => WorkflowResultTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [WorkflowResult]
  /// that were successfully decoded from the passed [JSON][json].
  static List<WorkflowResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkflowResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkflowResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WorkflowResult] to String,
/// and [decode] dynamic data back to [WorkflowResult].
class WorkflowResultTypeTransformer {
  factory WorkflowResultTypeTransformer() => _instance ??= const WorkflowResultTypeTransformer._();

  const WorkflowResultTypeTransformer._();

  /// Encodes this enum as a value suitable for JSON.
  String encode(WorkflowResult data) => data._value;

  /// Returns the instance of [WorkflowResult] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WorkflowResult? decode(dynamic data, {bool allowNull = true}) {
    if (data is WorkflowResult) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'completed': return WorkflowResult.completed;
        case r'halted': return WorkflowResult.halted;
        case r'error': return WorkflowResult.error;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static WorkflowResultTypeTransformer? _instance;
}

