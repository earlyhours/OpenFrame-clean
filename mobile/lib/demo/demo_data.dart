import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:uuid/uuid.dart';

/// Deterministic UUID for a demo entity so reinstalls/relaunches stay idempotent.
String demoId(String name) => const Uuid().v5(Namespace.url.value, 'https://openframe.demo/$name');

String _fakeChecksum(String seed) => base64.encode(sha1.convert(utf8.encode('openframe-demo:$seed')).bytes);

class DemoUser {
  DemoUser(this.key, this.name, this.email, {this.avatar, this.color = 'primary'}) : id = demoId('user/$key');

  final String key;
  final String id;
  final String name;
  final String email;

  /// Key of the image under assets/demo/people used as profile picture.
  final String? avatar;
  final String color;
  final DateTime profileChangedAt = DateTime.utc(2024, 1, 1);
}

class DemoPlace {
  const DemoPlace(this.city, this.state, this.country, this.lat, this.lng, this.folder);

  final String city;
  final String? state;
  final String country;
  final double lat;
  final double lng;
  final String folder;
}

class DemoCamera {
  const DemoCamera(this.make, this.model, this.lens);

  final String make;
  final String model;
  final String? lens;
}

class DemoAsset {
  DemoAsset({
    required this.id,
    required this.key,
    required this.ownerId,
    required this.takenAt,
    required this.width,
    required this.height,
    required this.thumbhash,
    required this.fileName,
    required this.checksum,
    required this.keywords,
    this.place,
    this.camera,
    this.description,
    this.isVideo = false,
    this.durationMs,
    this.isFavorite = false,
    this.visibility = 'timeline',
    this.deletedAt,
    this.stackId,
    this.fileSize = 0,
    this.rating,
    this.uploadedBytes,
    this.uploadedMime,
  });

  final String id;

  /// Key of the bundled image (`assets/demo/{thumb,preview}/<key>.jpg`). Null for uploaded assets.
  final String? key;
  final String ownerId;
  DateTime takenAt;
  final int width;
  final int height;
  final String? thumbhash;
  final String fileName;
  final String checksum;
  final List<String> keywords;
  DemoPlace? place;
  final DemoCamera? camera;
  String? description;
  final bool isVideo;
  final int? durationMs;
  bool isFavorite;

  /// One of timeline, archive, hidden, locked.
  String visibility;
  DateTime? deletedAt;
  String? stackId;
  final int fileSize;
  int? rating;
  final Uint8List? uploadedBytes;
  final String? uploadedMime;
  DateTime updatedAt = DateTime.utc(2026, 1, 1);

  String get originalPath => '/photos/${takenAt.year}/${place?.folder ?? 'Camera'}/$fileName';
  String get folderPath => '/photos/${takenAt.year}/${place?.folder ?? 'Camera'}';
}

class DemoAlbum {
  DemoAlbum({
    required this.id,
    required this.name,
    required this.ownerId,
    required this.assetIds,
    this.description = '',
    this.thumbnailAssetId,
    Map<String, String>? sharedWith,
    this.isActivityEnabled = true,
    this.order = 'desc',
    DateTime? createdAt,
  }) : sharedWith = sharedWith ?? {},
       createdAt = createdAt ?? DateTime.utc(2025, 1, 1),
       updatedAt = createdAt ?? DateTime.utc(2025, 1, 1);

  final String id;
  String name;
  String description;
  final String ownerId;
  final List<String> assetIds;
  String? thumbnailAssetId;

  /// userId -> role (editor | viewer)
  final Map<String, String> sharedWith;
  bool isActivityEnabled;
  String order;
  final DateTime createdAt;
  DateTime updatedAt;
}

class DemoPerson {
  DemoPerson(this.key, this.name, {this.birthDate, this.isFavorite = false}) : id = demoId('person/$key');

  final String key;
  final String id;
  String name;
  DateTime? birthDate;
  bool isFavorite;
  bool isHidden = false;
  String? faceAssetId;
  DateTime updatedAt = DateTime.utc(2026, 1, 1);
}

class DemoFace {
  DemoFace(this.personId, this.assetId, this.x1, this.y1, this.x2, this.y2, this.imageWidth, this.imageHeight)
    : id = demoId('face/$personId/$assetId');

  final String id;
  final String personId;
  final String assetId;
  final int x1;
  final int y1;
  final int x2;
  final int y2;
  final int imageWidth;
  final int imageHeight;
}

class DemoMemory {
  DemoMemory({required this.id, required this.memoryAt, required this.year, required this.assetIds, required this.showAt});

  final String id;
  final DateTime memoryAt;
  final int year;
  final List<String> assetIds;
  final DateTime showAt;
  DateTime? seenAt;
  bool isSaved = false;
}

class DemoStack {
  DemoStack(this.id, this.ownerId, this.primaryAssetId, this.assetIds);

  final String id;
  final String ownerId;
  String primaryAssetId;
  final List<String> assetIds;
}

class DemoActivity {
  DemoActivity({
    required this.id,
    required this.albumId,
    required this.userId,
    required this.createdAt,
    this.assetId,
    this.comment,
  });

  final String id;
  final String albumId;
  final String? assetId;
  final String userId;
  final String? comment;
  final DateTime createdAt;
  bool get isLike => comment == null;
}

class DemoTag {
  DemoTag(this.value) : id = demoId('tag/$value');

  final String id;
  final String value;
  final Set<String> assetIds = {};
  String get name => value.split('/').last;
  String? get parentValue => value.contains('/') ? value.substring(0, value.lastIndexOf('/')) : null;
}

class DemoSharedLink {
  DemoSharedLink({
    required this.id,
    required this.key,
    required this.createdAt,
    this.albumId,
    this.assetIds = const [],
    this.description,
    this.expiresAt,
    this.allowDownload = true,
    this.allowUpload = false,
    this.showMetadata = true,
    this.password,
    this.slug,
  });

  final String id;
  final String key;
  final DateTime createdAt;
  final String? albumId;
  final List<String> assetIds;
  String? description;
  DateTime? expiresAt;
  bool allowDownload;
  bool allowUpload;
  bool showMetadata;
  String? password;
  String? slug;
}

/// Size + thumbhash of every bundled demo image (generated alongside the images).
typedef DemoManifest = Map<String, ({int w, int h, String? thumbhash, int bytes})>;

const _places = <String, DemoPlace>{
  'sf': DemoPlace('San Francisco', 'California', 'United States', 37.7694, -122.4862, 'Home'),
  'oceanbeach': DemoPlace('San Francisco', 'California', 'United States', 37.7594, -122.5107, 'Home'),
  'goldengate': DemoPlace('San Francisco', 'California', 'United States', 37.8078, -122.4750, 'Home'),
  'kyoto': DemoPlace('Kyoto', 'Kyoto', 'Japan', 35.0116, 135.7681, 'Japan'),
  'tokyo': DemoPlace('Tokyo', 'Tokyo', 'Japan', 35.6812, 139.7671, 'Japan'),
  'nyc': DemoPlace('New York', 'New York', 'United States', 40.7580, -73.9855, 'New York'),
  'brooklyn': DemoPlace('New York', 'New York', 'United States', 40.7061, -73.9969, 'New York'),
  'lisbon': DemoPlace('Lisbon', 'Lisbon', 'Portugal', 38.7139, -9.1394, 'Portugal'),
  'porto': DemoPlace('Porto', 'Porto', 'Portugal', 41.1408, -8.6110, 'Portugal'),
  'algarve': DemoPlace('Lagos', 'Faro', 'Portugal', 37.0814, -8.6740, 'Portugal'),
  'tuscany': DemoPlace('Pienza', 'Tuscany', 'Italy', 43.0766, 11.6788, 'Tuscany'),
  'santorini': DemoPlace('Oia', 'South Aegean', 'Greece', 36.4618, 25.3753, 'Santorini'),
  'madeira': DemoPlace('Funchal', 'Madeira', 'Portugal', 32.7607, -16.9595, 'Madeira'),
  'banff': DemoPlace('Banff', 'Alberta', 'Canada', 51.1784, -115.5708, 'Canada'),
  'lakelouise': DemoPlace('Lake Louise', 'Alberta', 'Canada', 51.4167, -116.2167, 'Canada'),
  'norway': DemoPlace('Stavanger', 'Rogaland', 'Norway', 58.9863, 6.1904, 'Norway'),
  'svalbard': DemoPlace('Longyearbyen', 'Svalbard', 'Norway', 78.2232, 15.6267, 'Norway'),
  'iceland': DemoPlace('Skógar', 'South Iceland', 'Iceland', 63.5321, -19.5114, 'Iceland'),
  'zermatt': DemoPlace('Zermatt', 'Valais', 'Switzerland', 46.0207, 7.7491, 'Alps'),
  'fussen': DemoPlace('Schwangau', 'Bavaria', 'Germany', 47.5576, 10.7498, 'Alps'),
  'mara': DemoPlace('Maasai Mara', 'Narok', 'Kenya', -1.4061, 35.0081, 'Kenya'),
  'bigsur': DemoPlace('Big Sur', 'California', 'United States', 36.2704, -121.8081, 'California'),
  'yosemite': DemoPlace('Yosemite Valley', 'California', 'United States', 37.7456, -119.5936, 'California'),
  'santacruz': DemoPlace('Santa Cruz', 'California', 'United States', 36.9615, -122.0230, 'California'),
  'monterey': DemoPlace('Monterey', 'California', 'United States', 36.6182, -121.9019, 'California'),
  'sedona': DemoPlace('Sedona', 'Arizona', 'United States', 34.8697, -111.7610, 'California'),
  'bled': DemoPlace('Bled', 'Upper Carniola', 'Slovenia', 46.3625, 14.0936, 'Slovenia'),
  'skye': DemoPlace('Portree', 'Scotland', 'United Kingdom', 57.4125, -6.1960, 'Scotland'),
  'bruges': DemoPlace('Bruges', 'Flanders', 'Belgium', 51.2093, 3.2247, 'Belgium'),
  'chicago': DemoPlace('Chicago', 'Illinois', 'United States', 41.8826, -87.6233, 'Chicago'),
  'vancouver': DemoPlace('Vancouver', 'British Columbia', 'Canada', 49.3043, -123.1443, 'Canada'),
  'barcelona': DemoPlace('Barcelona', 'Catalonia', 'Spain', 41.3784, 2.1925, 'Spain'),
  'maine': DemoPlace('Cape Elizabeth', 'Maine', 'United States', 43.6231, -70.2079, 'Maine'),
  'singapore': DemoPlace('Singapore', null, 'Singapore', 1.4043, 103.7930, 'Singapore'),
};

const _cameras = [
  DemoCamera('SONY', 'ILCE-7M4', 'FE 24-70mm F2.8 GM II'),
  DemoCamera('FUJIFILM', 'X-T5', 'XF23mmF1.4 R LM WR'),
  DemoCamera('Apple', 'iPhone 15 Pro', 'iPhone 15 Pro back triple camera 6.765mm f/1.78'),
  DemoCamera('Google', 'Pixel 8 Pro', null),
  DemoCamera('Canon', 'EOS R6m2', 'RF24-105mm F4 L IS USM'),
];

/// When a demo asset was taken.
sealed class _When {
  const _When();
}

class _At extends _When {
  const _At(this.year, this.month, this.day, [this.hour = 12, this.minute = 0]);
  final int year;
  final int month;
  final int day;
  final int hour;
  final int minute;
}

/// Same calendar day as "today", N years ago (drives "On this day" memories).
class _YearsAgo extends _When {
  const _YearsAgo(this.years, [this.hour = 12, this.minute = 0]);
  final int years;
  final int hour;
  final int minute;
}

class _DaysAgo extends _When {
  const _DaysAgo(this.days, [this.hour = 12, this.minute = 0]);
  final int days;
  final int hour;
  final int minute;
}

class _Seed {
  const _Seed(
    this.key,
    this.place,
    this.when,
    this.keywords, {
    this.desc,
    this.owner = 'alex',
    this.fav = false,
    this.visibility = 'timeline',
    this.trashed = false,
  });

  final String key;
  final String place;
  final _When when;
  final String keywords;
  final String? desc;
  final String owner;
  final bool fav;
  final String visibility;
  final bool trashed;
}

const _seeds = <_Seed>[
  // Home / recent
  _Seed('p1027', 'sf', _DaysAgo(1, 17, 40), 'portrait woman maya golden hour', desc: 'Maya on the balcony', fav: true),
  _Seed('l237', 'sf', _DaysAgo(2, 9, 15), 'dog puppy biscuit pet black', desc: 'Biscuit says good morning', fav: true),
  _Seed('l1080', 'sf', _DaysAgo(3, 11, 5), 'strawberries fruit food red market'),
  _Seed('l250', 'sf', _DaysAgo(4, 20, 30), 'camera vintage piano home'),
  _Seed('l225', 'sf', _DaysAgo(5, 8, 0), 'tea teapot breakfast flowers', owner: 'maya'),
  _Seed('l1025', 'sf', _DaysAgo(6, 21, 10), 'dog pug blanket pet cozy biscuit'),
  _Seed('l312', 'sf', _DaysAgo(8, 10, 0), 'honey food breakfast'),
  _Seed('l429', 'sf', _DaysAgo(9, 15, 0), 'raspberries fruit food red'),
  _Seed('l152', 'sf', _DaysAgo(10, 16, 0), 'flowers petunia purple garden'),
  _Seed('l837', 'sf', _DaysAgo(12, 13, 0), 'dog bulldog pet street'),
  _Seed('l169', 'sf', _DaysAgo(14, 14, 30), 'dog dachshund pet grass park'),
  _Seed('l40', 'sf', _DaysAgo(15, 18, 0), 'cat pet nose closeup', trashed: true),
  _Seed('l44', 'oceanbeach', _DaysAgo(16, 7, 30), 'beach fog ocean grey', trashed: true),
  _Seed('l129', 'goldengate', _DaysAgo(18, 18, 45), 'couple bench sunset bay', desc: 'Sunset at Crissy Field', visibility: 'locked'),
  _Seed('l1062', 'sf', _DaysAgo(20, 22, 0), 'dog pug bed pet sleepy biscuit'),
  _Seed('l24', 'sf', _DaysAgo(22, 21, 0), 'book reading home'),
  _Seed('l39', 'sf', _DaysAgo(24, 19, 0), 'record player vinyl music home'),
  _Seed('l292', 'sf', _DaysAgo(26, 18, 30), 'vegetables cooking food kitchen', trashed: true),
  _Seed('l326', 'sf', _DaysAgo(28, 10, 0), 'tea lemon drink food', visibility: 'locked'),
  _Seed('l111', 'sf', _DaysAgo(40, 12, 0), 'car vintage classic street', visibility: 'archive'),
  _Seed('l593', 'singapore', _DaysAgo(60, 11, 0), 'tiger zoo animal wildlife', visibility: 'archive'),
  // On this day - 1 year ago (Chicago)
  _Seed('l1067', 'chicago', _YearsAgo(1, 18, 20), 'city skyline sunset skyscraper', desc: 'Chicago from the Hancock', fav: true),
  _Seed('p349', 'chicago', _YearsAgo(1, 16, 5), 'man lake skyline leo portrait'),
  // On this day - 2 years ago (Bruges)
  _Seed('l164', 'bruges', _YearsAgo(2, 11, 30), 'canal boats town houses europe', desc: 'Canals of Bruges'),
  // On this day - 3 years ago (Kenya safari)
  _Seed('l219', 'mara', _YearsAgo(3, 7, 10), 'leopard wildlife safari animal', desc: 'A leopard crossing the track', fav: true),
  _Seed('l1074', 'mara', _YearsAgo(3, 9, 40), 'lion lioness wildlife safari animal'),
  _Seed('l1024', 'mara', _YearsAgo(3, 16, 15), 'vulture bird wildlife safari animal'),
  // New York, Dec 2025
  _Seed('l43', 'brooklyn', _At(2025, 12, 12, 19, 30), 'bridge city night skyline new york', desc: 'Brooklyn Bridge at night'),
  _Seed('l274', 'nyc', _At(2025, 12, 13, 21, 0), 'times square city night lights', fav: true),
  _Seed('v274', 'nyc', _At(2025, 12, 13, 21, 5), 'times square city night lights video'),
  _Seed('l453', 'nyc', _At(2025, 12, 13, 23, 0), 'concert music band stage sam'),
  _Seed('p57', 'nyc', _At(2025, 12, 14, 10, 0), 'street city buildings'),
  // Lisbon & Porto, Jun 2025
  _Seed('l22', 'lisbon', _At(2025, 6, 14, 10, 20), 'street man walking city leo'),
  _Seed('p91', 'lisbon', _At(2025, 6, 14, 11, 0), 'portrait man camera leo'),
  _Seed('p1047', 'lisbon', _At(2025, 6, 14, 15, 30), 'alley street city old town'),
  _Seed('l183', 'lisbon', _At(2025, 6, 15, 12, 10), 'van car vintage street'),
  _Seed('l42', 'lisbon', _At(2025, 6, 15, 9, 0), 'cafe coffee breakfast table'),
  _Seed('l395', 'lisbon', _At(2025, 6, 15, 22, 30), 'bar friends night drinks people', desc: 'Last night in Bairro Alto'),
  _Seed('l211', 'porto', _At(2025, 6, 17, 17, 45), 'boats harbor river'),
  _Seed('l431', 'porto', _At(2025, 6, 17, 9, 15), 'coffee latte cafe', owner: 'maya'),
  _Seed('l1060', 'porto', _At(2025, 6, 18, 8, 45), 'coffee pour over barista', owner: 'maya'),
  _Seed('l1050', 'algarve', _At(2025, 6, 20, 13, 0), 'coast cliffs ocean beach', desc: 'Ponta da Piedade', fav: true),
  // Norway, Svalbard & Iceland, Jul 2025
  _Seed('l1015', 'norway', _At(2025, 7, 8, 14, 0), 'fjord mountain hiking water', desc: 'Preikestolen', fav: true),
  _Seed('v1015', 'norway', _At(2025, 7, 8, 14, 10), 'fjord mountain hiking water video'),
  _Seed('l1084', 'svalbard', _At(2025, 7, 12, 11, 0), 'walrus arctic wildlife animal'),
  _Seed('p1035', 'iceland', _At(2025, 7, 16, 18, 0), 'waterfall rainbow skogafoss', fav: true),
  // California road trip, May 2025
  _Seed('l1069', 'monterey', _At(2025, 5, 3, 13, 0), 'jellyfish aquarium ocean orange'),
  _Seed('v1069', 'monterey', _At(2025, 5, 3, 13, 5), 'jellyfish aquarium ocean video', fav: true),
  _Seed('l13', 'bigsur', _At(2025, 5, 4, 17, 0), 'beach coast ocean rocks'),
  _Seed('l16', 'bigsur', _At(2025, 5, 4, 18, 0), 'ocean coast sea rocks'),
  _Seed('l47', 'santacruz', _At(2025, 5, 2, 9, 0), 'pier beach ocean fog'),
  _Seed('l1043', 'yosemite', _At(2025, 5, 6, 10, 0), 'yosemite valley forest mountain river', fav: true),
  _Seed('l15', 'yosemite', _At(2025, 5, 6, 12, 30), 'waterfall stream rocks forest'),
  _Seed('l582', 'yosemite', _At(2025, 5, 7, 7, 0), 'coyote wildlife animal snow'),
  _Seed('l1016', 'sedona', _At(2025, 5, 10, 19, 0), 'canyon desert red rock sunset'),
  // Vancouver, Apr 2025
  _Seed('l17', 'vancouver', _At(2025, 4, 19, 10, 0), 'path park forest trail'),
  _Seed('l18', 'vancouver', _At(2025, 4, 19, 11, 0), 'grass meadow green'),
  // Madeira, Mar 2025
  _Seed('l27', 'madeira', _At(2025, 3, 8, 7, 0), 'clouds sunrise hiking mountain man'),
  _Seed('l28', 'madeira', _At(2025, 3, 9, 12, 0), 'valley river green forest'),
  _Seed('l54', 'madeira', _At(2025, 3, 10, 15, 0), 'hill mountain clouds sky'),
  // Alps, Feb 2025
  _Seed('l1036', 'zermatt', _At(2025, 2, 15, 11, 0), 'snow mountain winter alps'),
  _Seed('l29', 'zermatt', _At(2025, 2, 15, 11, 1), 'snow mountain winter alps peaks'),
  _Seed('l1040', 'fussen', _At(2025, 2, 18, 14, 0), 'castle neuschwanstein forest', desc: 'Neuschwanstein'),
  // Banff, Aug 2024
  _Seed('p1011', 'lakelouise', _At(2024, 8, 10, 9, 0), 'canoe lake woman mountains maya', owner: 'maya', fav: true),
  _Seed('l433', 'banff', _At(2024, 8, 11, 8, 0), 'bear grizzly wildlife animal'),
  _Seed('l659', 'banff', _At(2024, 8, 12, 18, 0), 'husky dog wolf animal'),
  _Seed('l718', 'banff', _At(2024, 8, 12, 19, 0), 'coyote wildlife animal forest'),
  _Seed('l1003', 'banff', _At(2024, 8, 13, 7, 30), 'deer fawn wildlife animal forest'),
  // Tuscany, Sep 2024
  _Seed('l65', 'tuscany', _At(2024, 9, 20, 19, 0), 'woman sunset field golden hour aria', desc: 'Aria in the last light', fav: true),
  _Seed('p64', 'tuscany', _At(2024, 9, 21, 17, 0), 'woman sunglasses flowers noor portrait', visibility: 'locked'),
  _Seed('l75', 'tuscany', _At(2024, 9, 21, 11, 0), 'grapes vineyard wine food'),
  _Seed('l76', 'tuscany', _At(2024, 9, 22, 10, 0), 'barn bicycle wood rustic'),
  _Seed('l103', 'tuscany', _At(2024, 9, 22, 16, 0), 'feet field shoes relax'),
  // Scotland, Jun 2024
  _Seed('l200', 'skye', _At(2024, 6, 5, 13, 0), 'highland cow animal scotland'),
  _Seed('l1012', 'skye', _At(2024, 6, 6, 15, 0), 'man reading grass sam'),
  // Kyoto & Tokyo, Apr 2024
  _Seed('l82', 'kyoto', _At(2024, 4, 3, 10, 12), 'cherry blossom sakura flowers pink spring', fav: true),
  _Seed('l106', 'kyoto', _At(2024, 4, 3, 11, 0), 'flowers red spring', owner: 'maya'),
  _Seed('p823', 'kyoto', _At(2024, 4, 4, 9, 30), 'woman camera photographer maya', owner: 'maya'),
  _Seed('l88', 'tokyo', _At(2024, 4, 7, 20, 0), 'city aerial traffic road night'),
  _Seed('l365', 'tokyo', _At(2024, 4, 8, 8, 0), 'tea cup cozy flowers', owner: 'maya'),
  // Earlier
  _Seed('l10', 'bled', _At(2023, 9, 14, 8, 0), 'lake forest morning nature'),
  _Seed('l11', 'bled', _At(2023, 9, 14, 9, 0), 'valley mist river nature'),
  _Seed('l58', 'maine', _At(2023, 8, 20, 18, 0), 'lighthouse coast black and white'),
  _Seed('l49', 'santorini', _At(2023, 7, 2, 19, 30), 'santorini white houses sea greece', desc: 'Oia, Santorini', fav: true),
  _Seed('l50', 'santorini', _At(2023, 7, 3, 9, 0), 'boat bird sea harbor'),
  _Seed('l100', 'barcelona', _At(2023, 6, 18, 16, 0), 'beach crowd summer haze'),
];

class DemoData {
  DemoData._(this.now);

  final DateTime now;
  final users = <String, DemoUser>{};
  final assets = <String, DemoAsset>{};
  final albums = <String, DemoAlbum>{};
  final people = <String, DemoPerson>{};
  final faces = <DemoFace>[];
  final memories = <DemoMemory>[];
  final stacks = <String, DemoStack>{};
  final activities = <DemoActivity>[];
  final tags = <String, DemoTag>{};
  final sharedLinks = <String, DemoSharedLink>{};

  /// sharedById -> sharedWithId -> inTimeline
  final partners = <(String, String), bool>{};

  /// Deletions to replay on every sync so the client drops removed entities.
  final tombstones = <({String type, Map<String, Object?> data})>[];

  late final DemoUser me;
  bool lockedSessionUnlocked = false;

  static const pinCode = '123456';

  DemoAsset? assetByKey(String key) => assets[demoId('asset/$key')];

  static DemoData seed(DemoManifest manifest, {DateTime? clock}) {
    final now = (clock ?? DateTime.now()).toUtc();
    final data = DemoData._(now);
    data._seedUsers();
    data._seedAssets(manifest);
    data._seedRecentBursts(manifest);
    data._seedStacks();
    data._seedAlbums();
    data._seedPeople();
    data._seedMemories();
    data._seedTagsAndLinks();
    return data;
  }

  void _seedUsers() {
    me = DemoUser('alex', 'Alex Rivera', 'alex@openframe.app', color: 'orange');
    for (final u in [
      me,
      DemoUser('maya', 'Maya Chen', 'maya@openframe.app', avatar: 'maya', color: 'pink'),
      DemoUser('leo', 'Leo Martins', 'leo@openframe.app', avatar: 'leo', color: 'green'),
      DemoUser('sam', 'Sam Okafor', 'sam@openframe.app', avatar: 'sam', color: 'orange'),
    ]) {
      users[u.id] = u;
    }
    // Maya shares her library with Alex.
    partners[(user('maya').id, me.id)] = true;
  }

  DemoUser user(String key) => users[demoId('user/$key')]!;

  DateTime _resolve(_When when) {
    return switch (when) {
      _At(:final year, :final month, :final day, :final hour, :final minute) => DateTime.utc(
        year,
        month,
        day,
        hour,
        minute,
      ),
      _YearsAgo(:final years, :final hour, :final minute) => DateTime.utc(
        now.year - years,
        now.month,
        now.day,
        hour,
        minute,
      ),
      _DaysAgo(:final days, :final hour, :final minute) => () {
        final d = now.subtract(Duration(days: days));
        return DateTime.utc(d.year, d.month, d.day, hour, minute);
      }(),
    };
  }

  void _seedAssets(DemoManifest manifest) {
    var counter = 1200;
    for (final seed in _seeds) {
      final info = manifest[seed.key];
      if (info == null) {
        continue;
      }
      counter += 37;
      final isVideo = seed.key.startsWith('v');
      final id = demoId('asset/${seed.key}');
      final takenAt = _resolve(seed.when);
      final hash = seed.key.codeUnits.fold<int>(0, (a, b) => a * 31 + b);
      final asset = DemoAsset(
        id: id,
        key: seed.key,
        ownerId: user(seed.owner).id,
        takenAt: takenAt,
        width: info.w,
        height: info.h,
        thumbhash: info.thumbhash,
        fileName: isVideo ? 'VID_$counter.mp4' : 'IMG_$counter.jpg',
        checksum: _fakeChecksum(seed.key),
        keywords: seed.keywords.split(' '),
        place: _places[seed.place],
        camera: _cameras[hash.abs() % _cameras.length],
        description: seed.desc,
        isVideo: isVideo,
        durationMs: isVideo ? 8000 : null,
        isFavorite: seed.fav,
        visibility: seed.visibility,
        deletedAt: seed.trashed ? now.subtract(const Duration(days: 2)) : null,
        fileSize: info.bytes > 0 ? info.bytes : info.w * info.h ~/ 3,
        rating: seed.fav ? 5 : null,
      );
      asset.updatedAt = takenAt.add(const Duration(minutes: 5));
      assets[id] = asset;
    }
  }

  /// A real library has several shots per day, so fill the last ~6 weeks with bursts that reuse
  /// the bundled photos (deterministic, so ids are stable across launches).
  void _seedRecentBursts(DemoManifest manifest) {
    final pool = _seeds
        .where((s) => !s.key.startsWith('v') && s.visibility == 'timeline' && !s.trashed && manifest[s.key] != null)
        .toList();
    var counter = 4100;
    var pick = 7;
    for (var day = 0; day < 42; day++) {
      if (day % 5 == 3 || day % 7 == 5) {
        continue;
      }
      final count = 2 + (day * 7 + 3) % 8;
      for (var i = 0; i < count; i++) {
        pick = (pick * 31 + 17) % pool.length;
        final seed = pool[pick];
        final info = manifest[seed.key]!;
        final d = now.subtract(Duration(days: day));
        final takenAt = DateTime.utc(d.year, d.month, d.day, 8 + (i * 5 + day) % 13, (i * 17 + day * 3) % 60);
        if (takenAt.isAfter(now)) {
          continue;
        }
        counter += 3;
        final id = demoId('asset/burst/$day/$i');
        assets[id] = DemoAsset(
          id: id,
          key: seed.key,
          ownerId: me.id,
          takenAt: takenAt,
          width: info.w,
          height: info.h,
          thumbhash: info.thumbhash,
          fileName: 'IMG_$counter.jpg',
          checksum: _fakeChecksum('burst/$day/$i'),
          keywords: seed.keywords.split(' '),
          place: _places['sf'],
          camera: _cameras[counter % _cameras.length],
          description: null,
          isVideo: false,
          durationMs: null,
          isFavorite: false,
          visibility: 'timeline',
          deletedAt: null,
          fileSize: info.bytes > 0 ? info.bytes : info.w * info.h ~/ 3,
          rating: null,
        )..updatedAt = takenAt.add(const Duration(minutes: 5));
      }
    }
  }

  void _seedStacks() {
    final primary = assetByKey('l1036');
    final other = assetByKey('l29');
    if (primary == null || other == null) {
      return;
    }
    final stack = DemoStack(demoId('stack/zermatt'), me.id, primary.id, [primary.id, other.id]);
    stacks[stack.id] = stack;
    primary.stackId = stack.id;
    other.stackId = stack.id;
  }

  List<String> _ids(List<String> keys) =>
      keys.map(assetByKey).whereType<DemoAsset>().map((a) => a.id).toList();

  void _seedAlbums() {
    void add(
      String key,
      String name,
      List<String> assetKeys, {
      String description = '',
      String owner = 'alex',
      Map<String, String> shared = const {},
      String? cover,
      DateTime? createdAt,
    }) {
      final ids = _ids(assetKeys);
      final album = DemoAlbum(
        id: demoId('album/$key'),
        name: name,
        ownerId: user(owner).id,
        assetIds: ids,
        description: description,
        thumbnailAssetId: cover != null ? assetByKey(cover)?.id : (ids.isEmpty ? null : ids.first),
        sharedWith: {for (final e in shared.entries) user(e.key).id: e.value},
        createdAt: createdAt,
      );
      albums[album.id] = album;
    }

    add(
      'lisbon',
      'Lisbon & Porto',
      ['l22', 'p91', 'p1047', 'l183', 'l42', 'l395', 'l211', 'l431', 'l1060', 'l1050'],
      description: 'Pastéis de nata, trams and too many stairs.',
      shared: {'leo': 'editor', 'maya': 'viewer'},
      cover: 'l1050',
      createdAt: DateTime.utc(2025, 6, 21),
    );
    add(
      'kyoto',
      'Kyoto in Bloom',
      ['l82', 'l106', 'p823', 'l88', 'l365'],
      description: 'Sakura season 2024',
      cover: 'l82',
      createdAt: DateTime.utc(2024, 4, 10),
    );
    add(
      'wildlife',
      'Wildlife',
      ['l219', 'l1074', 'l1024', 'l433', 'l659', 'l718', 'l1003', 'l582', 'l1084', 'l200'],
      cover: 'l219',
      createdAt: DateTime.utc(2023, 11, 2),
    );
    add(
      'california',
      'Road trip: California',
      ['l47', 'l1069', 'v1069', 'l13', 'l16', 'l1043', 'l15', 'l582', 'l1016'],
      description: 'Highway 1 → Yosemite → Sedona',
      cover: 'l1043',
      createdAt: DateTime.utc(2025, 5, 12),
    );
    add(
      'kitchen',
      'Coffee & Kitchen',
      ['l42', 'l225', 'l312', 'l429', 'l431', 'l1060', 'l1080'],
      owner: 'maya',
      shared: {'alex': 'editor'},
      cover: 'l1060',
      createdAt: DateTime.utc(2025, 7, 1),
    );
    add(
      'biscuit',
      'Biscuit',
      ['l237', 'l1025', 'l1062', 'l837', 'l169'],
      description: 'Professional napper.',
      cover: 'l237',
      createdAt: DateTime.utc(2025, 2, 1),
    );
    add(
      'mountains',
      'Mountains',
      ['l1036', 'l29', 'l1040', 'l1015', 'v1015', 'l1016', 'l1043', 'l54', 'p1035', 'l27'],
      cover: 'l1015',
      createdAt: DateTime.utc(2025, 8, 1),
    );
    add(
      'nyc',
      'New York Weekend',
      ['l43', 'l274', 'v274', 'l453', 'p57'],
      shared: {'sam': 'editor'},
      cover: 'l43',
      createdAt: DateTime.utc(2025, 12, 15),
    );

    final lisbon = albums[demoId('album/lisbon')]!;
    activities.addAll([
      DemoActivity(
        id: demoId('activity/1'),
        albumId: lisbon.id,
        userId: user('leo').id,
        comment: 'That bar was unreal 🍷',
        assetId: assetByKey('l395')?.id,
        createdAt: DateTime.utc(2025, 6, 22, 10),
      ),
      DemoActivity(
        id: demoId('activity/2'),
        albumId: lisbon.id,
        userId: user('maya').id,
        comment: 'Take me back to Porto please',
        createdAt: DateTime.utc(2025, 6, 22, 12),
      ),
      DemoActivity(
        id: demoId('activity/3'),
        albumId: lisbon.id,
        userId: user('maya').id,
        assetId: assetByKey('l1050')?.id,
        createdAt: DateTime.utc(2025, 6, 22, 12, 5),
      ),
    ]);
  }

  void _seedPeople() {
    final defs = <String, (String, DateTime?)>{
      'maya': ('Maya Chen', DateTime.utc(1994, 3, 12)),
      'leo': ('Leo Martins', DateTime.utc(1991, 11, 2)),
      'aria': ('Aria Patel', null),
      'sam': ('Sam Okafor', DateTime.utc(1989, 7, 30)),
      'noor': ('Noor Haddad', null),
      'biscuit': ('Biscuit', DateTime.utc(2022, 5, 1)),
    };
    for (final e in defs.entries) {
      final p = DemoPerson(e.key, e.value.$1, birthDate: e.value.$2, isFavorite: e.key == 'maya' || e.key == 'biscuit');
      people[p.id] = p;
    }

    // person -> [(assetKey, x1, y1, x2, y2) as fractions]
    const placements = <String, List<(String, double, double, double, double)>>{
      'maya': [('p1027', 0.30, 0.18, 0.95, 0.62), ('l129', 0.62, 0.40, 0.72, 0.58)],
      'leo': [
        ('p91', 0.25, 0.05, 0.80, 0.42),
        ('p349', 0.62, 0.48, 0.80, 0.62),
        ('l22', 0.55, 0.38, 0.62, 0.48),
        ('l395', 0.30, 0.35, 0.40, 0.52),
        ('l129', 0.78, 0.40, 0.88, 0.58),
      ],
      'aria': [('l65', 0.30, 0.10, 0.70, 0.70)],
      'sam': [('l1012', 0.50, 0.10, 0.85, 0.62), ('l453', 0.45, 0.20, 0.60, 0.45), ('l395', 0.60, 0.30, 0.70, 0.50)],
      'noor': [('p64', 0.40, 0.10, 0.75, 0.62)],
      'biscuit': [('l237', 0.30, 0.05, 0.70, 0.75), ('l1025', 0.35, 0.10, 0.65, 0.60), ('l1062', 0.30, 0.20, 0.70, 0.80)],
    };
    for (final e in placements.entries) {
      final person = people[demoId('person/${e.key}')]!;
      for (final (key, x1, y1, x2, y2) in e.value) {
        final asset = assetByKey(key);
        if (asset == null) {
          continue;
        }
        person.faceAssetId ??= asset.id;
        faces.add(
          DemoFace(
            person.id,
            asset.id,
            (x1 * asset.width).round(),
            (y1 * asset.height).round(),
            (x2 * asset.width).round(),
            (y2 * asset.height).round(),
            asset.width,
            asset.height,
          ),
        );
      }
    }
  }

  void _seedMemories() {
    final today = DateTime.utc(now.year, now.month, now.day);
    final byYear = <int, List<String>>{};
    for (final asset in assets.values) {
      if (asset.ownerId != me.id || asset.deletedAt != null || asset.visibility != 'timeline') {
        continue;
      }
      if (asset.takenAt.month == now.month && asset.takenAt.day == now.day && asset.takenAt.year < now.year) {
        (byYear[asset.takenAt.year] ??= []).add(asset.id);
      }
    }
    final years = byYear.keys.toList()..sort((a, b) => b.compareTo(a));
    for (final year in years) {
      memories.add(
        DemoMemory(
          id: demoId('memory/$year-${now.month}-${now.day}'),
          memoryAt: DateTime.utc(year, now.month, now.day),
          year: year,
          assetIds: byYear[year]!,
          showAt: today.subtract(const Duration(days: 1)),
        ),
      );
    }
  }

  void _seedTagsAndLinks() {
    void tag(String value, List<String> keys) {
      final parts = value.split('/');
      for (var i = 1; i <= parts.length; i++) {
        final v = parts.take(i).join('/');
        tags.putIfAbsent(v, () => DemoTag(v));
      }
      tags[value]!.assetIds.addAll(_ids(keys));
    }

    tag('Travel/Europe', ['l22', 'l164', 'l49', 'l1040', 'l1015']);
    tag('Travel/Asia', ['l82', 'l88']);
    tag('Travel/Americas', ['l43', 'l274', 'l1043', 'l1067']);
    tag('Food', ['l1080', 'l312', 'l429', 'l42', 'l75']);
    tag('Pets/Biscuit', ['l237', 'l1025', 'l1062']);
    tag('Wildlife', ['l219', 'l1074', 'l433', 'l1084']);

    final lisbon = demoId('album/lisbon');
    sharedLinks[demoId('link/lisbon')] = DemoSharedLink(
      id: demoId('link/lisbon'),
      key: 'lisbon-and-porto-2025',
      createdAt: DateTime.utc(2025, 6, 23),
      albumId: lisbon,
      description: 'For the family',
    );
    sharedLinks[demoId('link/fjord')] = DemoSharedLink(
      id: demoId('link/fjord'),
      key: 'preikestolen',
      createdAt: DateTime.utc(2025, 7, 20),
      assetIds: _ids(['l1015', 'v1015']),
      expiresAt: now.add(const Duration(days: 30)),
      allowDownload: false,
    );
  }

  // ---- queries ----

  Iterable<DemoAsset> assetsOwnedBy(String userId) => assets.values.where((a) => a.ownerId == userId);

  List<DemoAsset> albumAssets(DemoAlbum album) =>
      album.assetIds.map((id) => assets[id]).whereType<DemoAsset>().where((a) => a.deletedAt == null).toList();

  List<DemoPerson> peopleInAsset(String assetId) => faces
      .where((f) => f.assetId == assetId)
      .map((f) => people[f.personId])
      .whereType<DemoPerson>()
      .toSet()
      .toList();

  List<DemoTag> tagsOf(String assetId) => tags.values.where((t) => t.assetIds.contains(assetId)).toList();

  bool canSee(DemoAsset asset) {
    if (asset.ownerId == me.id) {
      return true;
    }
    if (partners.containsKey((asset.ownerId, me.id))) {
      return true;
    }
    return albums.values.any(
      (a) => (a.ownerId == me.id || a.sharedWith.containsKey(me.id)) && a.assetIds.contains(asset.id),
    );
  }

  void tombstone(String type, Map<String, Object?> data) => tombstones.add((type: type, data: data));
}
