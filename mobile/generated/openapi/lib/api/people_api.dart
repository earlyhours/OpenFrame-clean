//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PeopleApi {
  PeopleApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a person
  ///
  /// Create a new person that can have multiple faces assigned to them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PersonCreateDto] personCreateDto (required):
  Future<Response> createPersonWithHttpInfo(PersonCreateDto personCreateDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people';

    // ignore: prefer_final_locals
    Object? postBody = personCreateDto;

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

  /// Create a person
  ///
  /// Create a new person that can have multiple faces assigned to them.
  ///
  /// Parameters:
  ///
  /// * [PersonCreateDto] personCreateDto (required):
  Future<PersonResponseDto?> createPerson(PersonCreateDto personCreateDto, { Future<void>? abortTrigger, }) async {
    final response = await createPersonWithHttpInfo(personCreateDto, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PersonResponseDto',) as PersonResponseDto;
    
    }
    return null;
  }

  /// Delete people
  ///
  /// Bulk delete a list of people at once.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PeopleDeleteDto] peopleDeleteDto (required):
  Future<Response> deletePeopleWithHttpInfo(PeopleDeleteDto peopleDeleteDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people';

    // ignore: prefer_final_locals
    Object? postBody = peopleDeleteDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      apiPath,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Delete people
  ///
  /// Bulk delete a list of people at once.
  ///
  /// Parameters:
  ///
  /// * [PeopleDeleteDto] peopleDeleteDto (required):
  Future<void> deletePeople(PeopleDeleteDto peopleDeleteDto, { Future<void>? abortTrigger, }) async {
    final response = await deletePeopleWithHttpInfo(peopleDeleteDto, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete person
  ///
  /// Delete an individual person.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [PersonDeleteDto] personDeleteDto (required):
  Future<Response> deletePersonWithHttpInfo(String id, PersonDeleteDto personDeleteDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = personDeleteDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      apiPath,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Delete person
  ///
  /// Delete an individual person.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [PersonDeleteDto] personDeleteDto (required):
  Future<void> deletePerson(String id, PersonDeleteDto personDeleteDto, { Future<void>? abortTrigger, }) async {
    final response = await deletePersonWithHttpInfo(id, personDeleteDto, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all people
  ///
  /// Retrieve a list of all people.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] closestAssetId:
  ///   Closest asset ID for similarity search
  ///
  /// * [String] closestPersonId:
  ///   Closest person ID for similarity search
  ///
  /// * [bool] isFavorite:
  ///   Filter by favorite status
  ///
  /// * [bool] isHidden:
  ///   Filter by hidden status
  ///
  /// * [String] name:
  ///   Filter by person name
  ///
  /// * [int] page:
  ///   Page number for pagination
  ///
  /// * [String] sharedById:
  ///   Only include people to which the user gave access
  ///
  /// * [String] sharedWithId:
  ///   Only include people to which the user was given access
  ///
  /// * [int] size:
  ///   Number of items per page
  ///
  /// * [bool] withHidden:
  ///   Include hidden people
  Future<Response> getAllPeopleWithHttpInfo({ String? closestAssetId, String? closestPersonId, bool? isFavorite, bool? isHidden, String? name, int? page, String? sharedById, String? sharedWithId, int? size, bool? withHidden, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (closestAssetId != null) {
      queryParams.addAll(_queryParams('', 'closestAssetId', closestAssetId));
    }
    if (closestPersonId != null) {
      queryParams.addAll(_queryParams('', 'closestPersonId', closestPersonId));
    }
    if (isFavorite != null) {
      queryParams.addAll(_queryParams('', 'isFavorite', isFavorite));
    }
    if (isHidden != null) {
      queryParams.addAll(_queryParams('', 'isHidden', isHidden));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (sharedById != null) {
      queryParams.addAll(_queryParams('', 'sharedById', sharedById));
    }
    if (sharedWithId != null) {
      queryParams.addAll(_queryParams('', 'sharedWithId', sharedWithId));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (withHidden != null) {
      queryParams.addAll(_queryParams('', 'withHidden', withHidden));
    }

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

  /// Get all people
  ///
  /// Retrieve a list of all people.
  ///
  /// Parameters:
  ///
  /// * [String] closestAssetId:
  ///   Closest asset ID for similarity search
  ///
  /// * [String] closestPersonId:
  ///   Closest person ID for similarity search
  ///
  /// * [bool] isFavorite:
  ///   Filter by favorite status
  ///
  /// * [bool] isHidden:
  ///   Filter by hidden status
  ///
  /// * [String] name:
  ///   Filter by person name
  ///
  /// * [int] page:
  ///   Page number for pagination
  ///
  /// * [String] sharedById:
  ///   Only include people to which the user gave access
  ///
  /// * [String] sharedWithId:
  ///   Only include people to which the user was given access
  ///
  /// * [int] size:
  ///   Number of items per page
  ///
  /// * [bool] withHidden:
  ///   Include hidden people
  Future<PeopleResponseDto?> getAllPeople({ String? closestAssetId, String? closestPersonId, bool? isFavorite, bool? isHidden, String? name, int? page, String? sharedById, String? sharedWithId, int? size, bool? withHidden, Future<void>? abortTrigger, }) async {
    final response = await getAllPeopleWithHttpInfo(closestAssetId: closestAssetId, closestPersonId: closestPersonId, isFavorite: isFavorite, isHidden: isHidden, name: name, page: page, sharedById: sharedById, sharedWithId: sharedWithId, size: size, withHidden: withHidden, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PeopleResponseDto',) as PeopleResponseDto;
    
    }
    return null;
  }

  /// Get a person
  ///
  /// Retrieve a person by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getPersonWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people/{id}'
      .replaceAll('{id}', id);

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

  /// Get a person
  ///
  /// Retrieve a person by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<PersonResponseDto?> getPerson(String id, { Future<void>? abortTrigger, }) async {
    final response = await getPersonWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PersonResponseDto',) as PersonResponseDto;
    
    }
    return null;
  }

  /// Get person statistics
  ///
  /// Retrieve statistics about a specific person.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getPersonStatisticsWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people/{id}/statistics'
      .replaceAll('{id}', id);

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

  /// Get person statistics
  ///
  /// Retrieve statistics about a specific person.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<PersonStatisticsResponseDto?> getPersonStatistics(String id, { Future<void>? abortTrigger, }) async {
    final response = await getPersonStatisticsWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PersonStatisticsResponseDto',) as PersonStatisticsResponseDto;
    
    }
    return null;
  }

  /// Get person thumbnail
  ///
  /// Retrieve the thumbnail file for a person.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getPersonThumbnailWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people/{id}/thumbnail'
      .replaceAll('{id}', id);

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

  /// Get person thumbnail
  ///
  /// Retrieve the thumbnail file for a person.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<MultipartFile?> getPersonThumbnail(String id, { Future<void>? abortTrigger, }) async {
    final response = await getPersonThumbnailWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get people access
  ///
  /// Retrieve a list of users and the people to which they have been given access
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SharingDirection] direction:
  ///
  /// * [String] personId:
  ///   Person ID
  ///
  /// * [PersonUserRole] role:
  ///   Role of user
  ///
  /// * [String] sharedById:
  ///   User ID of the user that gave access
  ///
  /// * [String] sharedWithId:
  ///   User ID of the user that was given access
  Future<Response> getUsersForPeopleWithHttpInfo({ SharingDirection? direction, String? personId, PersonUserRole? role, String? sharedById, String? sharedWithId, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people/users';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (direction != null) {
      queryParams.addAll(_queryParams('', 'direction', direction));
    }
    if (personId != null) {
      queryParams.addAll(_queryParams('', 'personId', personId));
    }
    if (role != null) {
      queryParams.addAll(_queryParams('', 'role', role));
    }
    if (sharedById != null) {
      queryParams.addAll(_queryParams('', 'sharedById', sharedById));
    }
    if (sharedWithId != null) {
      queryParams.addAll(_queryParams('', 'sharedWithId', sharedWithId));
    }

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

  /// Get people access
  ///
  /// Retrieve a list of users and the people to which they have been given access
  ///
  /// Parameters:
  ///
  /// * [SharingDirection] direction:
  ///
  /// * [String] personId:
  ///   Person ID
  ///
  /// * [PersonUserRole] role:
  ///   Role of user
  ///
  /// * [String] sharedById:
  ///   User ID of the user that gave access
  ///
  /// * [String] sharedWithId:
  ///   User ID of the user that was given access
  Future<List<PersonUsersResponseDtoInner>?> getUsersForPeople({ SharingDirection? direction, String? personId, PersonUserRole? role, String? sharedById, String? sharedWithId, Future<void>? abortTrigger, }) async {
    final response = await getUsersForPeopleWithHttpInfo(direction: direction, personId: personId, role: role, sharedById: sharedById, sharedWithId: sharedWithId, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PersonUsersResponseDtoInner>') as List)
        .cast<PersonUsersResponseDtoInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Merge people
  ///
  /// Merge an ordered list of people together into a single person. The final name and birth date are always the first defined value, following the order. Also automatically merges people for other users in the cluster group, skipping people that would result in overriding a previously set name or birth date.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MergePersonDto] mergePersonDto (required):
  Future<Response> mergePeopleWithHttpInfo(MergePersonDto mergePersonDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people/merge';

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
  /// Merge an ordered list of people together into a single person. The final name and birth date are always the first defined value, following the order. Also automatically merges people for other users in the cluster group, skipping people that would result in overriding a previously set name or birth date.
  ///
  /// Parameters:
  ///
  /// * [MergePersonDto] mergePersonDto (required):
  Future<List<BulkIdResponseDto>?> mergePeople(MergePersonDto mergePersonDto, { Future<void>? abortTrigger, }) async {
    final response = await mergePeopleWithHttpInfo(mergePersonDto, abortTrigger: abortTrigger,);
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

  /// Reassign faces
  ///
  /// Bulk reassign a list of faces to a different person.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [AssetFaceUpdateDto] assetFaceUpdateDto (required):
  Future<Response> reassignFacesWithHttpInfo(String id, AssetFaceUpdateDto assetFaceUpdateDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people/{id}/reassign'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = assetFaceUpdateDto;

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

  /// Reassign faces
  ///
  /// Bulk reassign a list of faces to a different person.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [AssetFaceUpdateDto] assetFaceUpdateDto (required):
  Future<List<PersonResponseDto>?> reassignFaces(String id, AssetFaceUpdateDto assetFaceUpdateDto, { Future<void>? abortTrigger, }) async {
    final response = await reassignFacesWithHttpInfo(id, assetFaceUpdateDto, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PersonResponseDto>') as List)
        .cast<PersonResponseDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Remove users from people
  ///
  /// Remove user access to people
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<PersonUsersDeleteDtoInner>] personUsersDeleteDtoInner (required):
  Future<Response> removeUsersFromPeopleWithHttpInfo(List<PersonUsersDeleteDtoInner> personUsersDeleteDtoInner, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people/users';

    // ignore: prefer_final_locals
    Object? postBody = personUsersDeleteDtoInner;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      apiPath,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Remove users from people
  ///
  /// Remove user access to people
  ///
  /// Parameters:
  ///
  /// * [List<PersonUsersDeleteDtoInner>] personUsersDeleteDtoInner (required):
  Future<void> removeUsersFromPeople(List<PersonUsersDeleteDtoInner> personUsersDeleteDtoInner, { Future<void>? abortTrigger, }) async {
    final response = await removeUsersFromPeopleWithHttpInfo(personUsersDeleteDtoInner, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update people
  ///
  /// Bulk update multiple people at once.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PeopleUpdateDto] peopleUpdateDto (required):
  Future<Response> updatePeopleWithHttpInfo(PeopleUpdateDto peopleUpdateDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people';

    // ignore: prefer_final_locals
    Object? postBody = peopleUpdateDto;

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

  /// Update people
  ///
  /// Bulk update multiple people at once.
  ///
  /// Parameters:
  ///
  /// * [PeopleUpdateDto] peopleUpdateDto (required):
  Future<List<BulkIdResponseDto>?> updatePeople(PeopleUpdateDto peopleUpdateDto, { Future<void>? abortTrigger, }) async {
    final response = await updatePeopleWithHttpInfo(peopleUpdateDto, abortTrigger: abortTrigger,);
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

  /// Update person
  ///
  /// Update an individual person.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [PersonUpdateDto] personUpdateDto (required):
  Future<Response> updatePersonWithHttpInfo(String id, PersonUpdateDto personUpdateDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = personUpdateDto;

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

  /// Update person
  ///
  /// Update an individual person.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [PersonUpdateDto] personUpdateDto (required):
  Future<PersonResponseDto?> updatePerson(String id, PersonUpdateDto personUpdateDto, { Future<void>? abortTrigger, }) async {
    final response = await updatePersonWithHttpInfo(id, personUpdateDto, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PersonResponseDto',) as PersonResponseDto;
    
    }
    return null;
  }

  /// Upsert user access
  ///
  /// Give users access to people
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PeopleUsersUpsertDto] peopleUsersUpsertDto (required):
  Future<Response> upsertPeopleUsersWithHttpInfo(PeopleUsersUpsertDto peopleUsersUpsertDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/people/users';

    // ignore: prefer_final_locals
    Object? postBody = peopleUsersUpsertDto;

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

  /// Upsert user access
  ///
  /// Give users access to people
  ///
  /// Parameters:
  ///
  /// * [PeopleUsersUpsertDto] peopleUsersUpsertDto (required):
  Future<void> upsertPeopleUsers(PeopleUsersUpsertDto peopleUsersUpsertDto, { Future<void>? abortTrigger, }) async {
    final response = await upsertPeopleUsersWithHttpInfo(peopleUsersUpsertDto, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
