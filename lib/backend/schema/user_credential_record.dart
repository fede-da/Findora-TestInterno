import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCredentialRecord extends FirestoreRecord {
  UserCredentialRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "has_answered_questionnaire" field.
  bool? _hasAnsweredQuestionnaire;
  bool get hasAnsweredQuestionnaire => _hasAnsweredQuestionnaire ?? false;
  bool hasHasAnsweredQuestionnaire() => _hasAnsweredQuestionnaire != null;

  // "risposte_questionario_data_custom" field.
  RisposteQuestionarioStruct? _risposteQuestionarioDataCustom;
  RisposteQuestionarioStruct get risposteQuestionarioDataCustom =>
      _risposteQuestionarioDataCustom ?? RisposteQuestionarioStruct();
  bool hasRisposteQuestionarioDataCustom() =>
      _risposteQuestionarioDataCustom != null;

  // "reviews" field.
  List<ReviewCardStruct>? _reviews;
  List<ReviewCardStruct> get reviews => _reviews ?? const [];
  bool hasReviews() => _reviews != null;

  // "isVendor" field.
  bool? _isVendor;
  bool get isVendor => _isVendor ?? false;
  bool hasIsVendor() => _isVendor != null;

  // "vendorId" field.
  String? _vendorId;
  String get vendorId => _vendorId ?? '';
  bool hasVendorId() => _vendorId != null;

  // "hasAnsweredQuestionnaireVendor" field.
  bool? _hasAnsweredQuestionnaireVendor;
  bool get hasAnsweredQuestionnaireVendor =>
      _hasAnsweredQuestionnaireVendor ?? false;
  bool hasHasAnsweredQuestionnaireVendor() =>
      _hasAnsweredQuestionnaireVendor != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _description = snapshotData['description'] as String?;
    _hasAnsweredQuestionnaire =
        snapshotData['has_answered_questionnaire'] as bool?;
    _risposteQuestionarioDataCustom = RisposteQuestionarioStruct.maybeFromMap(
        snapshotData['risposte_questionario_data_custom']);
    _reviews = getStructList(
      snapshotData['reviews'],
      ReviewCardStruct.fromMap,
    );
    _isVendor = snapshotData['isVendor'] as bool?;
    _vendorId = snapshotData['vendorId'] as String?;
    _hasAnsweredQuestionnaireVendor =
        snapshotData['hasAnsweredQuestionnaireVendor'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_credential');

  static Stream<UserCredentialRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCredentialRecord.fromSnapshot(s));

  static Future<UserCredentialRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserCredentialRecord.fromSnapshot(s));

  static UserCredentialRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCredentialRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCredentialRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCredentialRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCredentialRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCredentialRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCredentialRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? displayName,
  String? phoneNumber,
  String? description,
  bool? hasAnsweredQuestionnaire,
  RisposteQuestionarioStruct? risposteQuestionarioDataCustom,
  bool? isVendor,
  String? vendorId,
  bool? hasAnsweredQuestionnaireVendor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'display_name': displayName,
      'phone_number': phoneNumber,
      'description': description,
      'has_answered_questionnaire': hasAnsweredQuestionnaire,
      'risposte_questionario_data_custom': RisposteQuestionarioStruct().toMap(),
      'isVendor': isVendor,
      'vendorId': vendorId,
      'hasAnsweredQuestionnaireVendor': hasAnsweredQuestionnaireVendor,
    }.withoutNulls,
  );

  // Handle nested data for "risposte_questionario_data_custom" field.
  addRisposteQuestionarioStructData(firestoreData,
      risposteQuestionarioDataCustom, 'risposte_questionario_data_custom');

  return firestoreData;
}

class UserCredentialRecordDocumentEquality
    implements Equality<UserCredentialRecord> {
  const UserCredentialRecordDocumentEquality();

  @override
  bool equals(UserCredentialRecord? e1, UserCredentialRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.displayName == e2?.displayName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.description == e2?.description &&
        e1?.hasAnsweredQuestionnaire == e2?.hasAnsweredQuestionnaire &&
        e1?.risposteQuestionarioDataCustom ==
            e2?.risposteQuestionarioDataCustom &&
        listEquality.equals(e1?.reviews, e2?.reviews) &&
        e1?.isVendor == e2?.isVendor &&
        e1?.vendorId == e2?.vendorId &&
        e1?.hasAnsweredQuestionnaireVendor ==
            e2?.hasAnsweredQuestionnaireVendor;
  }

  @override
  int hash(UserCredentialRecord? e) => const ListEquality().hash([
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.displayName,
        e?.phoneNumber,
        e?.description,
        e?.hasAnsweredQuestionnaire,
        e?.risposteQuestionarioDataCustom,
        e?.reviews,
        e?.isVendor,
        e?.vendorId,
        e?.hasAnsweredQuestionnaireVendor
      ]);

  @override
  bool isValidKey(Object? o) => o is UserCredentialRecord;
}
