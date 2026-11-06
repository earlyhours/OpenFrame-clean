// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup.provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadStatus implements DiagnosticableTreeMixin {

 String get taskId; String get filename; double get progress; int get fileSize; String get networkSpeedAsString; bool? get isFailed; String? get error;
/// Create a copy of UploadStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadStatusCopyWith<UploadStatus> get copyWith => _$UploadStatusCopyWithImpl<UploadStatus>(this as UploadStatus, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UploadStatus'))
    ..add(DiagnosticsProperty('taskId', taskId))..add(DiagnosticsProperty('filename', filename))..add(DiagnosticsProperty('progress', progress))..add(DiagnosticsProperty('fileSize', fileSize))..add(DiagnosticsProperty('networkSpeedAsString', networkSpeedAsString))..add(DiagnosticsProperty('isFailed', isFailed))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadStatus&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.networkSpeedAsString, networkSpeedAsString) || other.networkSpeedAsString == networkSpeedAsString)&&(identical(other.isFailed, isFailed) || other.isFailed == isFailed)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,taskId,filename,progress,fileSize,networkSpeedAsString,isFailed,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UploadStatus(taskId: $taskId, filename: $filename, progress: $progress, fileSize: $fileSize, networkSpeedAsString: $networkSpeedAsString, isFailed: $isFailed, error: $error)';
}


}

/// @nodoc
abstract mixin class $UploadStatusCopyWith<$Res>  {
  factory $UploadStatusCopyWith(UploadStatus value, $Res Function(UploadStatus) _then) = _$UploadStatusCopyWithImpl;
@useResult
$Res call({
 String taskId, String filename, double progress, int fileSize, String networkSpeedAsString, bool? isFailed, String? error
});




}
/// @nodoc
class _$UploadStatusCopyWithImpl<$Res>
    implements $UploadStatusCopyWith<$Res> {
  _$UploadStatusCopyWithImpl(this._self, this._then);

  final UploadStatus _self;
  final $Res Function(UploadStatus) _then;

/// Create a copy of UploadStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? taskId = null,Object? filename = null,Object? progress = null,Object? fileSize = null,Object? networkSpeedAsString = null,Object? isFailed = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,networkSpeedAsString: null == networkSpeedAsString ? _self.networkSpeedAsString : networkSpeedAsString // ignore: cast_nullable_to_non_nullable
as String,isFailed: freezed == isFailed ? _self.isFailed : isFailed // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadStatus].
extension UploadStatusPatterns on UploadStatus {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadStatus() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadStatus value)  $default,){
final _that = this;
switch (_that) {
case _UploadStatus():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadStatus value)?  $default,){
final _that = this;
switch (_that) {
case _UploadStatus() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String taskId,  String filename,  double progress,  int fileSize,  String networkSpeedAsString,  bool? isFailed,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadStatus() when $default != null:
return $default(_that.taskId,_that.filename,_that.progress,_that.fileSize,_that.networkSpeedAsString,_that.isFailed,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String taskId,  String filename,  double progress,  int fileSize,  String networkSpeedAsString,  bool? isFailed,  String? error)  $default,) {final _that = this;
switch (_that) {
case _UploadStatus():
return $default(_that.taskId,_that.filename,_that.progress,_that.fileSize,_that.networkSpeedAsString,_that.isFailed,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String taskId,  String filename,  double progress,  int fileSize,  String networkSpeedAsString,  bool? isFailed,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _UploadStatus() when $default != null:
return $default(_that.taskId,_that.filename,_that.progress,_that.fileSize,_that.networkSpeedAsString,_that.isFailed,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _UploadStatus with DiagnosticableTreeMixin implements UploadStatus {
  const _UploadStatus({required this.taskId, required this.filename, required this.progress, required this.fileSize, required this.networkSpeedAsString, this.isFailed, this.error});
  

@override final  String taskId;
@override final  String filename;
@override final  double progress;
@override final  int fileSize;
@override final  String networkSpeedAsString;
@override final  bool? isFailed;
@override final  String? error;

/// Create a copy of UploadStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadStatusCopyWith<_UploadStatus> get copyWith => __$UploadStatusCopyWithImpl<_UploadStatus>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UploadStatus'))
    ..add(DiagnosticsProperty('taskId', taskId))..add(DiagnosticsProperty('filename', filename))..add(DiagnosticsProperty('progress', progress))..add(DiagnosticsProperty('fileSize', fileSize))..add(DiagnosticsProperty('networkSpeedAsString', networkSpeedAsString))..add(DiagnosticsProperty('isFailed', isFailed))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadStatus&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.networkSpeedAsString, networkSpeedAsString) || other.networkSpeedAsString == networkSpeedAsString)&&(identical(other.isFailed, isFailed) || other.isFailed == isFailed)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,taskId,filename,progress,fileSize,networkSpeedAsString,isFailed,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UploadStatus(taskId: $taskId, filename: $filename, progress: $progress, fileSize: $fileSize, networkSpeedAsString: $networkSpeedAsString, isFailed: $isFailed, error: $error)';
}


}

/// @nodoc
abstract mixin class _$UploadStatusCopyWith<$Res> implements $UploadStatusCopyWith<$Res> {
  factory _$UploadStatusCopyWith(_UploadStatus value, $Res Function(_UploadStatus) _then) = __$UploadStatusCopyWithImpl;
@override @useResult
$Res call({
 String taskId, String filename, double progress, int fileSize, String networkSpeedAsString, bool? isFailed, String? error
});




}
/// @nodoc
class __$UploadStatusCopyWithImpl<$Res>
    implements _$UploadStatusCopyWith<$Res> {
  __$UploadStatusCopyWithImpl(this._self, this._then);

  final _UploadStatus _self;
  final $Res Function(_UploadStatus) _then;

/// Create a copy of UploadStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? taskId = null,Object? filename = null,Object? progress = null,Object? fileSize = null,Object? networkSpeedAsString = null,Object? isFailed = freezed,Object? error = freezed,}) {
  return _then(_UploadStatus(
taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,networkSpeedAsString: null == networkSpeedAsString ? _self.networkSpeedAsString : networkSpeedAsString // ignore: cast_nullable_to_non_nullable
as String,isFailed: freezed == isFailed ? _self.isFailed : isFailed // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$BackupState implements DiagnosticableTreeMixin {

 int get totalCount; int get backupCount; int get remainderCount; int get processingCount; bool get isSyncing; BackupError get error; Map<String, UploadStatus> get uploadItems; Map<String, double> get iCloudDownloadProgress;
/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackupStateCopyWith<BackupState> get copyWith => _$BackupStateCopyWithImpl<BackupState>(this as BackupState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BackupState'))
    ..add(DiagnosticsProperty('totalCount', totalCount))..add(DiagnosticsProperty('backupCount', backupCount))..add(DiagnosticsProperty('remainderCount', remainderCount))..add(DiagnosticsProperty('processingCount', processingCount))..add(DiagnosticsProperty('isSyncing', isSyncing))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('uploadItems', uploadItems))..add(DiagnosticsProperty('iCloudDownloadProgress', iCloudDownloadProgress));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupState&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.backupCount, backupCount) || other.backupCount == backupCount)&&(identical(other.remainderCount, remainderCount) || other.remainderCount == remainderCount)&&(identical(other.processingCount, processingCount) || other.processingCount == processingCount)&&(identical(other.isSyncing, isSyncing) || other.isSyncing == isSyncing)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.uploadItems, uploadItems)&&const DeepCollectionEquality().equals(other.iCloudDownloadProgress, iCloudDownloadProgress));
}


@override
int get hashCode => Object.hash(runtimeType,totalCount,backupCount,remainderCount,processingCount,isSyncing,error,const DeepCollectionEquality().hash(uploadItems),const DeepCollectionEquality().hash(iCloudDownloadProgress));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BackupState(totalCount: $totalCount, backupCount: $backupCount, remainderCount: $remainderCount, processingCount: $processingCount, isSyncing: $isSyncing, error: $error, uploadItems: $uploadItems, iCloudDownloadProgress: $iCloudDownloadProgress)';
}


}

/// @nodoc
abstract mixin class $BackupStateCopyWith<$Res>  {
  factory $BackupStateCopyWith(BackupState value, $Res Function(BackupState) _then) = _$BackupStateCopyWithImpl;
@useResult
$Res call({
 int totalCount, int backupCount, int remainderCount, int processingCount, bool isSyncing, BackupError error, Map<String, UploadStatus> uploadItems, Map<String, double> iCloudDownloadProgress
});




}
/// @nodoc
class _$BackupStateCopyWithImpl<$Res>
    implements $BackupStateCopyWith<$Res> {
  _$BackupStateCopyWithImpl(this._self, this._then);

  final BackupState _self;
  final $Res Function(BackupState) _then;

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = null,Object? backupCount = null,Object? remainderCount = null,Object? processingCount = null,Object? isSyncing = null,Object? error = null,Object? uploadItems = null,Object? iCloudDownloadProgress = null,}) {
  return _then(_self.copyWith(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,backupCount: null == backupCount ? _self.backupCount : backupCount // ignore: cast_nullable_to_non_nullable
as int,remainderCount: null == remainderCount ? _self.remainderCount : remainderCount // ignore: cast_nullable_to_non_nullable
as int,processingCount: null == processingCount ? _self.processingCount : processingCount // ignore: cast_nullable_to_non_nullable
as int,isSyncing: null == isSyncing ? _self.isSyncing : isSyncing // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as BackupError,uploadItems: null == uploadItems ? _self.uploadItems : uploadItems // ignore: cast_nullable_to_non_nullable
as Map<String, UploadStatus>,iCloudDownloadProgress: null == iCloudDownloadProgress ? _self.iCloudDownloadProgress : iCloudDownloadProgress // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}

}


/// Adds pattern-matching-related methods to [BackupState].
extension BackupStatePatterns on BackupState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BackupState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BackupState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BackupState value)  $default,){
final _that = this;
switch (_that) {
case _BackupState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BackupState value)?  $default,){
final _that = this;
switch (_that) {
case _BackupState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalCount,  int backupCount,  int remainderCount,  int processingCount,  bool isSyncing,  BackupError error,  Map<String, UploadStatus> uploadItems,  Map<String, double> iCloudDownloadProgress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BackupState() when $default != null:
return $default(_that.totalCount,_that.backupCount,_that.remainderCount,_that.processingCount,_that.isSyncing,_that.error,_that.uploadItems,_that.iCloudDownloadProgress);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalCount,  int backupCount,  int remainderCount,  int processingCount,  bool isSyncing,  BackupError error,  Map<String, UploadStatus> uploadItems,  Map<String, double> iCloudDownloadProgress)  $default,) {final _that = this;
switch (_that) {
case _BackupState():
return $default(_that.totalCount,_that.backupCount,_that.remainderCount,_that.processingCount,_that.isSyncing,_that.error,_that.uploadItems,_that.iCloudDownloadProgress);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalCount,  int backupCount,  int remainderCount,  int processingCount,  bool isSyncing,  BackupError error,  Map<String, UploadStatus> uploadItems,  Map<String, double> iCloudDownloadProgress)?  $default,) {final _that = this;
switch (_that) {
case _BackupState() when $default != null:
return $default(_that.totalCount,_that.backupCount,_that.remainderCount,_that.processingCount,_that.isSyncing,_that.error,_that.uploadItems,_that.iCloudDownloadProgress);case _:
  return null;

}
}

}

/// @nodoc


class _BackupState extends BackupState with DiagnosticableTreeMixin {
  const _BackupState({required this.totalCount, required this.backupCount, required this.remainderCount, required this.processingCount, required this.isSyncing, this.error = BackupError.none, required final  Map<String, UploadStatus> uploadItems, final  Map<String, double> iCloudDownloadProgress = const {}}): _uploadItems = uploadItems,_iCloudDownloadProgress = iCloudDownloadProgress,super._();
  

@override final  int totalCount;
@override final  int backupCount;
@override final  int remainderCount;
@override final  int processingCount;
@override final  bool isSyncing;
@override@JsonKey() final  BackupError error;
 final  Map<String, UploadStatus> _uploadItems;
@override Map<String, UploadStatus> get uploadItems {
  if (_uploadItems is EqualUnmodifiableMapView) return _uploadItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_uploadItems);
}

 final  Map<String, double> _iCloudDownloadProgress;
@override@JsonKey() Map<String, double> get iCloudDownloadProgress {
  if (_iCloudDownloadProgress is EqualUnmodifiableMapView) return _iCloudDownloadProgress;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_iCloudDownloadProgress);
}


/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BackupStateCopyWith<_BackupState> get copyWith => __$BackupStateCopyWithImpl<_BackupState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BackupState'))
    ..add(DiagnosticsProperty('totalCount', totalCount))..add(DiagnosticsProperty('backupCount', backupCount))..add(DiagnosticsProperty('remainderCount', remainderCount))..add(DiagnosticsProperty('processingCount', processingCount))..add(DiagnosticsProperty('isSyncing', isSyncing))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('uploadItems', uploadItems))..add(DiagnosticsProperty('iCloudDownloadProgress', iCloudDownloadProgress));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BackupState&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.backupCount, backupCount) || other.backupCount == backupCount)&&(identical(other.remainderCount, remainderCount) || other.remainderCount == remainderCount)&&(identical(other.processingCount, processingCount) || other.processingCount == processingCount)&&(identical(other.isSyncing, isSyncing) || other.isSyncing == isSyncing)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._uploadItems, _uploadItems)&&const DeepCollectionEquality().equals(other._iCloudDownloadProgress, _iCloudDownloadProgress));
}


@override
int get hashCode => Object.hash(runtimeType,totalCount,backupCount,remainderCount,processingCount,isSyncing,error,const DeepCollectionEquality().hash(_uploadItems),const DeepCollectionEquality().hash(_iCloudDownloadProgress));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BackupState(totalCount: $totalCount, backupCount: $backupCount, remainderCount: $remainderCount, processingCount: $processingCount, isSyncing: $isSyncing, error: $error, uploadItems: $uploadItems, iCloudDownloadProgress: $iCloudDownloadProgress)';
}


}

/// @nodoc
abstract mixin class _$BackupStateCopyWith<$Res> implements $BackupStateCopyWith<$Res> {
  factory _$BackupStateCopyWith(_BackupState value, $Res Function(_BackupState) _then) = __$BackupStateCopyWithImpl;
@override @useResult
$Res call({
 int totalCount, int backupCount, int remainderCount, int processingCount, bool isSyncing, BackupError error, Map<String, UploadStatus> uploadItems, Map<String, double> iCloudDownloadProgress
});




}
/// @nodoc
class __$BackupStateCopyWithImpl<$Res>
    implements _$BackupStateCopyWith<$Res> {
  __$BackupStateCopyWithImpl(this._self, this._then);

  final _BackupState _self;
  final $Res Function(_BackupState) _then;

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = null,Object? backupCount = null,Object? remainderCount = null,Object? processingCount = null,Object? isSyncing = null,Object? error = null,Object? uploadItems = null,Object? iCloudDownloadProgress = null,}) {
  return _then(_BackupState(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,backupCount: null == backupCount ? _self.backupCount : backupCount // ignore: cast_nullable_to_non_nullable
as int,remainderCount: null == remainderCount ? _self.remainderCount : remainderCount // ignore: cast_nullable_to_non_nullable
as int,processingCount: null == processingCount ? _self.processingCount : processingCount // ignore: cast_nullable_to_non_nullable
as int,isSyncing: null == isSyncing ? _self.isSyncing : isSyncing // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as BackupError,uploadItems: null == uploadItems ? _self._uploadItems : uploadItems // ignore: cast_nullable_to_non_nullable
as Map<String, UploadStatus>,iCloudDownloadProgress: null == iCloudDownloadProgress ? _self._iCloudDownloadProgress : iCloudDownloadProgress // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}


}

// dart format on
