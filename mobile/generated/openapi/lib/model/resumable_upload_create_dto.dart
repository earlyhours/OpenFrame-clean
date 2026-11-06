//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResumableUploadCreateDto {
  /// Returns a new [ResumableUploadCreateDto] instance.
  ResumableUploadCreateDto({
    required this.checksum,
    this.duration = const Optional.absent(),
    required this.fileCreatedAt,
    required this.fileModifiedAt,
    required this.filename,
    this.isFavorite = const Optional.absent(),
    this.livePhotoVideoId = const Optional.absent(),
    this.metadata = const Optional.present(const []),
    required this.size,
    this.visibility = const Optional.absent(),
  });

  /// Hex or base64 SHA1
  String checksum;

  /// Duration in milliseconds (for videos)
  ///
  /// Minimum value: 0
  /// Maximum value: 9007199254740991
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<int?> duration;

  /// File creation date
  DateTime fileCreatedAt;

  /// File modification date
  DateTime fileModifiedAt;

  String filename;

  /// Mark as favorite
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<bool?> isFavorite;

  /// Live photo video ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<String?> livePhotoVideoId;

  /// Asset metadata items
  Optional<List<AssetMetadataUpsertItemDto>?> metadata;

  /// Minimum value: 0
  /// Maximum value: 9007199254740991
  int size;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Optional<AssetVisibility?> visibility;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResumableUploadCreateDto &&
    other.checksum == checksum &&
    other.duration == duration &&
    other.fileCreatedAt == fileCreatedAt &&
    other.fileModifiedAt == fileModifiedAt &&
    other.filename == filename &&
    other.isFavorite == isFavorite &&
    other.livePhotoVideoId == livePhotoVideoId &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.size == size &&
    other.visibility == visibility;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (checksum.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (fileCreatedAt.hashCode) +
    (fileModifiedAt.hashCode) +
    (filename.hashCode) +
    (isFavorite == null ? 0 : isFavorite!.hashCode) +
    (livePhotoVideoId == null ? 0 : livePhotoVideoId!.hashCode) +
    (metadata.hashCode) +
    (size.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode);

  @override
  String toString() => 'ResumableUploadCreateDto[checksum=$checksum, duration=$duration, fileCreatedAt=$fileCreatedAt, fileModifiedAt=$fileModifiedAt, filename=$filename, isFavorite=$isFavorite, livePhotoVideoId=$livePhotoVideoId, metadata=$metadata, size=$size, visibility=$visibility]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'checksum'] = this.checksum;
    if (this.duration.isPresent) {
      final value = this.duration.value;
      json[r'duration'] = value;
    }
      json[r'fileCreatedAt'] = _isEpochMarker(r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z|([+-](?:[01]\\d|2[0-3]):[0-5]\\d)))$/')
        ? this.fileCreatedAt.millisecondsSinceEpoch
        : this.fileCreatedAt.toUtc().toIso8601String();
      json[r'fileModifiedAt'] = _isEpochMarker(r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z|([+-](?:[01]\\d|2[0-3]):[0-5]\\d)))$/')
        ? this.fileModifiedAt.millisecondsSinceEpoch
        : this.fileModifiedAt.toUtc().toIso8601String();
      json[r'filename'] = this.filename;
    if (this.isFavorite.isPresent) {
      final value = this.isFavorite.value;
      json[r'isFavorite'] = value;
    }
    if (this.livePhotoVideoId.isPresent) {
      final value = this.livePhotoVideoId.value;
      json[r'livePhotoVideoId'] = value;
    }
    if (this.metadata.isPresent) {
      final value = this.metadata.value;
      json[r'metadata'] = value;
    }
      json[r'size'] = this.size;
    if (this.visibility.isPresent) {
      final value = this.visibility.value;
      json[r'visibility'] = value;
    }
    return json;
  }

  /// Returns a new [ResumableUploadCreateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResumableUploadCreateDto? fromJson(dynamic value) {
    upgradeDto(value, "ResumableUploadCreateDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return ResumableUploadCreateDto(
        checksum: mapValueOfType<String>(json, r'checksum')!,
        duration: json.containsKey(r'duration') ? Optional.present(json[r'duration'] == null ? null : int.parse('${json[r'duration']}')) : const Optional.absent(),
        fileCreatedAt: mapDateTime(json, r'fileCreatedAt', r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z|([+-](?:[01]\\d|2[0-3]):[0-5]\\d)))$/')!,
        fileModifiedAt: mapDateTime(json, r'fileModifiedAt', r'/^(?:(?:\\d\\d[2468][048]|\\d\\d[13579][26]|\\d\\d0[48]|[02468][048]00|[13579][26]00)-02-29|\\d{4}-(?:(?:0[13578]|1[02])-(?:0[1-9]|[12]\\d|3[01])|(?:0[469]|11)-(?:0[1-9]|[12]\\d|30)|(?:02)-(?:0[1-9]|1\\d|2[0-8])))T(?:(?:[01]\\d|2[0-3]):[0-5]\\d(?::[0-5]\\d(?:\\.\\d+)?)?(?:Z|([+-](?:[01]\\d|2[0-3]):[0-5]\\d)))$/')!,
        filename: mapValueOfType<String>(json, r'filename')!,
        isFavorite: json.containsKey(r'isFavorite') ? Optional.present(mapValueOfType<bool>(json, r'isFavorite')) : const Optional.absent(),
        livePhotoVideoId: json.containsKey(r'livePhotoVideoId') ? Optional.present(mapValueOfType<String>(json, r'livePhotoVideoId')) : const Optional.absent(),
        metadata: json.containsKey(r'metadata') ? Optional.present(AssetMetadataUpsertItemDto.listFromJson(json[r'metadata'])) : const Optional.absent(),
        size: mapValueOfType<int>(json, r'size')!,
        visibility: json.containsKey(r'visibility') ? Optional.present(AssetVisibility.fromJson(json[r'visibility'])) : const Optional.absent(),
      );
    }
    return null;
  }

  static List<ResumableUploadCreateDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResumableUploadCreateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResumableUploadCreateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResumableUploadCreateDto> mapFromJson(dynamic json) {
    final map = <String, ResumableUploadCreateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResumableUploadCreateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResumableUploadCreateDto-objects as value to a dart map
  static Map<String, List<ResumableUploadCreateDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResumableUploadCreateDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResumableUploadCreateDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'checksum',
    'fileCreatedAt',
    'fileModifiedAt',
    'filename',
    'size',
  };
}

