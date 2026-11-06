# openapi.model.PeopleUsersUpsertDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**personIds** | **Optional<List<String>?>** | Person IDs, required when type is omitted | [optional] [default to const []]
**role** | [**PersonUserRole**](PersonUserRole.md) |  | 
**sharedWithIds** | **List<String>** | User IDs that should be given access to the person | [default to const []]
**type** | [**Optional<PeopleUsersUpsertType?>**](PeopleUsersUpsertType.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


