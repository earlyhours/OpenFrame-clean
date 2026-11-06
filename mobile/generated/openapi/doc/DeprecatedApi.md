# openapi.api.DeprecatedApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPartnerDeprecated**](DeprecatedApi.md#createpartnerdeprecated) | **POST** /partners/{id} | Create a partner
[**getConfig**](DeprecatedApi.md#getconfig) | **GET** /system-config | Get system configuration
[**getConfigDefaults**](DeprecatedApi.md#getconfigdefaults) | **GET** /system-config/defaults | Get system configuration defaults
[**getQueuesLegacy**](DeprecatedApi.md#getqueueslegacy) | **GET** /jobs | Retrieve queue counts and status
[**getServerConfig**](DeprecatedApi.md#getserverconfig) | **GET** /server/config | Get config
[**getServerFeatures**](DeprecatedApi.md#getserverfeatures) | **GET** /server/features | Get features
[**mergePersonLegacy**](DeprecatedApi.md#mergepersonlegacy) | **POST** /people/{id}/merge | Merge people
[**runQueueCommandLegacy**](DeprecatedApi.md#runqueuecommandlegacy) | **PUT** /jobs/{name} | Run jobs
[**searchLargeAssets**](DeprecatedApi.md#searchlargeassets) | **POST** /search/large-assets | Search large assets
[**updateConfig**](DeprecatedApi.md#updateconfig) | **PUT** /system-config | Update system configuration


# **createPartnerDeprecated**
> PartnerResponseDto createPartnerDeprecated(id)

Create a partner

Create a new partner to share assets with.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DeprecatedApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.createPartnerDeprecated(id);
    print(result);
} catch (e) {
    print('Exception when calling DeprecatedApi->createPartnerDeprecated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**PartnerResponseDto**](PartnerResponseDto.md)

### Authorization

[cookie](../README.md#cookie), [api_key](../README.md#api_key), [bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfig**
> AdminConfigDto getConfig()

Get system configuration

Retrieve the current system configuration.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DeprecatedApi();

try {
    final result = api_instance.getConfig();
    print(result);
} catch (e) {
    print('Exception when calling DeprecatedApi->getConfig: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AdminConfigDto**](AdminConfigDto.md)

### Authorization

[cookie](../README.md#cookie), [api_key](../README.md#api_key), [bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfigDefaults**
> AdminConfigDto getConfigDefaults()

Get system configuration defaults

Retrieve the default values for the system configuration.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DeprecatedApi();

try {
    final result = api_instance.getConfigDefaults();
    print(result);
} catch (e) {
    print('Exception when calling DeprecatedApi->getConfigDefaults: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AdminConfigDto**](AdminConfigDto.md)

### Authorization

[cookie](../README.md#cookie), [api_key](../README.md#api_key), [bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueuesLegacy**
> QueuesResponseLegacyDto getQueuesLegacy()

Retrieve queue counts and status

Retrieve the counts of the current queue, as well as the current status.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DeprecatedApi();

try {
    final result = api_instance.getQueuesLegacy();
    print(result);
} catch (e) {
    print('Exception when calling DeprecatedApi->getQueuesLegacy: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**QueuesResponseLegacyDto**](QueuesResponseLegacyDto.md)

### Authorization

[cookie](../README.md#cookie), [api_key](../README.md#api_key), [bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServerConfig**
> ServerConfigDto getServerConfig()

Get config

Retrieve the current server configuration.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DeprecatedApi();

try {
    final result = api_instance.getServerConfig();
    print(result);
} catch (e) {
    print('Exception when calling DeprecatedApi->getServerConfig: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ServerConfigDto**](ServerConfigDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServerFeatures**
> ServerFeaturesDto getServerFeatures()

Get features

Retrieve available features supported by this server.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DeprecatedApi();

try {
    final result = api_instance.getServerFeatures();
    print(result);
} catch (e) {
    print('Exception when calling DeprecatedApi->getServerFeatures: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ServerFeaturesDto**](ServerFeaturesDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mergePersonLegacy**
> List<BulkIdResponseDto> mergePersonLegacy(id, mergePersonDto)

Merge people

Merge a list of people into the person specified in the path parameter.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DeprecatedApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final mergePersonDto = MergePersonDto(); // MergePersonDto | 

try {
    final result = api_instance.mergePersonLegacy(id, mergePersonDto);
    print(result);
} catch (e) {
    print('Exception when calling DeprecatedApi->mergePersonLegacy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **mergePersonDto** | [**MergePersonDto**](MergePersonDto.md)|  | 

### Return type

[**List<BulkIdResponseDto>**](BulkIdResponseDto.md)

### Authorization

[cookie](../README.md#cookie), [api_key](../README.md#api_key), [bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runQueueCommandLegacy**
> QueueResponseLegacyDto runQueueCommandLegacy(name, queueCommandDto)

Run jobs

Queue all assets for a specific job type. Defaults to only queueing assets that have not yet been processed, but the force command can be used to re-process all assets.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DeprecatedApi();
final name = ; // QueueName | 
final queueCommandDto = QueueCommandDto(); // QueueCommandDto | 

try {
    final result = api_instance.runQueueCommandLegacy(name, queueCommandDto);
    print(result);
} catch (e) {
    print('Exception when calling DeprecatedApi->runQueueCommandLegacy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**QueueName**](.md)|  | 
 **queueCommandDto** | [**QueueCommandDto**](QueueCommandDto.md)|  | 

### Return type

[**QueueResponseLegacyDto**](QueueResponseLegacyDto.md)

### Authorization

[cookie](../README.md#cookie), [api_key](../README.md#api_key), [bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchLargeAssets**
> List<AssetResponseDto> searchLargeAssets(albumIds, city, country, createdAfter, createdBefore, isEncoded, isFavorite, isMotion, isNotInAlbum, isOffline, lensModel, libraryId, make, minFileSize, model, ocr, personIds, rating, size, state, tagIds, takenAfter, takenBefore, trashedAfter, trashedBefore, type, updatedAfter, updatedBefore, visibility, withDeleted, withExif)

Search large assets

Search for assets that are considered large based on specified criteria.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DeprecatedApi();
final albumIds = []; // List<String> | Filter by album IDs
final city = city_example; // String | Filter by city name
final country = country_example; // String | Filter by country name
final createdAfter = 2024-01-01T00:00Z; // DateTime | Filter by creation date (after)
final createdBefore = 2024-01-01T00:00Z; // DateTime | Filter by creation date (before)
final isEncoded = true; // bool | Filter by encoded status
final isFavorite = true; // bool | Filter by favorite status
final isMotion = true; // bool | Filter by motion photo status
final isNotInAlbum = true; // bool | Filter assets not in any album
final isOffline = true; // bool | Filter by offline status
final lensModel = lensModel_example; // String | Filter by lens model
final libraryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Library ID to filter by
final make = make_example; // String | Filter by camera make
final minFileSize = 56; // int | Minimum file size in bytes
final model = model_example; // String | Filter by camera model
final ocr = ocr_example; // String | Filter by OCR text content
final personIds = []; // List<String> | Filter by person IDs
final rating = 56; // int | Filter by rating [1-5], or null for unrated
final size = 56; // int | Number of results to return
final state = state_example; // String | Filter by state/province name
final tagIds = []; // List<String> | Filter by tag IDs
final takenAfter = 2024-01-01T00:00Z; // DateTime | Filter by taken date (after)
final takenBefore = 2024-01-01T00:00Z; // DateTime | Filter by taken date (before)
final trashedAfter = 2024-01-01T00:00Z; // DateTime | Filter by trash date (after)
final trashedBefore = 2024-01-01T00:00Z; // DateTime | Filter by trash date (before)
final type = ; // AssetTypeEnum | 
final updatedAfter = 2024-01-01T00:00Z; // DateTime | Filter by update date (after)
final updatedBefore = 2024-01-01T00:00Z; // DateTime | Filter by update date (before)
final visibility = ; // AssetVisibility | 
final withDeleted = true; // bool | Include deleted assets
final withExif = true; // bool | Include EXIF data in response

try {
    final result = api_instance.searchLargeAssets(albumIds, city, country, createdAfter, createdBefore, isEncoded, isFavorite, isMotion, isNotInAlbum, isOffline, lensModel, libraryId, make, minFileSize, model, ocr, personIds, rating, size, state, tagIds, takenAfter, takenBefore, trashedAfter, trashedBefore, type, updatedAfter, updatedBefore, visibility, withDeleted, withExif);
    print(result);
} catch (e) {
    print('Exception when calling DeprecatedApi->searchLargeAssets: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **albumIds** | [**List<String>**](String.md)| Filter by album IDs | [optional] [default to const []]
 **city** | **String**| Filter by city name | [optional] 
 **country** | **String**| Filter by country name | [optional] 
 **createdAfter** | **DateTime**| Filter by creation date (after) | [optional] 
 **createdBefore** | **DateTime**| Filter by creation date (before) | [optional] 
 **isEncoded** | **bool**| Filter by encoded status | [optional] 
 **isFavorite** | **bool**| Filter by favorite status | [optional] 
 **isMotion** | **bool**| Filter by motion photo status | [optional] 
 **isNotInAlbum** | **bool**| Filter assets not in any album | [optional] 
 **isOffline** | **bool**| Filter by offline status | [optional] 
 **lensModel** | **String**| Filter by lens model | [optional] 
 **libraryId** | **String**| Library ID to filter by | [optional] 
 **make** | **String**| Filter by camera make | [optional] 
 **minFileSize** | **int**| Minimum file size in bytes | [optional] 
 **model** | **String**| Filter by camera model | [optional] 
 **ocr** | **String**| Filter by OCR text content | [optional] 
 **personIds** | [**List<String>**](String.md)| Filter by person IDs | [optional] [default to const []]
 **rating** | **int**| Filter by rating [1-5], or null for unrated | [optional] 
 **size** | **int**| Number of results to return | [optional] [default to 250]
 **state** | **String**| Filter by state/province name | [optional] 
 **tagIds** | [**List<String>**](String.md)| Filter by tag IDs | [optional] [default to const []]
 **takenAfter** | **DateTime**| Filter by taken date (after) | [optional] 
 **takenBefore** | **DateTime**| Filter by taken date (before) | [optional] 
 **trashedAfter** | **DateTime**| Filter by trash date (after) | [optional] 
 **trashedBefore** | **DateTime**| Filter by trash date (before) | [optional] 
 **type** | [**AssetTypeEnum**](.md)|  | [optional] 
 **updatedAfter** | **DateTime**| Filter by update date (after) | [optional] 
 **updatedBefore** | **DateTime**| Filter by update date (before) | [optional] 
 **visibility** | [**AssetVisibility**](.md)|  | [optional] 
 **withDeleted** | **bool**| Include deleted assets | [optional] 
 **withExif** | **bool**| Include EXIF data in response | [optional] 

### Return type

[**List<AssetResponseDto>**](AssetResponseDto.md)

### Authorization

[cookie](../README.md#cookie), [api_key](../README.md#api_key), [bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateConfig**
> AdminConfigDto updateConfig(adminConfigDto)

Update system configuration

Update the system configuration with a new system configuration.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookie').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DeprecatedApi();
final adminConfigDto = AdminConfigDto(); // AdminConfigDto | 

try {
    final result = api_instance.updateConfig(adminConfigDto);
    print(result);
} catch (e) {
    print('Exception when calling DeprecatedApi->updateConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adminConfigDto** | [**AdminConfigDto**](AdminConfigDto.md)|  | 

### Return type

[**AdminConfigDto**](AdminConfigDto.md)

### Authorization

[cookie](../README.md#cookie), [api_key](../README.md#api_key), [bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

