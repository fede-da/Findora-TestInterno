import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryItemRecord extends FirestoreRecord {
  CategoryItemRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('category_item')
          : FirebaseFirestore.instance.collectionGroup('category_item');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('category_item').doc(id);

  static Stream<CategoryItemRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoryItemRecord.fromSnapshot(s));

  static Future<CategoryItemRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoryItemRecord.fromSnapshot(s));

  static CategoryItemRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoryItemRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoryItemRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoryItemRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoryItemRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoryItemRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoryItemRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoryItemRecordDocumentEquality
    implements Equality<CategoryItemRecord> {
  const CategoryItemRecordDocumentEquality();

  @override
  bool equals(CategoryItemRecord? e1, CategoryItemRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(CategoryItemRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is CategoryItemRecord;
}
