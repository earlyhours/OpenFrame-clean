// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/data/db/main/table/user/user.drift.dart' as i1;
import 'package:immich_mobile/data/db/main/table/remote/asset.drift.dart' as i2;
import 'package:immich_mobile/data/db/main/table/remote/stack.drift.dart' as i3;
import 'package:immich_mobile/data/db/main/table/local/asset.drift.dart' as i4;
import 'package:immich_mobile/data/db/main/table/remote/album.drift.dart' as i5;
import 'package:immich_mobile/data/db/main/table/local/album.drift.dart' as i6;
import 'package:immich_mobile/data/db/main/table/local/album_asset.drift.dart'
    as i7;
import 'package:immich_mobile/data/db/main/table/user/auth_user.drift.dart'
    as i8;
import 'package:immich_mobile/data/db/main/table/user/metadata.drift.dart'
    as i9;
import 'package:immich_mobile/data/db/main/table/user/partner.drift.dart'
    as i10;
import 'package:immich_mobile/data/db/main/table/remote/exif.drift.dart' as i11;
import 'package:immich_mobile/data/db/main/table/remote/album_asset.drift.dart'
    as i12;
import 'package:immich_mobile/data/db/main/table/remote/album_user.drift.dart'
    as i13;
import 'package:immich_mobile/data/db/main/table/remote/cloud_id.drift.dart'
    as i14;
import 'package:immich_mobile/data/db/main/table/memory/memory.drift.dart'
    as i15;
import 'package:immich_mobile/data/db/main/table/memory/asset.drift.dart'
    as i16;
import 'package:immich_mobile/data/db/main/table/people/person.drift.dart'
    as i17;
import 'package:immich_mobile/data/db/main/table/people/asset_face.drift.dart'
    as i18;
import 'package:immich_mobile/data/db/main/table/app/store.drift.dart' as i19;
import 'package:immich_mobile/data/db/main/table/local/trashed_asset.drift.dart'
    as i20;
import 'package:immich_mobile/data/db/main/table/asset/edit.drift.dart' as i21;
import 'package:immich_mobile/data/db/main/table/app/settings.drift.dart'
    as i22;
import 'package:immich_mobile/data/db/main/table/asset/ocr.drift.dart' as i23;
import 'package:immich_mobile/infrastructure/repositories/user.repository.dart'
    as i24;
import 'package:immich_mobile/data/db/main/database.dart' as i25;
import 'package:immich_mobile/infrastructure/repositories/backup.repository.dart'
    as i26;
import 'package:immich_mobile/infrastructure/repositories/local_album.repository.dart'
    as i27;
import 'package:immich_mobile/infrastructure/repositories/local_asset.repository.dart'
    as i28;
import 'package:immich_mobile/infrastructure/repositories/map.repository.dart'
    as i29;
import 'package:immich_mobile/infrastructure/repositories/memory.repository.dart'
    as i30;
import 'package:immich_mobile/data/db/main/dao/ocr.dart' as i31;
import 'package:immich_mobile/infrastructure/repositories/partner.repository.dart'
    as i32;
import 'package:immich_mobile/data/db/main/dao/person.dart' as i33;
import 'package:immich_mobile/infrastructure/repositories/remote_album.repository.dart'
    as i34;
import 'package:immich_mobile/infrastructure/repositories/remote_asset.repository.dart'
    as i35;
import 'package:immich_mobile/infrastructure/repositories/remote_exif.repository.dart'
    as i36;
import 'package:immich_mobile/infrastructure/repositories/store.repository.dart'
    as i37;
import 'package:immich_mobile/infrastructure/repositories/sync_migration.repository.dart'
    as i38;
import 'package:immich_mobile/infrastructure/repositories/sync_stream.repository.dart'
    as i39;
import 'package:immich_mobile/infrastructure/repositories/timeline.repository.dart'
    as i40;
import 'package:immich_mobile/infrastructure/repositories/trashed_local_asset.repository.dart'
    as i41;
import 'package:immich_mobile/data/db/main/dao/user_metadata.dart' as i42;
import 'package:immich_mobile/data/db/main/query/merged_asset.drift.dart'
    as i43;
import 'package:drift/internal/modular.dart' as i44;

abstract class $Drift extends i0.GeneratedDatabase {
  $Drift(i0.QueryExecutor e) : super(e);
  $DriftManager get managers => $DriftManager(this);
  late final i1.$UserEntityTable userEntity = i1.$UserEntityTable(this);
  late final i2.$RemoteAssetEntityTable remoteAssetEntity = i2
      .$RemoteAssetEntityTable(this);
  late final i3.$StackEntityTable stackEntity = i3.$StackEntityTable(this);
  late final i4.$LocalAssetEntityTable localAssetEntity = i4
      .$LocalAssetEntityTable(this);
  late final i5.$RemoteAlbumEntityTable remoteAlbumEntity = i5
      .$RemoteAlbumEntityTable(this);
  late final i6.$LocalAlbumEntityTable localAlbumEntity = i6
      .$LocalAlbumEntityTable(this);
  late final i7.$LocalAlbumAssetEntityTable localAlbumAssetEntity = i7
      .$LocalAlbumAssetEntityTable(this);
  late final i8.$AuthUserEntityTable authUserEntity = i8.$AuthUserEntityTable(
    this,
  );
  late final i9.$UserMetadataEntityTable userMetadataEntity = i9
      .$UserMetadataEntityTable(this);
  late final i10.$PartnerEntityTable partnerEntity = i10.$PartnerEntityTable(
    this,
  );
  late final i11.$RemoteExifEntityTable remoteExifEntity = i11
      .$RemoteExifEntityTable(this);
  late final i12.$RemoteAlbumAssetEntityTable remoteAlbumAssetEntity = i12
      .$RemoteAlbumAssetEntityTable(this);
  late final i13.$RemoteAlbumUserEntityTable remoteAlbumUserEntity = i13
      .$RemoteAlbumUserEntityTable(this);
  late final i14.$RemoteAssetCloudIdEntityTable remoteAssetCloudIdEntity = i14
      .$RemoteAssetCloudIdEntityTable(this);
  late final i15.$MemoryEntityTable memoryEntity = i15.$MemoryEntityTable(this);
  late final i16.$MemoryAssetEntityTable memoryAssetEntity = i16
      .$MemoryAssetEntityTable(this);
  late final i17.$PersonEntityTable personEntity = i17.$PersonEntityTable(this);
  late final i18.$AssetFaceEntityTable assetFaceEntity = i18
      .$AssetFaceEntityTable(this);
  late final i19.$StoreEntityTable storeEntity = i19.$StoreEntityTable(this);
  late final i20.$TrashedLocalAssetEntityTable trashedLocalAssetEntity = i20
      .$TrashedLocalAssetEntityTable(this);
  late final i21.$AssetEditEntityTable assetEditEntity = i21
      .$AssetEditEntityTable(this);
  late final i22.$SettingsEntityTable settingsEntity = i22.$SettingsEntityTable(
    this,
  );
  late final i23.$AssetOcrEntityTable assetOcrEntity = i23.$AssetOcrEntityTable(
    this,
  );
  late final i24.AuthUserRepository authUserRepository = i24.AuthUserRepository(
    this as i25.Drift,
  );
  late final i26.BackupRepository backupRepository = i26.BackupRepository(
    this as i25.Drift,
  );
  late final i27.LocalAlbumRepository localAlbumRepository =
      i27.LocalAlbumRepository(this as i25.Drift);
  late final i28.LocalAssetRepository localAssetRepository =
      i28.LocalAssetRepository(this as i25.Drift);
  late final i29.MapRepository mapRepository = i29.MapRepository(
    this as i25.Drift,
  );
  late final i30.MemoryRepository memoryRepository = i30.MemoryRepository(
    this as i25.Drift,
  );
  late final i31.OcrRepository ocrRepository = i31.OcrRepository(
    this as i25.Drift,
  );
  late final i32.PartnerRepository partnerRepository = i32.PartnerRepository(
    this as i25.Drift,
  );
  late final i33.PeopleDatabaseRepository peopleDatabaseRepository =
      i33.PeopleDatabaseRepository(this as i25.Drift);
  late final i34.RemoteAlbumRepository remoteAlbumRepository =
      i34.RemoteAlbumRepository(this as i25.Drift);
  late final i35.RemoteAssetRepository remoteAssetRepository =
      i35.RemoteAssetRepository(this as i25.Drift);
  late final i36.RemoteExifRepository remoteExifRepository =
      i36.RemoteExifRepository(this as i25.Drift);
  late final i37.StoreRepository storeRepository = i37.StoreRepository(
    this as i25.Drift,
  );
  late final i38.SyncMigrationRepository syncMigrationRepository =
      i38.SyncMigrationRepository(this as i25.Drift);
  late final i39.SyncStreamRepository syncStreamRepository =
      i39.SyncStreamRepository(this as i25.Drift);
  late final i40.TimelineRepository timelineRepository = i40.TimelineRepository(
    this as i25.Drift,
  );
  late final i41.TrashedLocalAssetRepository trashedLocalAssetRepository =
      i41.TrashedLocalAssetRepository(this as i25.Drift);
  late final i42.UserMetadataRepository userMetadataRepository =
      i42.UserMetadataRepository(this as i25.Drift);
  late final i24.UserRepository userRepository = i24.UserRepository(
    this as i25.Drift,
  );
  i43.MergedAssetDrift get mergedAssetDrift => i44.ReadDatabaseContainer(
    this,
  ).accessor<i43.MergedAssetDrift>(i43.MergedAssetDrift.new);
  @override
  Iterable<i0.TableInfo<i0.Table, Object?>> get allTables =>
      allSchemaEntities.whereType<i0.TableInfo<i0.Table, Object?>>();
  @override
  List<i0.DatabaseSchemaEntity> get allSchemaEntities => [
    userEntity,
    remoteAssetEntity,
    stackEntity,
    localAssetEntity,
    remoteAlbumEntity,
    localAlbumEntity,
    localAlbumAssetEntity,
    i7.idxLocalAlbumAssetAlbumAsset,
    i4.idxLocalAssetChecksum,
    i4.idxLocalAssetCloudId,
    i4.idxLocalAssetCreatedAt,
    i4.idxLocalAssetGroup,
    i3.idxStackPrimaryAssetId,
    i2.uQRemoteAssetsOwnerChecksum,
    i2.uQRemoteAssetsOwnerLibraryChecksum,
    i2.idxRemoteAssetChecksum,
    i2.idxRemoteAssetStackId,
    i2.idxRemoteAssetOwnerVisibilityDeletedCreated,
    i2.idxRemoteAssetGroup,
    i2.idxRemoteAssetUploaded,
    authUserEntity,
    userMetadataEntity,
    partnerEntity,
    remoteExifEntity,
    remoteAlbumAssetEntity,
    remoteAlbumUserEntity,
    remoteAssetCloudIdEntity,
    memoryEntity,
    memoryAssetEntity,
    personEntity,
    assetFaceEntity,
    storeEntity,
    trashedLocalAssetEntity,
    assetEditEntity,
    settingsEntity,
    assetOcrEntity,
    i10.idxPartnerSharedWithId,
    i11.idxLatLng,
    i11.idxRemoteExifCity,
    i12.idxRemoteAlbumAssetAlbumAsset,
    i14.idxRemoteAssetCloudId,
    i17.idxPersonOwnerId,
    i18.idxAssetFacePersonId,
    i18.idxAssetFaceAssetId,
    i18.idxAssetFaceVisiblePerson,
    i20.idxTrashedLocalAssetChecksum,
    i20.idxTrashedLocalAssetAlbum,
    i21.idxAssetEditAssetId,
    i23.idxAssetOcrAssetId,
  ];
  @override
  i0.StreamQueryUpdateRules
  get streamUpdateRules => const i0.StreamQueryUpdateRules([
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'user_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [
        i0.TableUpdate('remote_asset_entity', kind: i0.UpdateKind.delete),
      ],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'user_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [i0.TableUpdate('stack_entity', kind: i0.UpdateKind.delete)],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'remote_asset_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [
        i0.TableUpdate('remote_album_entity', kind: i0.UpdateKind.update),
      ],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'remote_album_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [
        i0.TableUpdate('local_album_entity', kind: i0.UpdateKind.update),
      ],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'local_asset_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [
        i0.TableUpdate('local_album_asset_entity', kind: i0.UpdateKind.delete),
      ],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'local_album_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [
        i0.TableUpdate('local_album_asset_entity', kind: i0.UpdateKind.delete),
      ],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'user_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [
        i0.TableUpdate('user_metadata_entity', kind: i0.UpdateKind.delete),
      ],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'user_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [i0.TableUpdate('partner_entity', kind: i0.UpdateKind.delete)],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'user_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [i0.TableUpdate('partner_entity', kind: i0.UpdateKind.delete)],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'remote_asset_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [
        i0.TableUpdate('remote_exif_entity', kind: i0.UpdateKind.delete),
      ],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'remote_asset_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [
        i0.TableUpdate('remote_album_asset_entity', kind: i0.UpdateKind.delete),
      ],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'remote_album_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [
        i0.TableUpdate('remote_album_asset_entity', kind: i0.UpdateKind.delete),
      ],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'remote_album_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [
        i0.TableUpdate('remote_album_user_entity', kind: i0.UpdateKind.delete),
      ],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'user_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [
        i0.TableUpdate('remote_album_user_entity', kind: i0.UpdateKind.delete),
      ],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'remote_asset_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [
        i0.TableUpdate(
          'remote_asset_cloud_id_entity',
          kind: i0.UpdateKind.delete,
        ),
      ],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'user_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [i0.TableUpdate('memory_entity', kind: i0.UpdateKind.delete)],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'remote_asset_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [
        i0.TableUpdate('memory_asset_entity', kind: i0.UpdateKind.delete),
      ],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'memory_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [
        i0.TableUpdate('memory_asset_entity', kind: i0.UpdateKind.delete),
      ],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'user_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [i0.TableUpdate('person_entity', kind: i0.UpdateKind.delete)],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'remote_asset_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [i0.TableUpdate('asset_edit_entity', kind: i0.UpdateKind.delete)],
    ),
    i0.WritePropagation(
      on: i0.TableUpdateQuery.onTableName(
        'remote_asset_entity',
        limitUpdateKind: i0.UpdateKind.delete,
      ),
      result: [i0.TableUpdate('asset_ocr_entity', kind: i0.UpdateKind.delete)],
    ),
  ]);
  @override
  i0.DriftDatabaseOptions get options =>
      const i0.DriftDatabaseOptions(storeDateTimeAsText: true);
}

class $DriftManager {
  final $Drift _db;
  $DriftManager(this._db);
  i1.$$UserEntityTableTableManager get userEntity =>
      i1.$$UserEntityTableTableManager(_db, _db.userEntity);
  i2.$$RemoteAssetEntityTableTableManager get remoteAssetEntity =>
      i2.$$RemoteAssetEntityTableTableManager(_db, _db.remoteAssetEntity);
  i3.$$StackEntityTableTableManager get stackEntity =>
      i3.$$StackEntityTableTableManager(_db, _db.stackEntity);
  i4.$$LocalAssetEntityTableTableManager get localAssetEntity =>
      i4.$$LocalAssetEntityTableTableManager(_db, _db.localAssetEntity);
  i5.$$RemoteAlbumEntityTableTableManager get remoteAlbumEntity =>
      i5.$$RemoteAlbumEntityTableTableManager(_db, _db.remoteAlbumEntity);
  i6.$$LocalAlbumEntityTableTableManager get localAlbumEntity =>
      i6.$$LocalAlbumEntityTableTableManager(_db, _db.localAlbumEntity);
  i7.$$LocalAlbumAssetEntityTableTableManager get localAlbumAssetEntity => i7
      .$$LocalAlbumAssetEntityTableTableManager(_db, _db.localAlbumAssetEntity);
  i8.$$AuthUserEntityTableTableManager get authUserEntity =>
      i8.$$AuthUserEntityTableTableManager(_db, _db.authUserEntity);
  i9.$$UserMetadataEntityTableTableManager get userMetadataEntity =>
      i9.$$UserMetadataEntityTableTableManager(_db, _db.userMetadataEntity);
  i10.$$PartnerEntityTableTableManager get partnerEntity =>
      i10.$$PartnerEntityTableTableManager(_db, _db.partnerEntity);
  i11.$$RemoteExifEntityTableTableManager get remoteExifEntity =>
      i11.$$RemoteExifEntityTableTableManager(_db, _db.remoteExifEntity);
  i12.$$RemoteAlbumAssetEntityTableTableManager get remoteAlbumAssetEntity =>
      i12.$$RemoteAlbumAssetEntityTableTableManager(
        _db,
        _db.remoteAlbumAssetEntity,
      );
  i13.$$RemoteAlbumUserEntityTableTableManager get remoteAlbumUserEntity => i13
      .$$RemoteAlbumUserEntityTableTableManager(_db, _db.remoteAlbumUserEntity);
  i14.$$RemoteAssetCloudIdEntityTableTableManager
  get remoteAssetCloudIdEntity =>
      i14.$$RemoteAssetCloudIdEntityTableTableManager(
        _db,
        _db.remoteAssetCloudIdEntity,
      );
  i15.$$MemoryEntityTableTableManager get memoryEntity =>
      i15.$$MemoryEntityTableTableManager(_db, _db.memoryEntity);
  i16.$$MemoryAssetEntityTableTableManager get memoryAssetEntity =>
      i16.$$MemoryAssetEntityTableTableManager(_db, _db.memoryAssetEntity);
  i17.$$PersonEntityTableTableManager get personEntity =>
      i17.$$PersonEntityTableTableManager(_db, _db.personEntity);
  i18.$$AssetFaceEntityTableTableManager get assetFaceEntity =>
      i18.$$AssetFaceEntityTableTableManager(_db, _db.assetFaceEntity);
  i19.$$StoreEntityTableTableManager get storeEntity =>
      i19.$$StoreEntityTableTableManager(_db, _db.storeEntity);
  i20.$$TrashedLocalAssetEntityTableTableManager get trashedLocalAssetEntity =>
      i20.$$TrashedLocalAssetEntityTableTableManager(
        _db,
        _db.trashedLocalAssetEntity,
      );
  i21.$$AssetEditEntityTableTableManager get assetEditEntity =>
      i21.$$AssetEditEntityTableTableManager(_db, _db.assetEditEntity);
  i22.$$SettingsEntityTableTableManager get settingsEntity =>
      i22.$$SettingsEntityTableTableManager(_db, _db.settingsEntity);
  i23.$$AssetOcrEntityTableTableManager get assetOcrEntity =>
      i23.$$AssetOcrEntityTableTableManager(_db, _db.assetOcrEntity);
}
