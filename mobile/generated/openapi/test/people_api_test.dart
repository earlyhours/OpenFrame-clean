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


/// tests for PeopleApi
void main() {
  // final instance = PeopleApi();

  group('tests for PeopleApi', () {
    // Create a person
    //
    // Create a new person that can have multiple faces assigned to them.
    //
    //Future<PersonResponseDto> createPerson(PersonCreateDto personCreateDto) async
    test('test createPerson', () async {
      // TODO
    });

    // Delete people
    //
    // Bulk delete a list of people at once.
    //
    //Future deletePeople(PeopleDeleteDto peopleDeleteDto) async
    test('test deletePeople', () async {
      // TODO
    });

    // Delete person
    //
    // Delete an individual person.
    //
    //Future deletePerson(String id, PersonDeleteDto personDeleteDto) async
    test('test deletePerson', () async {
      // TODO
    });

    // Get all people
    //
    // Retrieve a list of all people.
    //
    //Future<PeopleResponseDto> getAllPeople({ String closestAssetId, String closestPersonId, bool isFavorite, bool isHidden, String name, int page, String sharedById, String sharedWithId, int size, bool withHidden }) async
    test('test getAllPeople', () async {
      // TODO
    });

    // Get a person
    //
    // Retrieve a person by id.
    //
    //Future<PersonResponseDto> getPerson(String id) async
    test('test getPerson', () async {
      // TODO
    });

    // Get person statistics
    //
    // Retrieve statistics about a specific person.
    //
    //Future<PersonStatisticsResponseDto> getPersonStatistics(String id) async
    test('test getPersonStatistics', () async {
      // TODO
    });

    // Get person thumbnail
    //
    // Retrieve the thumbnail file for a person.
    //
    //Future<MultipartFile> getPersonThumbnail(String id) async
    test('test getPersonThumbnail', () async {
      // TODO
    });

    // Get people access
    //
    // Retrieve a list of users and the people to which they have been given access
    //
    //Future<List<PersonUsersResponseDtoInner>> getUsersForPeople({ SharingDirection direction, String personId, PersonUserRole role, String sharedById, String sharedWithId }) async
    test('test getUsersForPeople', () async {
      // TODO
    });

    // Merge people
    //
    // Merge an ordered list of people together into a single person. The final name and birth date are always the first defined value, following the order. Also automatically merges people for other users in the cluster group, skipping people that would result in overriding a previously set name or birth date.
    //
    //Future<List<BulkIdResponseDto>> mergePeople(MergePersonDto mergePersonDto) async
    test('test mergePeople', () async {
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

    // Reassign faces
    //
    // Bulk reassign a list of faces to a different person.
    //
    //Future<List<PersonResponseDto>> reassignFaces(String id, AssetFaceUpdateDto assetFaceUpdateDto) async
    test('test reassignFaces', () async {
      // TODO
    });

    // Remove users from people
    //
    // Remove user access to people
    //
    //Future removeUsersFromPeople(List<PersonUsersDeleteDtoInner> personUsersDeleteDtoInner) async
    test('test removeUsersFromPeople', () async {
      // TODO
    });

    // Update people
    //
    // Bulk update multiple people at once.
    //
    //Future<List<BulkIdResponseDto>> updatePeople(PeopleUpdateDto peopleUpdateDto) async
    test('test updatePeople', () async {
      // TODO
    });

    // Update person
    //
    // Update an individual person.
    //
    //Future<PersonResponseDto> updatePerson(String id, PersonUpdateDto personUpdateDto) async
    test('test updatePerson', () async {
      // TODO
    });

    // Upsert user access
    //
    // Give users access to people
    //
    //Future upsertPeopleUsers(PeopleUsersUpsertDto peopleUsersUpsertDto) async
    test('test upsertPeopleUsers', () async {
      // TODO
    });

  });
}
