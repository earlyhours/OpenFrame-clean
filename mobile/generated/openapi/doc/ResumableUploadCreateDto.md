# openapi.model.ResumableUploadCreateDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**checksum** | **String** | Hex or base64 SHA1 | 
**duration** | **Optional<int?>** | Duration in milliseconds (for videos) | [optional] 
**fileCreatedAt** | [**DateTime**](DateTime.md) | File creation date | 
**fileModifiedAt** | [**DateTime**](DateTime.md) | File modification date | 
**filename** | **String** |  | 
**isFavorite** | **Optional<bool?>** | Mark as favorite | [optional] 
**livePhotoVideoId** | **Optional<String?>** | Live photo video ID | [optional] 
**metadata** | [**Optional<List<AssetMetadataUpsertItemDto>?>**](AssetMetadataUpsertItemDto.md) | Asset metadata items | [optional] [default to const []]
**size** | **int** |  | 
**visibility** | [**Optional<AssetVisibility?>**](AssetVisibility.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


