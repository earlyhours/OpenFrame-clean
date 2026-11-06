//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for PasskeysApi
void main() {
  // final instance = PasskeysApi();

  group('tests for PasskeysApi', () {
    // Delete a passkey
    //
    // Delete a passkey by its ID. The current user must own this passkey.
    //
    //Future deletePasskey(String id) async
    test('test deletePasskey', () async {
      // TODO
    });

    // Finish passkey authentication
    //
    // Verify the response from the authenticator and receive a session token.
    //
    //Future<LoginResponseDto> finishAuthentication(PasskeyAuthenticationFinishDto passkeyAuthenticationFinishDto) async
    test('test finishAuthentication', () async {
      // TODO
    });

    // Finish passkey registration
    //
    // Verify the response from the authenticator and save the new passkey for the current user.
    //
    //Future<PasskeyResponseDto> finishRegistration(PasskeyRegistrationFinishDto passkeyRegistrationFinishDto) async
    test('test finishRegistration', () async {
      // TODO
    });

    // Retrieve a passkey
    //
    // Retrieve a passkey by its ID. The current user must own this passkey.
    //
    //Future<PasskeyResponseDto> getPasskey(String id) async
    test('test getPasskey', () async {
      // TODO
    });

    // Search passkeys
    //
    // Search the passkeys of the current user.
    //
    //Future<List<PasskeyResponseDto>> searchPasskeys({ String id }) async
    test('test searchPasskeys', () async {
      // TODO
    });

    // Start passkey authentication
    //
    // Generate the options used by the browser to sign in with a passkey.
    //
    //Future<Map<String, Object>> startAuthentication() async
    test('test startAuthentication', () async {
      // TODO
    });

    // Start passkey registration
    //
    // Generate the options used by the browser to create a new passkey for the current user.
    //
    //Future<Map<String, Object>> startRegistration() async
    test('test startRegistration', () async {
      // TODO
    });

    // Update a passkey
    //
    // Update the name of a passkey by its ID. The current user must own this passkey.
    //
    //Future<PasskeyResponseDto> updatePasskey(String id, PasskeyUpdateDto passkeyUpdateDto) async
    test('test updatePasskey', () async {
      // TODO
    });

  });
}
