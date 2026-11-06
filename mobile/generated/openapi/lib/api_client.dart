//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = '/api', this.authentication,});

  String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType, {
    Future<void>? abortTrigger,
  }) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = AbortableStreamedRequest(method, uri, abortTrigger: abortTrigger);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = AbortableMultipartRequest(method, uri, abortTrigger: abortTrigger);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      final request = AbortableRequest(method, uri, abortTrigger: abortTrigger);
      if (nullableHeaderParams != null) {
        request.headers.addAll(nullableHeaderParams);
      }
      if (msgBody is String && msgBody.isNotEmpty) {
        request.body = msgBody;
      } else if (msgBody is List<int> && msgBody.isNotEmpty) {
        request.bodyBytes = msgBody;
      } else if (msgBody is Map<String, String>) {
        request.bodyFields = msgBody;
      }
      final response = await _client.send(request);
      return Response.fromStream(response);
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  Future<dynamic> deserialize(String value, String targetType, {bool growable = false,}) async {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(await compute((String j) => json.decode(j), value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'ActivityCreateDto':
          return ActivityCreateDto.fromJson(value);
        case 'ActivityResponseDto':
          return ActivityResponseDto.fromJson(value);
        case 'ActivityStatisticsResponseDto':
          return ActivityStatisticsResponseDto.fromJson(value);
        case 'AddUsersDto':
          return AddUsersDto.fromJson(value);
        case 'AdminConfigBackupsDto':
          return AdminConfigBackupsDto.fromJson(value);
        case 'AdminConfigClipDto':
          return AdminConfigClipDto.fromJson(value);
        case 'AdminConfigDatabaseBackupDto':
          return AdminConfigDatabaseBackupDto.fromJson(value);
        case 'AdminConfigDto':
          return AdminConfigDto.fromJson(value);
        case 'AdminConfigDuplicateDetectionDto':
          return AdminConfigDuplicateDetectionDto.fromJson(value);
        case 'AdminConfigFFmpegDto':
          return AdminConfigFFmpegDto.fromJson(value);
        case 'AdminConfigFFmpegRealtimeDto':
          return AdminConfigFFmpegRealtimeDto.fromJson(value);
        case 'AdminConfigFacesDto':
          return AdminConfigFacesDto.fromJson(value);
        case 'AdminConfigFacialRecognitionDto':
          return AdminConfigFacialRecognitionDto.fromJson(value);
        case 'AdminConfigGeneratedFullsizeImageDto':
          return AdminConfigGeneratedFullsizeImageDto.fromJson(value);
        case 'AdminConfigGeneratedImageDto':
          return AdminConfigGeneratedImageDto.fromJson(value);
        case 'AdminConfigImageDto':
          return AdminConfigImageDto.fromJson(value);
        case 'AdminConfigIntegrityChecksDto':
          return AdminConfigIntegrityChecksDto.fromJson(value);
        case 'AdminConfigIntegrityChecksumJobDto':
          return AdminConfigIntegrityChecksumJobDto.fromJson(value);
        case 'AdminConfigIntegrityJobDto':
          return AdminConfigIntegrityJobDto.fromJson(value);
        case 'AdminConfigJobDto':
          return AdminConfigJobDto.fromJson(value);
        case 'AdminConfigJobSettingsDto':
          return AdminConfigJobSettingsDto.fromJson(value);
        case 'AdminConfigLibraryDto':
          return AdminConfigLibraryDto.fromJson(value);
        case 'AdminConfigLibraryScanDto':
          return AdminConfigLibraryScanDto.fromJson(value);
        case 'AdminConfigLibraryWatchDto':
          return AdminConfigLibraryWatchDto.fromJson(value);
        case 'AdminConfigLoggingDto':
          return AdminConfigLoggingDto.fromJson(value);
        case 'AdminConfigMachineLearningAvailabilityChecksDto':
          return AdminConfigMachineLearningAvailabilityChecksDto.fromJson(value);
        case 'AdminConfigMachineLearningDto':
          return AdminConfigMachineLearningDto.fromJson(value);
        case 'AdminConfigMapDto':
          return AdminConfigMapDto.fromJson(value);
        case 'AdminConfigMetadataDto':
          return AdminConfigMetadataDto.fromJson(value);
        case 'AdminConfigNewVersionCheckDto':
          return AdminConfigNewVersionCheckDto.fromJson(value);
        case 'AdminConfigNightlyTasksDto':
          return AdminConfigNightlyTasksDto.fromJson(value);
        case 'AdminConfigNotificationsDto':
          return AdminConfigNotificationsDto.fromJson(value);
        case 'AdminConfigOAuthDto':
          return AdminConfigOAuthDto.fromJson(value);
        case 'AdminConfigOcrDto':
          return AdminConfigOcrDto.fromJson(value);
        case 'AdminConfigPasskeyDto':
          return AdminConfigPasskeyDto.fromJson(value);
        case 'AdminConfigPasswordLoginDto':
          return AdminConfigPasswordLoginDto.fromJson(value);
        case 'AdminConfigReverseGeocodingDto':
          return AdminConfigReverseGeocodingDto.fromJson(value);
        case 'AdminConfigServerDto':
          return AdminConfigServerDto.fromJson(value);
        case 'AdminConfigSmtpDto':
          return AdminConfigSmtpDto.fromJson(value);
        case 'AdminConfigSmtpTransportDto':
          return AdminConfigSmtpTransportDto.fromJson(value);
        case 'AdminConfigStorageTemplateDto':
          return AdminConfigStorageTemplateDto.fromJson(value);
        case 'AdminConfigTemplateEmailsDto':
          return AdminConfigTemplateEmailsDto.fromJson(value);
        case 'AdminConfigTemplatesDto':
          return AdminConfigTemplatesDto.fromJson(value);
        case 'AdminConfigThemeDto':
          return AdminConfigThemeDto.fromJson(value);
        case 'AdminConfigTrashDto':
          return AdminConfigTrashDto.fromJson(value);
        case 'AdminConfigUserDto':
          return AdminConfigUserDto.fromJson(value);
        case 'AdminOnboardingUpdateDto':
          return AdminOnboardingUpdateDto.fromJson(value);
        case 'AlbumResponseDto':
          return AlbumResponseDto.fromJson(value);
        case 'AlbumStatisticsResponseDto':
          return AlbumStatisticsResponseDto.fromJson(value);
        case 'AlbumUserAddDto':
          return AlbumUserAddDto.fromJson(value);
        case 'AlbumUserCreateDto':
          return AlbumUserCreateDto.fromJson(value);
        case 'AlbumUserResponseDto':
          return AlbumUserResponseDto.fromJson(value);
        case 'AlbumUserRole':
          return AlbumUserRoleTypeTransformer().decode(value);
        case 'AlbumsAddAssetsDto':
          return AlbumsAddAssetsDto.fromJson(value);
        case 'AlbumsAddAssetsResponseDto':
          return AlbumsAddAssetsResponseDto.fromJson(value);
        case 'AlbumsResponse':
          return AlbumsResponse.fromJson(value);
        case 'AlbumsUpdate':
          return AlbumsUpdate.fromJson(value);
        case 'ApiKeyCreateDto':
          return ApiKeyCreateDto.fromJson(value);
        case 'ApiKeyCreateResponseDto':
          return ApiKeyCreateResponseDto.fromJson(value);
        case 'ApiKeyResponseDto':
          return ApiKeyResponseDto.fromJson(value);
        case 'ApiKeyUpdateDto':
          return ApiKeyUpdateDto.fromJson(value);
        case 'AssetBulkDeleteDto':
          return AssetBulkDeleteDto.fromJson(value);
        case 'AssetBulkUpdateDto':
          return AssetBulkUpdateDto.fromJson(value);
        case 'AssetBulkUploadCheckDto':
          return AssetBulkUploadCheckDto.fromJson(value);
        case 'AssetBulkUploadCheckItem':
          return AssetBulkUploadCheckItem.fromJson(value);
        case 'AssetBulkUploadCheckResponseDto':
          return AssetBulkUploadCheckResponseDto.fromJson(value);
        case 'AssetBulkUploadCheckResult':
          return AssetBulkUploadCheckResult.fromJson(value);
        case 'AssetCopyDto':
          return AssetCopyDto.fromJson(value);
        case 'AssetEditAction':
          return AssetEditActionTypeTransformer().decode(value);
        case 'AssetEditActionItemDto':
          return AssetEditActionItemDto.fromJson(value);
        case 'AssetEditActionItemDtoParameters':
          return AssetEditActionItemDtoParameters.fromJson(value);
        case 'AssetEditActionItemResponseDto':
          return AssetEditActionItemResponseDto.fromJson(value);
        case 'AssetEditsCreateDto':
          return AssetEditsCreateDto.fromJson(value);
        case 'AssetEditsResponseDto':
          return AssetEditsResponseDto.fromJson(value);
        case 'AssetFaceCreateDto':
          return AssetFaceCreateDto.fromJson(value);
        case 'AssetFaceDeleteDto':
          return AssetFaceDeleteDto.fromJson(value);
        case 'AssetFaceResponseDto':
          return AssetFaceResponseDto.fromJson(value);
        case 'AssetFaceUpdateDto':
          return AssetFaceUpdateDto.fromJson(value);
        case 'AssetFaceUpdateItem':
          return AssetFaceUpdateItem.fromJson(value);
        case 'AssetFileResponseDto':
          return AssetFileResponseDto.fromJson(value);
        case 'AssetFileType':
          return AssetFileTypeTypeTransformer().decode(value);
        case 'AssetIdErrorReason':
          return AssetIdErrorReasonTypeTransformer().decode(value);
        case 'AssetIdsDto':
          return AssetIdsDto.fromJson(value);
        case 'AssetIdsResponseDto':
          return AssetIdsResponseDto.fromJson(value);
        case 'AssetJobName':
          return AssetJobNameTypeTransformer().decode(value);
        case 'AssetJobsDto':
          return AssetJobsDto.fromJson(value);
        case 'AssetMediaResponseDto':
          return AssetMediaResponseDto.fromJson(value);
        case 'AssetMediaSize':
          return AssetMediaSizeTypeTransformer().decode(value);
        case 'AssetMediaStatus':
          return AssetMediaStatusTypeTransformer().decode(value);
        case 'AssetMetadataBulkDeleteDto':
          return AssetMetadataBulkDeleteDto.fromJson(value);
        case 'AssetMetadataBulkDeleteItemDto':
          return AssetMetadataBulkDeleteItemDto.fromJson(value);
        case 'AssetMetadataBulkResponseDto':
          return AssetMetadataBulkResponseDto.fromJson(value);
        case 'AssetMetadataBulkUpsertDto':
          return AssetMetadataBulkUpsertDto.fromJson(value);
        case 'AssetMetadataBulkUpsertItemDto':
          return AssetMetadataBulkUpsertItemDto.fromJson(value);
        case 'AssetMetadataResponseDto':
          return AssetMetadataResponseDto.fromJson(value);
        case 'AssetMetadataUpsertDto':
          return AssetMetadataUpsertDto.fromJson(value);
        case 'AssetMetadataUpsertItemDto':
          return AssetMetadataUpsertItemDto.fromJson(value);
        case 'AssetOcrResponseDto':
          return AssetOcrResponseDto.fromJson(value);
        case 'AssetOrder':
          return AssetOrderTypeTransformer().decode(value);
        case 'AssetOrderBy':
          return AssetOrderByTypeTransformer().decode(value);
        case 'AssetRejectReason':
          return AssetRejectReasonTypeTransformer().decode(value);
        case 'AssetResponseDto':
          return AssetResponseDto.fromJson(value);
        case 'AssetStackResponseDto':
          return AssetStackResponseDto.fromJson(value);
        case 'AssetStatsResponseDto':
          return AssetStatsResponseDto.fromJson(value);
        case 'AssetTypeEnum':
          return AssetTypeEnumTypeTransformer().decode(value);
        case 'AssetUploadAction':
          return AssetUploadActionTypeTransformer().decode(value);
        case 'AssetVisibility':
          return AssetVisibilityTypeTransformer().decode(value);
        case 'AudioCodec':
          return AudioCodecTypeTransformer().decode(value);
        case 'AuthStatusResponseDto':
          return AuthStatusResponseDto.fromJson(value);
        case 'AvatarUpdate':
          return AvatarUpdate.fromJson(value);
        case 'BoolFilter':
          return BoolFilter.fromJson(value);
        case 'BulkIdErrorReason':
          return BulkIdErrorReasonTypeTransformer().decode(value);
        case 'BulkIdResponseDto':
          return BulkIdResponseDto.fromJson(value);
        case 'BulkIdsDto':
          return BulkIdsDto.fromJson(value);
        case 'CQMode':
          return CQModeTypeTransformer().decode(value);
        case 'CalendarHeatmapResponseDto':
          return CalendarHeatmapResponseDto.fromJson(value);
        case 'CalendarHeatmapResponseDtoSeriesInner':
          return CalendarHeatmapResponseDtoSeriesInner.fromJson(value);
        case 'CalendarHeatmapType':
          return CalendarHeatmapTypeTypeTransformer().decode(value);
        case 'CastResponse':
          return CastResponse.fromJson(value);
        case 'CastUpdate':
          return CastUpdate.fromJson(value);
        case 'ChangePasswordDto':
          return ChangePasswordDto.fromJson(value);
        case 'ClusterGroupRequestCreateDto':
          return ClusterGroupRequestCreateDto.fromJson(value);
        case 'ClusterGroupRequestResponseDto':
          return ClusterGroupRequestResponseDto.fromJson(value);
        case 'Colorspace':
          return ColorspaceTypeTransformer().decode(value);
        case 'ContributorCountResponseDto':
          return ContributorCountResponseDto.fromJson(value);
        case 'CreateAlbumDto':
          return CreateAlbumDto.fromJson(value);
        case 'CreateLibraryDto':
          return CreateLibraryDto.fromJson(value);
        case 'CreateProfileImageResponseDto':
          return CreateProfileImageResponseDto.fromJson(value);
        case 'CropParameters':
          return CropParameters.fromJson(value);
        case 'DatabaseBackupDeleteDto':
          return DatabaseBackupDeleteDto.fromJson(value);
        case 'DatabaseBackupDto':
          return DatabaseBackupDto.fromJson(value);
        case 'DatabaseBackupListResponseDto':
          return DatabaseBackupListResponseDto.fromJson(value);
        case 'DateFilter':
          return DateFilter.fromJson(value);
        case 'DateFilterNullable':
          return DateFilterNullable.fromJson(value);
        case 'DownloadArchiveDto':
          return DownloadArchiveDto.fromJson(value);
        case 'DownloadArchiveInfo':
          return DownloadArchiveInfo.fromJson(value);
        case 'DownloadInfoDto':
          return DownloadInfoDto.fromJson(value);
        case 'DownloadResponse':
          return DownloadResponse.fromJson(value);
        case 'DownloadResponseDto':
          return DownloadResponseDto.fromJson(value);
        case 'DownloadUpdate':
          return DownloadUpdate.fromJson(value);
        case 'DuplicateResolveDto':
          return DuplicateResolveDto.fromJson(value);
        case 'DuplicateResolveGroupDto':
          return DuplicateResolveGroupDto.fromJson(value);
        case 'DuplicateResponseDto':
          return DuplicateResponseDto.fromJson(value);
        case 'EmailNotificationsResponse':
          return EmailNotificationsResponse.fromJson(value);
        case 'EmailNotificationsUpdate':
          return EmailNotificationsUpdate.fromJson(value);
        case 'EnumFilterAssetType':
          return EnumFilterAssetType.fromJson(value);
        case 'EnumFilterAssetVisibility':
          return EnumFilterAssetVisibility.fromJson(value);
        case 'ExifResponseDto':
          return ExifResponseDto.fromJson(value);
        case 'FaceDto':
          return FaceDto.fromJson(value);
        case 'FoldersResponse':
          return FoldersResponse.fromJson(value);
        case 'FoldersUpdate':
          return FoldersUpdate.fromJson(value);
        case 'HlsVideoResolution':
          return HlsVideoResolutionTypeTransformer().decode(value);
        case 'IdFilter':
          return IdFilter.fromJson(value);
        case 'IdFilterNullable':
          return IdFilterNullable.fromJson(value);
        case 'IdsFilter':
          return IdsFilter.fromJson(value);
        case 'ImageFormat':
          return ImageFormatTypeTransformer().decode(value);
        case 'IntegrityReport':
          return IntegrityReportTypeTransformer().decode(value);
        case 'IntegrityReportResponseDto':
          return IntegrityReportResponseDto.fromJson(value);
        case 'IntegrityReportResponseDtoItemsInner':
          return IntegrityReportResponseDtoItemsInner.fromJson(value);
        case 'IntegrityReportSummaryResponseDto':
          return IntegrityReportSummaryResponseDto.fromJson(value);
        case 'JobCreateDto':
          return JobCreateDto.fromJson(value);
        case 'JobName':
          return JobNameTypeTransformer().decode(value);
        case 'LibraryResponseDto':
          return LibraryResponseDto.fromJson(value);
        case 'LibraryStatsResponseDto':
          return LibraryStatsResponseDto.fromJson(value);
        case 'LicenseKeyDto':
          return LicenseKeyDto.fromJson(value);
        case 'LogLevel':
          return LogLevelTypeTransformer().decode(value);
        case 'LoginCredentialDto':
          return LoginCredentialDto.fromJson(value);
        case 'LoginResponseDto':
          return LoginResponseDto.fromJson(value);
        case 'LogoutResponseDto':
          return LogoutResponseDto.fromJson(value);
        case 'MaintenanceAction':
          return MaintenanceActionTypeTransformer().decode(value);
        case 'MaintenanceAuthDto':
          return MaintenanceAuthDto.fromJson(value);
        case 'MaintenanceDetectInstallResponseDto':
          return MaintenanceDetectInstallResponseDto.fromJson(value);
        case 'MaintenanceDetectInstallStorageFolderDto':
          return MaintenanceDetectInstallStorageFolderDto.fromJson(value);
        case 'MaintenanceLoginDto':
          return MaintenanceLoginDto.fromJson(value);
        case 'MaintenanceStatusResponseDto':
          return MaintenanceStatusResponseDto.fromJson(value);
        case 'ManualJobName':
          return ManualJobNameTypeTransformer().decode(value);
        case 'MapMarkerResponseDto':
          return MapMarkerResponseDto.fromJson(value);
        case 'MapReverseGeocodeResponseDto':
          return MapReverseGeocodeResponseDto.fromJson(value);
        case 'MemoriesResponse':
          return MemoriesResponse.fromJson(value);
        case 'MemoriesUpdate':
          return MemoriesUpdate.fromJson(value);
        case 'MemoryCreateDto':
          return MemoryCreateDto.fromJson(value);
        case 'MemoryDataDto':
          return MemoryDataDto.fromJson(value);
        case 'MemoryResponseDto':
          return MemoryResponseDto.fromJson(value);
        case 'MemorySearchOrder':
          return MemorySearchOrderTypeTransformer().decode(value);
        case 'MemoryStatisticsResponseDto':
          return MemoryStatisticsResponseDto.fromJson(value);
        case 'MemoryType':
          return MemoryTypeTypeTransformer().decode(value);
        case 'MemoryTypeV1':
          return MemoryTypeV1TypeTransformer().decode(value);
        case 'MemoryUpdateDto':
          return MemoryUpdateDto.fromJson(value);
        case 'MergePersonDto':
          return MergePersonDto.fromJson(value);
        case 'MetadataSearchDto':
          return MetadataSearchDto.fromJson(value);
        case 'MirrorAxis':
          return MirrorAxisTypeTransformer().decode(value);
        case 'MirrorParameters':
          return MirrorParameters.fromJson(value);
        case 'NotificationCreateDto':
          return NotificationCreateDto.fromJson(value);
        case 'NotificationDeleteAllDto':
          return NotificationDeleteAllDto.fromJson(value);
        case 'NotificationDto':
          return NotificationDto.fromJson(value);
        case 'NotificationLevel':
          return NotificationLevelTypeTransformer().decode(value);
        case 'NotificationType':
          return NotificationTypeTypeTransformer().decode(value);
        case 'NotificationUpdateAllDto':
          return NotificationUpdateAllDto.fromJson(value);
        case 'NotificationUpdateDto':
          return NotificationUpdateDto.fromJson(value);
        case 'NumberFilter':
          return NumberFilter.fromJson(value);
        case 'NumberFilterNullable':
          return NumberFilterNullable.fromJson(value);
        case 'OAuthAuthorizeResponseDto':
          return OAuthAuthorizeResponseDto.fromJson(value);
        case 'OAuthCallbackDto':
          return OAuthCallbackDto.fromJson(value);
        case 'OAuthConfigDto':
          return OAuthConfigDto.fromJson(value);
        case 'OAuthTokenEndpointAuthMethod':
          return OAuthTokenEndpointAuthMethodTypeTransformer().decode(value);
        case 'OnboardingDto':
          return OnboardingDto.fromJson(value);
        case 'OnboardingResponseDto':
          return OnboardingResponseDto.fromJson(value);
        case 'PartnerCreateDto':
          return PartnerCreateDto.fromJson(value);
        case 'PartnerDirection':
          return PartnerDirectionTypeTransformer().decode(value);
        case 'PartnerResponseDto':
          return PartnerResponseDto.fromJson(value);
        case 'PartnerUpdateDto':
          return PartnerUpdateDto.fromJson(value);
        case 'PasskeyAuthenticationFinishDto':
          return PasskeyAuthenticationFinishDto.fromJson(value);
        case 'PasskeyAuthenticationFinishDtoResponse':
          return PasskeyAuthenticationFinishDtoResponse.fromJson(value);
        case 'PasskeyAuthenticationFinishDtoResponseResponse':
          return PasskeyAuthenticationFinishDtoResponseResponse.fromJson(value);
        case 'PasskeyRegistrationFinishDto':
          return PasskeyRegistrationFinishDto.fromJson(value);
        case 'PasskeyResponseDto':
          return PasskeyResponseDto.fromJson(value);
        case 'PasskeyUpdateDto':
          return PasskeyUpdateDto.fromJson(value);
        case 'PeopleDeleteDto':
          return PeopleDeleteDto.fromJson(value);
        case 'PeopleResponse':
          return PeopleResponse.fromJson(value);
        case 'PeopleResponseDto':
          return PeopleResponseDto.fromJson(value);
        case 'PeopleUpdate':
          return PeopleUpdate.fromJson(value);
        case 'PeopleUpdateDto':
          return PeopleUpdateDto.fromJson(value);
        case 'PeopleUpdateItem':
          return PeopleUpdateItem.fromJson(value);
        case 'PeopleUserResponseDto':
          return PeopleUserResponseDto.fromJson(value);
        case 'PeopleUsersUpsertDto':
          return PeopleUsersUpsertDto.fromJson(value);
        case 'PeopleUsersUpsertType':
          return PeopleUsersUpsertTypeTypeTransformer().decode(value);
        case 'Permission':
          return PermissionTypeTransformer().decode(value);
        case 'PersonCreateDto':
          return PersonCreateDto.fromJson(value);
        case 'PersonDeleteDto':
          return PersonDeleteDto.fromJson(value);
        case 'PersonOtherResponseDto':
          return PersonOtherResponseDto.fromJson(value);
        case 'PersonResponseDto':
          return PersonResponseDto.fromJson(value);
        case 'PersonStatisticsResponseDto':
          return PersonStatisticsResponseDto.fromJson(value);
        case 'PersonUpdateDto':
          return PersonUpdateDto.fromJson(value);
        case 'PersonUpdateStrategy':
          return PersonUpdateStrategyTypeTransformer().decode(value);
        case 'PersonUserRole':
          return PersonUserRoleTypeTransformer().decode(value);
        case 'PersonUsersDeleteDtoInner':
          return PersonUsersDeleteDtoInner.fromJson(value);
        case 'PersonUsersResponseDtoInner':
          return PersonUsersResponseDtoInner.fromJson(value);
        case 'PinCodeChangeDto':
          return PinCodeChangeDto.fromJson(value);
        case 'PinCodeResetDto':
          return PinCodeResetDto.fromJson(value);
        case 'PinCodeSetupDto':
          return PinCodeSetupDto.fromJson(value);
        case 'PlacesResponseDto':
          return PlacesResponseDto.fromJson(value);
        case 'PluginMethodResponseDto':
          return PluginMethodResponseDto.fromJson(value);
        case 'PluginResponseDto':
          return PluginResponseDto.fromJson(value);
        case 'PluginTemplateResponseDto':
          return PluginTemplateResponseDto.fromJson(value);
        case 'PluginTemplateStepResponseDto':
          return PluginTemplateStepResponseDto.fromJson(value);
        case 'PublicConfigDto':
          return PublicConfigDto.fromJson(value);
        case 'PublicConfigFFmpegDto':
          return PublicConfigFFmpegDto.fromJson(value);
        case 'PublicConfigFFmpegRealtimeDto':
          return PublicConfigFFmpegRealtimeDto.fromJson(value);
        case 'PublicConfigMapDto':
          return PublicConfigMapDto.fromJson(value);
        case 'PublicConfigOAuthDto':
          return PublicConfigOAuthDto.fromJson(value);
        case 'PublicConfigPasskeyDto':
          return PublicConfigPasskeyDto.fromJson(value);
        case 'PublicConfigPasswordLoginDto':
          return PublicConfigPasswordLoginDto.fromJson(value);
        case 'PublicConfigServerDto':
          return PublicConfigServerDto.fromJson(value);
        case 'PurchaseResponse':
          return PurchaseResponse.fromJson(value);
        case 'PurchaseUpdate':
          return PurchaseUpdate.fromJson(value);
        case 'QueueCommand':
          return QueueCommandTypeTransformer().decode(value);
        case 'QueueCommandDto':
          return QueueCommandDto.fromJson(value);
        case 'QueueDeleteDto':
          return QueueDeleteDto.fromJson(value);
        case 'QueueJobResponseDto':
          return QueueJobResponseDto.fromJson(value);
        case 'QueueJobStatus':
          return QueueJobStatusTypeTransformer().decode(value);
        case 'QueueName':
          return QueueNameTypeTransformer().decode(value);
        case 'QueueResponseDto':
          return QueueResponseDto.fromJson(value);
        case 'QueueResponseLegacyDto':
          return QueueResponseLegacyDto.fromJson(value);
        case 'QueueStatisticsDto':
          return QueueStatisticsDto.fromJson(value);
        case 'QueueStatusLegacyDto':
          return QueueStatusLegacyDto.fromJson(value);
        case 'QueueUpdateDto':
          return QueueUpdateDto.fromJson(value);
        case 'QueuesResponseLegacyDto':
          return QueuesResponseLegacyDto.fromJson(value);
        case 'RandomSearchDto':
          return RandomSearchDto.fromJson(value);
        case 'RatingsResponse':
          return RatingsResponse.fromJson(value);
        case 'RatingsUpdate':
          return RatingsUpdate.fromJson(value);
        case 'ReactionLevel':
          return ReactionLevelTypeTransformer().decode(value);
        case 'ReactionType':
          return ReactionTypeTypeTransformer().decode(value);
        case 'RecentlyAddedResponse':
          return RecentlyAddedResponse.fromJson(value);
        case 'RecentlyAddedUpdate':
          return RecentlyAddedUpdate.fromJson(value);
        case 'ReleaseChannel':
          return ReleaseChannelTypeTransformer().decode(value);
        case 'ReleaseEventV1':
          return ReleaseEventV1.fromJson(value);
        case 'ReleaseType':
          return ReleaseTypeTypeTransformer().decode(value);
        case 'ReverseGeocodingStateResponseDto':
          return ReverseGeocodingStateResponseDto.fromJson(value);
        case 'RotateParameters':
          return RotateParameters.fromJson(value);
        case 'SearchAlbumResponseDto':
          return SearchAlbumResponseDto.fromJson(value);
        case 'SearchAssetResponseDto':
          return SearchAssetResponseDto.fromJson(value);
        case 'SearchExploreItem':
          return SearchExploreItem.fromJson(value);
        case 'SearchExploreResponseDto':
          return SearchExploreResponseDto.fromJson(value);
        case 'SearchFacetCountResponseDto':
          return SearchFacetCountResponseDto.fromJson(value);
        case 'SearchFacetResponseDto':
          return SearchFacetResponseDto.fromJson(value);
        case 'SearchFilter':
          return SearchFilter.fromJson(value);
        case 'SearchFilterBranch':
          return SearchFilterBranch.fromJson(value);
        case 'SearchOrder':
          return SearchOrder.fromJson(value);
        case 'SearchOrderField':
          return SearchOrderFieldTypeTransformer().decode(value);
        case 'SearchResponseDto':
          return SearchResponseDto.fromJson(value);
        case 'SearchStatisticsResponseDto':
          return SearchStatisticsResponseDto.fromJson(value);
        case 'SearchSuggestionType':
          return SearchSuggestionTypeTypeTransformer().decode(value);
        case 'ServerAboutResponseDto':
          return ServerAboutResponseDto.fromJson(value);
        case 'ServerApkLinksDto':
          return ServerApkLinksDto.fromJson(value);
        case 'ServerConfigDto':
          return ServerConfigDto.fromJson(value);
        case 'ServerFeatureLevel':
          return ServerFeatureLevelTypeTransformer().decode(value);
        case 'ServerFeaturesDto':
          return ServerFeaturesDto.fromJson(value);
        case 'ServerMediaTypesResponseDto':
          return ServerMediaTypesResponseDto.fromJson(value);
        case 'ServerPingResponse':
          return ServerPingResponse.fromJson(value);
        case 'ServerStatsResponseDto':
          return ServerStatsResponseDto.fromJson(value);
        case 'ServerStorageResponseDto':
          return ServerStorageResponseDto.fromJson(value);
        case 'ServerVersionHistoryResponseDto':
          return ServerVersionHistoryResponseDto.fromJson(value);
        case 'ServerVersionResponseDto':
          return ServerVersionResponseDto.fromJson(value);
        case 'SessionCreateDto':
          return SessionCreateDto.fromJson(value);
        case 'SessionCreateResponseDto':
          return SessionCreateResponseDto.fromJson(value);
        case 'SessionResponseDto':
          return SessionResponseDto.fromJson(value);
        case 'SessionUnlockDto':
          return SessionUnlockDto.fromJson(value);
        case 'SessionUpdateDto':
          return SessionUpdateDto.fromJson(value);
        case 'SetMaintenanceModeDto':
          return SetMaintenanceModeDto.fromJson(value);
        case 'SharedLinkCreateDto':
          return SharedLinkCreateDto.fromJson(value);
        case 'SharedLinkEditDto':
          return SharedLinkEditDto.fromJson(value);
        case 'SharedLinkLoginDto':
          return SharedLinkLoginDto.fromJson(value);
        case 'SharedLinkResponseDto':
          return SharedLinkResponseDto.fromJson(value);
        case 'SharedLinkType':
          return SharedLinkTypeTypeTransformer().decode(value);
        case 'SharedLinksResponse':
          return SharedLinksResponse.fromJson(value);
        case 'SharedLinksUpdate':
          return SharedLinksUpdate.fromJson(value);
        case 'SharingDirection':
          return SharingDirectionTypeTransformer().decode(value);
        case 'SignUpDto':
          return SignUpDto.fromJson(value);
        case 'SmartSearchDto':
          return SmartSearchDto.fromJson(value);
        case 'SourceType':
          return SourceTypeTypeTransformer().decode(value);
        case 'StackCreateDto':
          return StackCreateDto.fromJson(value);
        case 'StackResponseDto':
          return StackResponseDto.fromJson(value);
        case 'StackUpdateDto':
          return StackUpdateDto.fromJson(value);
        case 'StatisticsSearchDto':
          return StatisticsSearchDto.fromJson(value);
        case 'StorageFolder':
          return StorageFolderTypeTransformer().decode(value);
        case 'StringFilter':
          return StringFilter.fromJson(value);
        case 'StringFilterNullable':
          return StringFilterNullable.fromJson(value);
        case 'StringPatternFilter':
          return StringPatternFilter.fromJson(value);
        case 'StringSimilarityFilter':
          return StringSimilarityFilter.fromJson(value);
        case 'SyncAckDeleteDto':
          return SyncAckDeleteDto.fromJson(value);
        case 'SyncAckDto':
          return SyncAckDto.fromJson(value);
        case 'SyncAckSetDto':
          return SyncAckSetDto.fromJson(value);
        case 'SyncAlbumDeleteV1':
          return SyncAlbumDeleteV1.fromJson(value);
        case 'SyncAlbumToAssetDeleteV1':
          return SyncAlbumToAssetDeleteV1.fromJson(value);
        case 'SyncAlbumToAssetV1':
          return SyncAlbumToAssetV1.fromJson(value);
        case 'SyncAlbumUserDeleteV1':
          return SyncAlbumUserDeleteV1.fromJson(value);
        case 'SyncAlbumUserV1':
          return SyncAlbumUserV1.fromJson(value);
        case 'SyncAlbumV1':
          return SyncAlbumV1.fromJson(value);
        case 'SyncAlbumV2':
          return SyncAlbumV2.fromJson(value);
        case 'SyncAssetDeleteV1':
          return SyncAssetDeleteV1.fromJson(value);
        case 'SyncAssetEditDeleteV1':
          return SyncAssetEditDeleteV1.fromJson(value);
        case 'SyncAssetEditV1':
          return SyncAssetEditV1.fromJson(value);
        case 'SyncAssetExifV1':
          return SyncAssetExifV1.fromJson(value);
        case 'SyncAssetFaceDeleteV1':
          return SyncAssetFaceDeleteV1.fromJson(value);
        case 'SyncAssetFaceV1':
          return SyncAssetFaceV1.fromJson(value);
        case 'SyncAssetFaceV3':
          return SyncAssetFaceV3.fromJson(value);
        case 'SyncAssetMetadataDeleteV1':
          return SyncAssetMetadataDeleteV1.fromJson(value);
        case 'SyncAssetMetadataV1':
          return SyncAssetMetadataV1.fromJson(value);
        case 'SyncAssetOcrDeleteV1':
          return SyncAssetOcrDeleteV1.fromJson(value);
        case 'SyncAssetOcrV1':
          return SyncAssetOcrV1.fromJson(value);
        case 'SyncAssetV1':
          return SyncAssetV1.fromJson(value);
        case 'SyncAssetV2':
          return SyncAssetV2.fromJson(value);
        case 'SyncAuthUserV1':
          return SyncAuthUserV1.fromJson(value);
        case 'SyncAuthUserV2':
          return SyncAuthUserV2.fromJson(value);
        case 'SyncEntityType':
          return SyncEntityTypeTypeTransformer().decode(value);
        case 'SyncMemoryAssetDeleteV1':
          return SyncMemoryAssetDeleteV1.fromJson(value);
        case 'SyncMemoryAssetV1':
          return SyncMemoryAssetV1.fromJson(value);
        case 'SyncMemoryDeleteV1':
          return SyncMemoryDeleteV1.fromJson(value);
        case 'SyncMemoryV1':
          return SyncMemoryV1.fromJson(value);
        case 'SyncMemoryV2':
          return SyncMemoryV2.fromJson(value);
        case 'SyncPartnerDeleteV1':
          return SyncPartnerDeleteV1.fromJson(value);
        case 'SyncPartnerV1':
          return SyncPartnerV1.fromJson(value);
        case 'SyncPersonDeleteV1':
          return SyncPersonDeleteV1.fromJson(value);
        case 'SyncPersonV1':
          return SyncPersonV1.fromJson(value);
        case 'SyncRequestType':
          return SyncRequestTypeTypeTransformer().decode(value);
        case 'SyncStackDeleteV1':
          return SyncStackDeleteV1.fromJson(value);
        case 'SyncStackV1':
          return SyncStackV1.fromJson(value);
        case 'SyncStreamDto':
          return SyncStreamDto.fromJson(value);
        case 'SyncUserDeleteV1':
          return SyncUserDeleteV1.fromJson(value);
        case 'SyncUserMetadataDeleteV1':
          return SyncUserMetadataDeleteV1.fromJson(value);
        case 'SyncUserMetadataV1':
          return SyncUserMetadataV1.fromJson(value);
        case 'SyncUserV1':
          return SyncUserV1.fromJson(value);
        case 'SystemConfigTemplateStorageOptionDto':
          return SystemConfigTemplateStorageOptionDto.fromJson(value);
        case 'TagBulkAssetsDto':
          return TagBulkAssetsDto.fromJson(value);
        case 'TagBulkAssetsResponseDto':
          return TagBulkAssetsResponseDto.fromJson(value);
        case 'TagCreateDto':
          return TagCreateDto.fromJson(value);
        case 'TagResponseDto':
          return TagResponseDto.fromJson(value);
        case 'TagUpdateDto':
          return TagUpdateDto.fromJson(value);
        case 'TagUpsertDto':
          return TagUpsertDto.fromJson(value);
        case 'TagsResponse':
          return TagsResponse.fromJson(value);
        case 'TagsUpdate':
          return TagsUpdate.fromJson(value);
        case 'TemplateDto':
          return TemplateDto.fromJson(value);
        case 'TemplateResponseDto':
          return TemplateResponseDto.fromJson(value);
        case 'TestEmailResponseDto':
          return TestEmailResponseDto.fromJson(value);
        case 'TimeBucketAssetResponseDto':
          return TimeBucketAssetResponseDto.fromJson(value);
        case 'TimeBucketsResponseDto':
          return TimeBucketsResponseDto.fromJson(value);
        case 'ToneMapping':
          return ToneMappingTypeTransformer().decode(value);
        case 'TranscodeHWAccel':
          return TranscodeHWAccelTypeTransformer().decode(value);
        case 'TranscodePolicy':
          return TranscodePolicyTypeTransformer().decode(value);
        case 'TrashResponseDto':
          return TrashResponseDto.fromJson(value);
        case 'UpdateAlbumDto':
          return UpdateAlbumDto.fromJson(value);
        case 'UpdateAlbumUserDto':
          return UpdateAlbumUserDto.fromJson(value);
        case 'UpdateAssetDto':
          return UpdateAssetDto.fromJson(value);
        case 'UpdateLibraryDto':
          return UpdateLibraryDto.fromJson(value);
        case 'UsageByUserDto':
          return UsageByUserDto.fromJson(value);
        case 'UserAdminCreateDto':
          return UserAdminCreateDto.fromJson(value);
        case 'UserAdminDeleteDto':
          return UserAdminDeleteDto.fromJson(value);
        case 'UserAdminResponseDto':
          return UserAdminResponseDto.fromJson(value);
        case 'UserAdminUpdateDto':
          return UserAdminUpdateDto.fromJson(value);
        case 'UserAvatarColor':
          return UserAvatarColorTypeTransformer().decode(value);
        case 'UserConfigClipDto':
          return UserConfigClipDto.fromJson(value);
        case 'UserConfigDto':
          return UserConfigDto.fromJson(value);
        case 'UserConfigDuplicateDetectionDto':
          return UserConfigDuplicateDetectionDto.fromJson(value);
        case 'UserConfigFFmpegDto':
          return UserConfigFFmpegDto.fromJson(value);
        case 'UserConfigFFmpegRealtimeDto':
          return UserConfigFFmpegRealtimeDto.fromJson(value);
        case 'UserConfigFacialRecognitionDto':
          return UserConfigFacialRecognitionDto.fromJson(value);
        case 'UserConfigGeneratedFullsizeImageDto':
          return UserConfigGeneratedFullsizeImageDto.fromJson(value);
        case 'UserConfigGeneratedImageDto':
          return UserConfigGeneratedImageDto.fromJson(value);
        case 'UserConfigImageDto':
          return UserConfigImageDto.fromJson(value);
        case 'UserConfigMachineLearningDto':
          return UserConfigMachineLearningDto.fromJson(value);
        case 'UserConfigMapDto':
          return UserConfigMapDto.fromJson(value);
        case 'UserConfigNotificationsDto':
          return UserConfigNotificationsDto.fromJson(value);
        case 'UserConfigOAuthDto':
          return UserConfigOAuthDto.fromJson(value);
        case 'UserConfigOcrDto':
          return UserConfigOcrDto.fromJson(value);
        case 'UserConfigPasskeyDto':
          return UserConfigPasskeyDto.fromJson(value);
        case 'UserConfigPasswordLoginDto':
          return UserConfigPasswordLoginDto.fromJson(value);
        case 'UserConfigReverseGeocodingDto':
          return UserConfigReverseGeocodingDto.fromJson(value);
        case 'UserConfigServerDto':
          return UserConfigServerDto.fromJson(value);
        case 'UserConfigSmtpDto':
          return UserConfigSmtpDto.fromJson(value);
        case 'UserConfigTrashDto':
          return UserConfigTrashDto.fromJson(value);
        case 'UserConfigUserDto':
          return UserConfigUserDto.fromJson(value);
        case 'UserLicense':
          return UserLicense.fromJson(value);
        case 'UserMetadataKey':
          return UserMetadataKeyTypeTransformer().decode(value);
        case 'UserPreferencesResponseDto':
          return UserPreferencesResponseDto.fromJson(value);
        case 'UserPreferencesUpdateDto':
          return UserPreferencesUpdateDto.fromJson(value);
        case 'UserResponseDto':
          return UserResponseDto.fromJson(value);
        case 'UserStatus':
          return UserStatusTypeTransformer().decode(value);
        case 'UserUpdateMeDto':
          return UserUpdateMeDto.fromJson(value);
        case 'ValidateAccessTokenResponseDto':
          return ValidateAccessTokenResponseDto.fromJson(value);
        case 'ValidateLibraryDto':
          return ValidateLibraryDto.fromJson(value);
        case 'ValidateLibraryImportPathResponseDto':
          return ValidateLibraryImportPathResponseDto.fromJson(value);
        case 'ValidateLibraryResponseDto':
          return ValidateLibraryResponseDto.fromJson(value);
        case 'VersionCheckStateResponseDto':
          return VersionCheckStateResponseDto.fromJson(value);
        case 'VideoCodec':
          return VideoCodecTypeTransformer().decode(value);
        case 'VideoContainer':
          return VideoContainerTypeTransformer().decode(value);
        case 'WorkflowCreateDto':
          return WorkflowCreateDto.fromJson(value);
        case 'WorkflowLogEntryDto':
          return WorkflowLogEntryDto.fromJson(value);
        case 'WorkflowLogEntryDtoLastStep':
          return WorkflowLogEntryDtoLastStep.fromJson(value);
        case 'WorkflowResponseDto':
          return WorkflowResponseDto.fromJson(value);
        case 'WorkflowResult':
          return WorkflowResultTypeTransformer().decode(value);
        case 'WorkflowShareResponseDto':
          return WorkflowShareResponseDto.fromJson(value);
        case 'WorkflowShareStepDto':
          return WorkflowShareStepDto.fromJson(value);
        case 'WorkflowStepDto':
          return WorkflowStepDto.fromJson(value);
        case 'WorkflowTrigger':
          return WorkflowTriggerTypeTransformer().decode(value);
        case 'WorkflowTriggerResponseDto':
          return WorkflowTriggerResponseDto.fromJson(value);
        case 'WorkflowType':
          return WorkflowTypeTypeTransformer().decode(value);
        case 'WorkflowUpdateDto':
          return WorkflowUpdateDto.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
