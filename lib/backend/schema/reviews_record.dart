import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsRecord extends FirestoreRecord {
  ReviewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "reviewsList" field.
  List<ReviewCardStruct>? _reviewsList;
  List<ReviewCardStruct> get reviewsList => _reviewsList ?? const [];
  bool hasReviewsList() => _reviewsList != null;

  // "ownerReference" field.
  DocumentReference? _ownerReference;
  DocumentReference? get ownerReference => _ownerReference;
  bool hasOwnerReference() => _ownerReference != null;

  // "userLeavingReviewUserReference" field.
  DocumentReference? _userLeavingReviewUserReference;
  DocumentReference? get userLeavingReviewUserReference =>
      _userLeavingReviewUserReference;
  bool hasUserLeavingReviewUserReference() =>
      _userLeavingReviewUserReference != null;

  // "contentUuid" field.
  String? _contentUuid;
  String get contentUuid => _contentUuid ?? '';
  bool hasContentUuid() => _contentUuid != null;

  void _initializeFields() {
    _reviewsList = getStructList(
      snapshotData['reviewsList'],
      ReviewCardStruct.fromMap,
    );
    _ownerReference = snapshotData['ownerReference'] as DocumentReference?;
    _userLeavingReviewUserReference =
        snapshotData['userLeavingReviewUserReference'] as DocumentReference?;
    _contentUuid = snapshotData['contentUuid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviews');

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewsRecord.fromSnapshot(s));

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewsRecord.fromSnapshot(s));

  static ReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsRecordData({
  DocumentReference? ownerReference,
  DocumentReference? userLeavingReviewUserReference,
  String? contentUuid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ownerReference': ownerReference,
      'userLeavingReviewUserReference': userLeavingReviewUserReference,
      'contentUuid': contentUuid,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsRecordDocumentEquality implements Equality<ReviewsRecord> {
  const ReviewsRecordDocumentEquality();

  @override
  bool equals(ReviewsRecord? e1, ReviewsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.reviewsList, e2?.reviewsList) &&
        e1?.ownerReference == e2?.ownerReference &&
        e1?.userLeavingReviewUserReference ==
            e2?.userLeavingReviewUserReference &&
        e1?.contentUuid == e2?.contentUuid;
  }

  @override
  int hash(ReviewsRecord? e) => const ListEquality().hash([
        e?.reviewsList,
        e?.ownerReference,
        e?.userLeavingReviewUserReference,
        e?.contentUuid
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewsRecord;
}
