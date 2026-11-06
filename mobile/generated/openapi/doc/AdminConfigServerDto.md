# openapi.model.AdminConfigServerDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**autoDetectLocalUrls** | **Optional<bool?>** | Advertise private interface addresses using the server port | [optional] 
**externalDomain** | **String** | External domain | 
**localUrls** | **Optional<List<String>?>** | LAN base URLs, including any reverse proxy path. Only disclosed to authenticated users | [optional] [default to const []]
**loginPageMessage** | **String** | Login page message | 
**publicUsers** | **bool** | Public users | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


