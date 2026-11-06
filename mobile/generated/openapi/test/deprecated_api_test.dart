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


/// tests for DeprecatedApi
void main() {
  // final instance = DeprecatedApi();

  group('tests for DeprecatedApi', () {
    // Create a partner
    //
    // Create a new partner to share assets with.
    //
    //Future<PartnerResponseDto> createPartnerDeprecated(String id) async
    test('test createPartnerDeprecated', () async {
      // TODO
    });

    // Get system configuration
    //
    // Retrieve the current system configuration.
    //
    //Future<AdminConfigDto> getConfig() async
    test('test getConfig', () async {
      // TODO
    });

    // Get system configuration defaults
    //
    // Retrieve the default values for the system configuration.
    //
    //Future<AdminConfigDto> getConfigDefaults() async
    test('test getConfigDefaults', () async {
      // TODO
    });

    // Retrieve queue counts and status
    //
    // Retrieve the counts of the current queue, as well as the current status.
    //
    //Future<QueuesResponseLegacyDto> getQueuesLegacy() async
    test('test getQueuesLegacy', () async {
      // TODO
    });

    // Get config
    //
    // Retrieve the current server configuration.
    //
    //Future<ServerConfigDto> getServerConfig() async
    test('test getServerConfig', () async {
      // TODO
    });

    // Get features
    //
    // Retrieve available features supported by this server.
    //
    //Future<ServerFeaturesDto> getServerFeatures() async
    test('test getServerFeatures', () async {
      // TODO
    });

    // Merge people
    //
    // Merge a list of people into the person specified in the path parameter.
    //
    //Future<List<BulkIdResponseDto>> mergePersonLegacy(String id, MergePersonDto mergePersonDto) async
    test('test mergePersonLegacy', () async {
      // TODO
    });

    // Run jobs
    //
    // Queue all assets for a specific job type. Defaults to only queueing assets that have not yet been processed, but the force command can be used to re-process all assets.
    //
    //Future<QueueResponseLegacyDto> runQueueCommandLegacy(QueueName name, QueueCommandDto queueCommandDto) async
    test('test runQueueCommandLegacy', () async {
      // TODO
    });

    // Search large assets
    //
    // Search for assets that are considered large based on specified criteria.
    //
    //Future<List<AssetResponseDto>> searchLargeAssets({ List<String> albumIds, String city, String country, DateTime createdAfter, DateTime createdBefore, bool isEncoded, bool isFavorite, bool isMotion, bool isNotInAlbum, bool isOffline, String lensModel, String libraryId, String make, int minFileSize, String model, String ocr, List<String> personIds, int rating, int size, String state, List<String> tagIds, DateTime takenAfter, DateTime takenBefore, DateTime trashedAfter, DateTime trashedBefore, AssetTypeEnum type, DateTime updatedAfter, DateTime updatedBefore, AssetVisibility visibility, bool withDeleted, bool withExif }) async
    test('test searchLargeAssets', () async {
      // TODO
    });

    // Update system configuration
    //
    // Update the system configuration with a new system configuration.
    //
    //Future<AdminConfigDto> updateConfig(AdminConfigDto adminConfigDto) async
    test('test updateConfig', () async {
      // TODO
    });

  });
}
