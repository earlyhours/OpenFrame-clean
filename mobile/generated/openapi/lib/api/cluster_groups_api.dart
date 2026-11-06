//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ClusterGroupsApi {
  ClusterGroupsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Accept a cluster group request
  ///
  /// Join the cluster group the request was created for.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> acceptClusterGroupRequestWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/cluster-groups/requests/{id}/accept'
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

  /// Accept a cluster group request
  ///
  /// Join the cluster group the request was created for.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> acceptClusterGroupRequest(String id, { Future<void>? abortTrigger, }) async {
    final response = await acceptClusterGroupRequestWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Regenerate people of users in cluster group
  ///
  /// Forcefully re-run facial recognition for all faces of users in this group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> clusterGroupRegeneratePeopleWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/cluster-groups/{id}/regenerate-people'
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

  /// Regenerate people of users in cluster group
  ///
  /// Forcefully re-run facial recognition for all faces of users in this group.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> clusterGroupRegeneratePeople(String id, { Future<void>? abortTrigger, }) async {
    final response = await clusterGroupRegeneratePeopleWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a cluster group request
  ///
  /// Ask another user to join the cluster group of the current user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ClusterGroupRequestCreateDto] clusterGroupRequestCreateDto (required):
  Future<Response> createClusterGroupRequestWithHttpInfo(String id, ClusterGroupRequestCreateDto clusterGroupRequestCreateDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/cluster-groups/{id}/requests'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = clusterGroupRequestCreateDto;

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

  /// Create a cluster group request
  ///
  /// Ask another user to join the cluster group of the current user.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ClusterGroupRequestCreateDto] clusterGroupRequestCreateDto (required):
  Future<ClusterGroupRequestResponseDto?> createClusterGroupRequest(String id, ClusterGroupRequestCreateDto clusterGroupRequestCreateDto, { Future<void>? abortTrigger, }) async {
    final response = await createClusterGroupRequestWithHttpInfo(id, clusterGroupRequestCreateDto, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClusterGroupRequestResponseDto',) as ClusterGroupRequestResponseDto;
    
    }
    return null;
  }

  /// Decline a cluster group request
  ///
  /// Delete a pending request to join a cluster group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteClusterGroupRequestWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/cluster-groups/requests/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Decline a cluster group request
  ///
  /// Delete a pending request to join a cluster group.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteClusterGroupRequest(String id, { Future<void>? abortTrigger, }) async {
    final response = await deleteClusterGroupRequestWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieve cluster group requests
  ///
  /// Retrieve the pending requests for the current user to join a cluster group.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getClusterGroupRequestsWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/cluster-groups/requests';

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

  /// Retrieve cluster group requests
  ///
  /// Retrieve the pending requests for the current user to join a cluster group.
  Future<List<ClusterGroupRequestResponseDto>?> getClusterGroupRequests({ Future<void>? abortTrigger, }) async {
    final response = await getClusterGroupRequestsWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ClusterGroupRequestResponseDto>') as List)
        .cast<ClusterGroupRequestResponseDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Retrieve the requests sent by a cluster group
  ///
  /// Retrieve the pending requests for other users to join the cluster group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getClusterGroupRequestsForGroupWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/cluster-groups/{id}/requests'
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

  /// Retrieve the requests sent by a cluster group
  ///
  /// Retrieve the pending requests for other users to join the cluster group.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<List<ClusterGroupRequestResponseDto>?> getClusterGroupRequestsForGroup(String id, { Future<void>? abortTrigger, }) async {
    final response = await getClusterGroupRequestsForGroupWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ClusterGroupRequestResponseDto>') as List)
        .cast<ClusterGroupRequestResponseDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Retrieve the users of a cluster group
  ///
  /// Retrieve the users that are a member of the cluster group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getClusterGroupUsersWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/cluster-groups/{id}/users'
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

  /// Retrieve the users of a cluster group
  ///
  /// Retrieve the users that are a member of the cluster group.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<List<UserResponseDto>?> getClusterGroupUsers(String id, { Future<void>? abortTrigger, }) async {
    final response = await getClusterGroupUsersWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserResponseDto>') as List)
        .cast<UserResponseDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Leave a cluster group
  ///
  /// Move the current user into a new cluster group of their own.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> leaveClusterGroupWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/cluster-groups/{id}/leave'
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

  /// Leave a cluster group
  ///
  /// Move the current user into a new cluster group of their own.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> leaveClusterGroup(String id, { Future<void>? abortTrigger, }) async {
    final response = await leaveClusterGroupWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
