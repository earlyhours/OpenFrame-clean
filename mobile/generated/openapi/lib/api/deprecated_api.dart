//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DeprecatedApi {
  DeprecatedApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a partner
  ///
  /// Create a new partner to share assets with.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> createPartnerDeprecatedWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/partners/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      apiPath,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Create a partner
  ///
  /// Create a new partner to share assets with.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<PartnerResponseDto?> createPartnerDeprecated(String id, { Future<void>? abortTrigger, }) async {
    final response = await createPartnerDeprecatedWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PartnerResponseDto',) as PartnerResponseDto;
    
    }
    return null;
  }

  /// Get system configuration
  ///
  /// Retrieve the current system configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getConfigWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/system-config';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      apiPath,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get system configuration
  ///
  /// Retrieve the current system configuration.
  Future<AdminConfigDto?> getConfig({ Future<void>? abortTrigger, }) async {
    final response = await getConfigWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdminConfigDto',) as AdminConfigDto;
    
    }
    return null;
  }

  /// Get system configuration defaults
  ///
  /// Retrieve the default values for the system configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getConfigDefaultsWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/system-config/defaults';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      apiPath,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get system configuration defaults
  ///
  /// Retrieve the default values for the system configuration.
  Future<AdminConfigDto?> getConfigDefaults({ Future<void>? abortTrigger, }) async {
    final response = await getConfigDefaultsWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdminConfigDto',) as AdminConfigDto;
    
    }
    return null;
  }

  /// Retrieve queue counts and status
  ///
  /// Retrieve the counts of the current queue, as well as the current status.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getQueuesLegacyWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/jobs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      apiPath,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Retrieve queue counts and status
  ///
  /// Retrieve the counts of the current queue, as well as the current status.
  Future<QueuesResponseLegacyDto?> getQueuesLegacy({ Future<void>? abortTrigger, }) async {
    final response = await getQueuesLegacyWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueuesResponseLegacyDto',) as QueuesResponseLegacyDto;
    
    }
    return null;
  }

  /// Get config
  ///
  /// Retrieve the current server configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getServerConfigWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/server/config';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      apiPath,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get config
  ///
  /// Retrieve the current server configuration.
  Future<ServerConfigDto?> getServerConfig({ Future<void>? abortTrigger, }) async {
    final response = await getServerConfigWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ServerConfigDto',) as ServerConfigDto;
    
    }
    return null;
  }

  /// Get features
  ///
  /// Retrieve available features supported by this server.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getServerFeaturesWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/server/features';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      apiPath,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get features
  ///
  /// Retrieve available features supported by this server.
  Future<ServerFeaturesDto?> getServerFeatures({ Future<void>? abortTrigger, }) async {
    final response = await getServerFeaturesWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ServerFeaturesDto',) as ServerFeaturesDto;
    
    }
    return null;
  }

  /// Merge people
  ///
  /// Merge a list of people into the person specified in the path parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MergePersonDto] mergePersonDto (required):
  Future<Response> mergePersonLegacyWithHttpInfo(String id, MergePersonDto mergePersonDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people/{id}/merge'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = mergePersonDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      apiPath,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Merge people
  ///
  /// Merge a list of people into the person specified in the path parameter.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MergePersonDto] mergePersonDto (required):
  Future<List<BulkIdResponseDto>?> mergePersonLegacy(String id, MergePersonDto mergePersonDto, { Future<void>? abortTrigger, }) async {
    final response = await mergePersonLegacyWithHttpInfo(id, mergePersonDto, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BulkIdResponseDto>') as List)
        .cast<BulkIdResponseDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Run jobs
  ///
  /// Queue all assets for a specific job type. Defaults to only queueing assets that have not yet been processed, but the force command can be used to re-process all assets.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [QueueName] name (required):
  ///
  /// * [QueueCommandDto] queueCommandDto (required):
  Future<Response> runQueueCommandLegacyWithHttpInfo(QueueName name, QueueCommandDto queueCommandDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/jobs/{name}'
      .replaceAll('{name}', name.toString());

    // ignore: prefer_final_locals
    Object? postBody = queueCommandDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      apiPath,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Run jobs
  ///
  /// Queue all assets for a specific job type. Defaults to only queueing assets that have not yet been processed, but the force command can be used to re-process all assets.
  ///
  /// Parameters:
  ///
  /// * [QueueName] name (required):
  ///
  /// * [QueueCommandDto] queueCommandDto (required):
  Future<QueueResponseLegacyDto?> runQueueCommandLegacy(QueueName name, QueueCommandDto queueCommandDto, { Future<void>? abortTrigger, }) async {
    final response = await runQueueCommandLegacyWithHttpInfo(name, queueCommandDto, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueueResponseLegacyDto',) as QueueResponseLegacyDto;
    
    }
    return null;
  }

  /// Search large assets
  ///
  /// Search for assets that are considered large based on specified criteria.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] albumIds:
  ///   Filter by album IDs
  ///
  /// * [String] city:
  ///   Filter by city name
  ///
  /// * [String] country:
  ///   Filter by country name
  ///
  /// * [DateTime] createdAfter:
  ///   Filter by creation date (after)
  ///
  /// * [DateTime] createdBefore:
  ///   Filter by creation date (before)
  ///
  /// * [bool] isEncoded:
  ///   Filter by encoded status
  ///
  /// * [bool] isFavorite:
  ///   Filter by favorite status
  ///
  /// * [bool] isMotion:
  ///   Filter by motion photo status
  ///
  /// * [bool] isNotInAlbum:
  ///   Filter assets not in any album
  ///
  /// * [bool] isOffline:
  ///   Filter by offline status
  ///
  /// * [String] lensModel:
  ///   Filter by lens model
  ///
  /// * [String] libraryId:
  ///   Library ID to filter by
  ///
  /// * [String] make:
  ///   Filter by camera make
  ///
  /// * [int] minFileSize:
  ///   Minimum file size in bytes
  ///
  /// * [String] model:
  ///   Filter by camera model
  ///
  /// * [String] ocr:
  ///   Filter by OCR text content
  ///
  /// * [List<String>] personIds:
  ///   Filter by person IDs
  ///
  /// * [int] rating:
  ///   Filter by rating [1-5], or null for unrated
  ///
  /// * [int] size:
  ///   Number of results to return
  ///
  /// * [String] state:
  ///   Filter by state/province name
  ///
  /// * [List<String>] tagIds:
  ///   Filter by tag IDs
  ///
  /// * [DateTime] takenAfter:
  ///   Filter by taken date (after)
  ///
  /// * [DateTime] takenBefore:
  ///   Filter by taken date (before)
  ///
  /// * [DateTime] trashedAfter:
  ///   Filter by trash date (after)
  ///
  /// * [DateTime] trashedBefore:
  ///   Filter by trash date (before)
  ///
  /// * [AssetTypeEnum] type:
  ///
  /// * [DateTime] updatedAfter:
  ///   Filter by update date (after)
  ///
  /// * [DateTime] updatedBefore:
  ///   Filter by update date (before)
  ///
  /// * [AssetVisibility] visibility:
  ///
  /// * [bool] withDeleted:
  ///   Include deleted assets
  ///
  /// * [bool] withExif:
  ///   Include EXIF data in response
  Future<Response> searchLargeAssetsWithHttpInfo({ List<String>? albumIds, String? city, String? country, DateTime? createdAfter, DateTime? createdBefore, bool? isEncoded, bool? isFavorite, bool? isMotion, bool? isNotInAlbum, bool? isOffline, String? lensModel, String? libraryId, String? make, int? minFileSize, String? model, String? ocr, List<String>? personIds, int? rating, int? size, String? state, List<String>? tagIds, DateTime? takenAfter, DateTime? takenBefore, DateTime? trashedAfter, DateTime? trashedBefore, AssetTypeEnum? type, DateTime? updatedAfter, DateTime? updatedBefore, AssetVisibility? visibility, bool? withDeleted, bool? withExif, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/search/large-assets';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (albumIds != null) {
      queryParams.addAll(_queryParams('multi', 'albumIds', albumIds));
    }
    if (city != null) {
      queryParams.addAll(_queryParams('', 'city', city));
    }
    if (country != null) {
      queryParams.addAll(_queryParams('', 'country', country));
    }
    if (createdAfter != null) {
      queryParams.addAll(_queryParams('', 'createdAfter', createdAfter));
    }
    if (createdBefore != null) {
      queryParams.addAll(_queryParams('', 'createdBefore', createdBefore));
    }
    if (isEncoded != null) {
      queryParams.addAll(_queryParams('', 'isEncoded', isEncoded));
    }
    if (isFavorite != null) {
      queryParams.addAll(_queryParams('', 'isFavorite', isFavorite));
    }
    if (isMotion != null) {
      queryParams.addAll(_queryParams('', 'isMotion', isMotion));
    }
    if (isNotInAlbum != null) {
      queryParams.addAll(_queryParams('', 'isNotInAlbum', isNotInAlbum));
    }
    if (isOffline != null) {
      queryParams.addAll(_queryParams('', 'isOffline', isOffline));
    }
    if (lensModel != null) {
      queryParams.addAll(_queryParams('', 'lensModel', lensModel));
    }
    if (libraryId != null) {
      queryParams.addAll(_queryParams('', 'libraryId', libraryId));
    }
    if (make != null) {
      queryParams.addAll(_queryParams('', 'make', make));
    }
    if (minFileSize != null) {
      queryParams.addAll(_queryParams('', 'minFileSize', minFileSize));
    }
    if (model != null) {
      queryParams.addAll(_queryParams('', 'model', model));
    }
    if (ocr != null) {
      queryParams.addAll(_queryParams('', 'ocr', ocr));
    }
    if (personIds != null) {
      queryParams.addAll(_queryParams('multi', 'personIds', personIds));
    }
    if (rating != null) {
      queryParams.addAll(_queryParams('', 'rating', rating));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
    if (tagIds != null) {
      queryParams.addAll(_queryParams('multi', 'tagIds', tagIds));
    }
    if (takenAfter != null) {
      queryParams.addAll(_queryParams('', 'takenAfter', takenAfter));
    }
    if (takenBefore != null) {
      queryParams.addAll(_queryParams('', 'takenBefore', takenBefore));
    }
    if (trashedAfter != null) {
      queryParams.addAll(_queryParams('', 'trashedAfter', trashedAfter));
    }
    if (trashedBefore != null) {
      queryParams.addAll(_queryParams('', 'trashedBefore', trashedBefore));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (updatedAfter != null) {
      queryParams.addAll(_queryParams('', 'updatedAfter', updatedAfter));
    }
    if (updatedBefore != null) {
      queryParams.addAll(_queryParams('', 'updatedBefore', updatedBefore));
    }
    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (withDeleted != null) {
      queryParams.addAll(_queryParams('', 'withDeleted', withDeleted));
    }
    if (withExif != null) {
      queryParams.addAll(_queryParams('', 'withExif', withExif));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      apiPath,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Search large assets
  ///
  /// Search for assets that are considered large based on specified criteria.
  ///
  /// Parameters:
  ///
  /// * [List<String>] albumIds:
  ///   Filter by album IDs
  ///
  /// * [String] city:
  ///   Filter by city name
  ///
  /// * [String] country:
  ///   Filter by country name
  ///
  /// * [DateTime] createdAfter:
  ///   Filter by creation date (after)
  ///
  /// * [DateTime] createdBefore:
  ///   Filter by creation date (before)
  ///
  /// * [bool] isEncoded:
  ///   Filter by encoded status
  ///
  /// * [bool] isFavorite:
  ///   Filter by favorite status
  ///
  /// * [bool] isMotion:
  ///   Filter by motion photo status
  ///
  /// * [bool] isNotInAlbum:
  ///   Filter assets not in any album
  ///
  /// * [bool] isOffline:
  ///   Filter by offline status
  ///
  /// * [String] lensModel:
  ///   Filter by lens model
  ///
  /// * [String] libraryId:
  ///   Library ID to filter by
  ///
  /// * [String] make:
  ///   Filter by camera make
  ///
  /// * [int] minFileSize:
  ///   Minimum file size in bytes
  ///
  /// * [String] model:
  ///   Filter by camera model
  ///
  /// * [String] ocr:
  ///   Filter by OCR text content
  ///
  /// * [List<String>] personIds:
  ///   Filter by person IDs
  ///
  /// * [int] rating:
  ///   Filter by rating [1-5], or null for unrated
  ///
  /// * [int] size:
  ///   Number of results to return
  ///
  /// * [String] state:
  ///   Filter by state/province name
  ///
  /// * [List<String>] tagIds:
  ///   Filter by tag IDs
  ///
  /// * [DateTime] takenAfter:
  ///   Filter by taken date (after)
  ///
  /// * [DateTime] takenBefore:
  ///   Filter by taken date (before)
  ///
  /// * [DateTime] trashedAfter:
  ///   Filter by trash date (after)
  ///
  /// * [DateTime] trashedBefore:
  ///   Filter by trash date (before)
  ///
  /// * [AssetTypeEnum] type:
  ///
  /// * [DateTime] updatedAfter:
  ///   Filter by update date (after)
  ///
  /// * [DateTime] updatedBefore:
  ///   Filter by update date (before)
  ///
  /// * [AssetVisibility] visibility:
  ///
  /// * [bool] withDeleted:
  ///   Include deleted assets
  ///
  /// * [bool] withExif:
  ///   Include EXIF data in response
  Future<List<AssetResponseDto>?> searchLargeAssets({ List<String>? albumIds, String? city, String? country, DateTime? createdAfter, DateTime? createdBefore, bool? isEncoded, bool? isFavorite, bool? isMotion, bool? isNotInAlbum, bool? isOffline, String? lensModel, String? libraryId, String? make, int? minFileSize, String? model, String? ocr, List<String>? personIds, int? rating, int? size, String? state, List<String>? tagIds, DateTime? takenAfter, DateTime? takenBefore, DateTime? trashedAfter, DateTime? trashedBefore, AssetTypeEnum? type, DateTime? updatedAfter, DateTime? updatedBefore, AssetVisibility? visibility, bool? withDeleted, bool? withExif, Future<void>? abortTrigger, }) async {
    final response = await searchLargeAssetsWithHttpInfo(albumIds: albumIds, city: city, country: country, createdAfter: createdAfter, createdBefore: createdBefore, isEncoded: isEncoded, isFavorite: isFavorite, isMotion: isMotion, isNotInAlbum: isNotInAlbum, isOffline: isOffline, lensModel: lensModel, libraryId: libraryId, make: make, minFileSize: minFileSize, model: model, ocr: ocr, personIds: personIds, rating: rating, size: size, state: state, tagIds: tagIds, takenAfter: takenAfter, takenBefore: takenBefore, trashedAfter: trashedAfter, trashedBefore: trashedBefore, type: type, updatedAfter: updatedAfter, updatedBefore: updatedBefore, visibility: visibility, withDeleted: withDeleted, withExif: withExif, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AssetResponseDto>') as List)
        .cast<AssetResponseDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update system configuration
  ///
  /// Update the system configuration with a new system configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AdminConfigDto] adminConfigDto (required):
  Future<Response> updateConfigWithHttpInfo(AdminConfigDto adminConfigDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/system-config';

    // ignore: prefer_final_locals
    Object? postBody = adminConfigDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      apiPath,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Update system configuration
  ///
  /// Update the system configuration with a new system configuration.
  ///
  /// Parameters:
  ///
  /// * [AdminConfigDto] adminConfigDto (required):
  Future<AdminConfigDto?> updateConfig(AdminConfigDto adminConfigDto, { Future<void>? abortTrigger, }) async {
    final response = await updateConfigWithHttpInfo(adminConfigDto, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdminConfigDto',) as AdminConfigDto;
    
    }
    return null;
  }
}
