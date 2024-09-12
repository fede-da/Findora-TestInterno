import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdvertisementRecord extends FirestoreRecord {
  AdvertisementRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "subcategory" field.
  String? _subcategory;
  String get subcategory => _subcategory ?? '';
  bool hasSubcategory() => _subcategory != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "favorite" field.
  bool? _favorite;
  bool get favorite => _favorite ?? false;
  bool hasFavorite() => _favorite != null;

  // "review" field.
  List<ReviewCardStruct>? _review;
  List<ReviewCardStruct> get review => _review ?? const [];
  bool hasReview() => _review != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "creatorUID" field.
  String? _creatorUID;
  String get creatorUID => _creatorUID ?? '';
  bool hasCreatorUID() => _creatorUID != null;

  // "profilePictureVendor" field.
  String? _profilePictureVendor;
  String get profilePictureVendor => _profilePictureVendor ?? '';
  bool hasProfilePictureVendor() => _profilePictureVendor != null;

  // "creatorUserReference" field.
  DocumentReference? _creatorUserReference;
  DocumentReference? get creatorUserReference => _creatorUserReference;
  bool hasCreatorUserReference() => _creatorUserReference != null;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  bool hasUuid() => _uuid != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _id = snapshotData['id'] as String?;
    _image = snapshotData['image'] as String?;
    _location = snapshotData['location'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _category = snapshotData['category'] as String?;
    _subcategory = snapshotData['subcategory'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _favorite = snapshotData['favorite'] as bool?;
    _review = getStructList(
      snapshotData['review'],
      ReviewCardStruct.fromMap,
    );
    _createdBy = snapshotData['createdBy'] as String?;
    _creatorUID = snapshotData['creatorUID'] as String?;
    _profilePictureVendor = snapshotData['profilePictureVendor'] as String?;
    _creatorUserReference =
        snapshotData['creatorUserReference'] as DocumentReference?;
    _uuid = snapshotData['uuid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Advertisement');

  static Stream<AdvertisementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdvertisementRecord.fromSnapshot(s));

  static Future<AdvertisementRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdvertisementRecord.fromSnapshot(s));

  static AdvertisementRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdvertisementRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdvertisementRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdvertisementRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdvertisementRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdvertisementRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdvertisementRecordData({
  String? name,
  String? description,
  String? id,
  String? image,
  String? location,
  double? price,
  DateTime? createdAt,
  String? category,
  String? subcategory,
  double? rating,
  bool? favorite,
  String? createdBy,
  String? creatorUID,
  String? profilePictureVendor,
  DocumentReference? creatorUserReference,
  String? uuid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'id': id,
      'image': image,
      'location': location,
      'price': price,
      'createdAt': createdAt,
      'category': category,
      'subcategory': subcategory,
      'rating': rating,
      'favorite': favorite,
      'createdBy': createdBy,
      'creatorUID': creatorUID,
      'profilePictureVendor': profilePictureVendor,
      'creatorUserReference': creatorUserReference,
      'uuid': uuid,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdvertisementRecordDocumentEquality
    implements Equality<AdvertisementRecord> {
  const AdvertisementRecordDocumentEquality();

  @override
  bool equals(AdvertisementRecord? e1, AdvertisementRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.id == e2?.id &&
        e1?.image == e2?.image &&
        e1?.location == e2?.location &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.category == e2?.category &&
        e1?.subcategory == e2?.subcategory &&
        e1?.rating == e2?.rating &&
        e1?.favorite == e2?.favorite &&
        listEquality.equals(e1?.review, e2?.review) &&
        e1?.createdBy == e2?.createdBy &&
        e1?.creatorUID == e2?.creatorUID &&
        e1?.profilePictureVendor == e2?.profilePictureVendor &&
        e1?.creatorUserReference == e2?.creatorUserReference &&
        e1?.uuid == e2?.uuid;
  }

  @override
  int hash(AdvertisementRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.id,
        e?.image,
        e?.location,
        e?.price,
        e?.createdAt,
        e?.category,
        e?.subcategory,
        e?.rating,
        e?.favorite,
        e?.review,
        e?.createdBy,
        e?.creatorUID,
        e?.profilePictureVendor,
        e?.creatorUserReference,
        e?.uuid
      ]);

  @override
  bool isValidKey(Object? o) => o is AdvertisementRecord;
}
