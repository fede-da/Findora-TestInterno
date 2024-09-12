import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VendorQuestionnaireRecord extends FirestoreRecord {
  VendorQuestionnaireRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "risposte" field.
  RisposteQuestionarioVendorStruct? _risposte;
  RisposteQuestionarioVendorStruct get risposte =>
      _risposte ?? RisposteQuestionarioVendorStruct();
  bool hasRisposte() => _risposte != null;

  // "userOwnerOfQuestionnaireReference" field.
  DocumentReference? _userOwnerOfQuestionnaireReference;
  DocumentReference? get userOwnerOfQuestionnaireReference =>
      _userOwnerOfQuestionnaireReference;
  bool hasUserOwnerOfQuestionnaireReference() =>
      _userOwnerOfQuestionnaireReference != null;

  // "completionTime" field.
  DateTime? _completionTime;
  DateTime? get completionTime => _completionTime;
  bool hasCompletionTime() => _completionTime != null;

  // "displayedName" field.
  String? _displayedName;
  String get displayedName => _displayedName ?? '';
  bool hasDisplayedName() => _displayedName != null;

  void _initializeFields() {
    _risposte =
        RisposteQuestionarioVendorStruct.maybeFromMap(snapshotData['risposte']);
    _userOwnerOfQuestionnaireReference =
        snapshotData['userOwnerOfQuestionnaireReference'] as DocumentReference?;
    _completionTime = snapshotData['completionTime'] as DateTime?;
    _displayedName = snapshotData['displayedName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vendorQuestionnaire');

  static Stream<VendorQuestionnaireRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VendorQuestionnaireRecord.fromSnapshot(s));

  static Future<VendorQuestionnaireRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => VendorQuestionnaireRecord.fromSnapshot(s));

  static VendorQuestionnaireRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VendorQuestionnaireRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VendorQuestionnaireRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VendorQuestionnaireRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VendorQuestionnaireRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VendorQuestionnaireRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVendorQuestionnaireRecordData({
  RisposteQuestionarioVendorStruct? risposte,
  DocumentReference? userOwnerOfQuestionnaireReference,
  DateTime? completionTime,
  String? displayedName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'risposte': RisposteQuestionarioVendorStruct().toMap(),
      'userOwnerOfQuestionnaireReference': userOwnerOfQuestionnaireReference,
      'completionTime': completionTime,
      'displayedName': displayedName,
    }.withoutNulls,
  );

  // Handle nested data for "risposte" field.
  addRisposteQuestionarioVendorStructData(firestoreData, risposte, 'risposte');

  return firestoreData;
}

class VendorQuestionnaireRecordDocumentEquality
    implements Equality<VendorQuestionnaireRecord> {
  const VendorQuestionnaireRecordDocumentEquality();

  @override
  bool equals(VendorQuestionnaireRecord? e1, VendorQuestionnaireRecord? e2) {
    return e1?.risposte == e2?.risposte &&
        e1?.userOwnerOfQuestionnaireReference ==
            e2?.userOwnerOfQuestionnaireReference &&
        e1?.completionTime == e2?.completionTime &&
        e1?.displayedName == e2?.displayedName;
  }

  @override
  int hash(VendorQuestionnaireRecord? e) => const ListEquality().hash([
        e?.risposte,
        e?.userOwnerOfQuestionnaireReference,
        e?.completionTime,
        e?.displayedName
      ]);

  @override
  bool isValidKey(Object? o) => o is VendorQuestionnaireRecord;
}
