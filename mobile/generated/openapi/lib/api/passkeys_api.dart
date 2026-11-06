//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PasskeysApi {
  PasskeysApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete a passkey
  ///
  /// Delete a passkey by its ID. The current user must own this passkey.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deletePasskeyWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/passkeys/{id}'
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

  /// Delete a passkey
  ///
  /// Delete a passkey by its ID. The current user must own this passkey.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deletePasskey(String id, { Future<void>? abortTrigger, }) async {
    final response = await deletePasskeyWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Finish passkey authentication
  ///
  /// Verify the response from the authenticator and receive a session token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PasskeyAuthenticationFinishDto] passkeyAuthenticationFinishDto (required):
  Future<Response> finishAuthenticationWithHttpInfo(PasskeyAuthenticationFinishDto passkeyAuthenticationFinishDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/passkeys/authentication/finish';

    // ignore: prefer_final_locals
    Object? postBody = passkeyAuthenticationFinishDto;

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

  /// Finish passkey authentication
  ///
  /// Verify the response from the authenticator and receive a session token.
  ///
  /// Parameters:
  ///
  /// * [PasskeyAuthenticationFinishDto] passkeyAuthenticationFinishDto (required):
  Future<LoginResponseDto?> finishAuthentication(PasskeyAuthenticationFinishDto passkeyAuthenticationFinishDto, { Future<void>? abortTrigger, }) async {
    final response = await finishAuthenticationWithHttpInfo(passkeyAuthenticationFinishDto, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LoginResponseDto',) as LoginResponseDto;
    
    }
    return null;
  }

  /// Finish passkey registration
  ///
  /// Verify the response from the authenticator and save the new passkey for the current user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PasskeyRegistrationFinishDto] passkeyRegistrationFinishDto (required):
  Future<Response> finishRegistrationWithHttpInfo(PasskeyRegistrationFinishDto passkeyRegistrationFinishDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/passkeys/registration/finish';

    // ignore: prefer_final_locals
    Object? postBody = passkeyRegistrationFinishDto;

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

  /// Finish passkey registration
  ///
  /// Verify the response from the authenticator and save the new passkey for the current user.
  ///
  /// Parameters:
  ///
  /// * [PasskeyRegistrationFinishDto] passkeyRegistrationFinishDto (required):
  Future<PasskeyResponseDto?> finishRegistration(PasskeyRegistrationFinishDto passkeyRegistrationFinishDto, { Future<void>? abortTrigger, }) async {
    final response = await finishRegistrationWithHttpInfo(passkeyRegistrationFinishDto, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PasskeyResponseDto',) as PasskeyResponseDto;
    
    }
    return null;
  }

  /// Retrieve a passkey
  ///
  /// Retrieve a passkey by its ID. The current user must own this passkey.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getPasskeyWithHttpInfo(String id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/passkeys/{id}'
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

  /// Retrieve a passkey
  ///
  /// Retrieve a passkey by its ID. The current user must own this passkey.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<PasskeyResponseDto?> getPasskey(String id, { Future<void>? abortTrigger, }) async {
    final response = await getPasskeyWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PasskeyResponseDto',) as PasskeyResponseDto;
    
    }
    return null;
  }

  /// Search passkeys
  ///
  /// Search the passkeys of the current user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by passkey ID
  Future<Response> searchPasskeysWithHttpInfo({ String? id, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/passkeys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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

  /// Search passkeys
  ///
  /// Search the passkeys of the current user.
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by passkey ID
  Future<List<PasskeyResponseDto>?> searchPasskeys({ String? id, Future<void>? abortTrigger, }) async {
    final response = await searchPasskeysWithHttpInfo(id: id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PasskeyResponseDto>') as List)
        .cast<PasskeyResponseDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Start passkey authentication
  ///
  /// Generate the options used by the browser to sign in with a passkey.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> startAuthenticationWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/passkeys/authentication/start';

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

  /// Start passkey authentication
  ///
  /// Generate the options used by the browser to sign in with a passkey.
  Future<Map<String, Object>?> startAuthentication({ Future<void>? abortTrigger, }) async {
    final response = await startAuthenticationWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Start passkey registration
  ///
  /// Generate the options used by the browser to create a new passkey for the current user.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> startRegistrationWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/passkeys/registration/start';

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

  /// Start passkey registration
  ///
  /// Generate the options used by the browser to create a new passkey for the current user.
  Future<Map<String, Object>?> startRegistration({ Future<void>? abortTrigger, }) async {
    final response = await startRegistrationWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Update a passkey
  ///
  /// Update the name of a passkey by its ID. The current user must own this passkey.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [PasskeyUpdateDto] passkeyUpdateDto (required):
  Future<Response> updatePasskeyWithHttpInfo(String id, PasskeyUpdateDto passkeyUpdateDto, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final apiPath = r'/passkeys/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = passkeyUpdateDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      apiPath,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Update a passkey
  ///
  /// Update the name of a passkey by its ID. The current user must own this passkey.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [PasskeyUpdateDto] passkeyUpdateDto (required):
  Future<PasskeyResponseDto?> updatePasskey(String id, PasskeyUpdateDto passkeyUpdateDto, { Future<void>? abortTrigger, }) async {
    final response = await updatePasskeyWithHttpInfo(id, passkeyUpdateDto, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PasskeyResponseDto',) as PasskeyResponseDto;
    
    }
    return null;
  }
}
