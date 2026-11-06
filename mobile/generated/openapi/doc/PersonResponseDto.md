# openapi.model.PersonResponseDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**birthDate** | [**DateTime**](DateTime.md) | Person date of birth | 
**color** | **Optional<String?>** | Person color (hex) | [optional] 
**id** | **String** | Person ID | 
**isFavorite** | **Optional<bool?>** | Is favorite | [optional] 
**isHidden** | **bool** | Is hidden | 
**name** | **String** | Person name | 
**otherPeople** | [**List<PersonOtherResponseDto>**](PersonOtherResponseDto.md) |  | [default to const []]
**sharedBy** | [**List<PeopleUserResponseDto>**](PeopleUserResponseDto.md) | Users that gave the current user access to this person | [default to const []]
**sharedWith** | [**List<PeopleUserResponseDto>**](PeopleUserResponseDto.md) | Users the current user gave access to this person | [default to const []]
**thumbnailPath** | **String** | Thumbnail path | 
**updatedAt** | [**Optional<DateTime?>**](DateTime.md) | Last update date | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


