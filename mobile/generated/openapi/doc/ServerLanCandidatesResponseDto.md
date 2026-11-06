# openapi.model.ServerLanCandidatesResponseDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**proof** | **String** | HMAC-SHA256 of the nonce, in hexadecimal | 
**serverId** | **String** | SHA-256 fingerprint of the persistent instance secret | 
**urls** | **List<String>** | Candidate LAN base URLs without /api, unless explicitly configured | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


