// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewCardStruct extends FFFirebaseStruct {
  ReviewCardStruct({
    String? nomeAutore,
    String? contenuto,
    DateTime? dataCreazione,
    String? fotoAutore,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nomeAutore = nomeAutore,
        _contenuto = contenuto,
        _dataCreazione = dataCreazione,
        _fotoAutore = fotoAutore,
        super(firestoreUtilData);

  // "nomeAutore" field.
  String? _nomeAutore;
  String get nomeAutore => _nomeAutore ?? '';
  set nomeAutore(String? val) => _nomeAutore = val;

  bool hasNomeAutore() => _nomeAutore != null;

  // "contenuto" field.
  String? _contenuto;
  String get contenuto => _contenuto ?? '';
  set contenuto(String? val) => _contenuto = val;

  bool hasContenuto() => _contenuto != null;

  // "dataCreazione" field.
  DateTime? _dataCreazione;
  DateTime? get dataCreazione => _dataCreazione;
  set dataCreazione(DateTime? val) => _dataCreazione = val;

  bool hasDataCreazione() => _dataCreazione != null;

  // "fotoAutore" field.
  String? _fotoAutore;
  String get fotoAutore => _fotoAutore ?? '';
  set fotoAutore(String? val) => _fotoAutore = val;

  bool hasFotoAutore() => _fotoAutore != null;

  static ReviewCardStruct fromMap(Map<String, dynamic> data) =>
      ReviewCardStruct(
        nomeAutore: data['nomeAutore'] as String?,
        contenuto: data['contenuto'] as String?,
        dataCreazione: data['dataCreazione'] as DateTime?,
        fotoAutore: data['fotoAutore'] as String?,
      );

  static ReviewCardStruct? maybeFromMap(dynamic data) => data is Map
      ? ReviewCardStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nomeAutore': _nomeAutore,
        'contenuto': _contenuto,
        'dataCreazione': _dataCreazione,
        'fotoAutore': _fotoAutore,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nomeAutore': serializeParam(
          _nomeAutore,
          ParamType.String,
        ),
        'contenuto': serializeParam(
          _contenuto,
          ParamType.String,
        ),
        'dataCreazione': serializeParam(
          _dataCreazione,
          ParamType.DateTime,
        ),
        'fotoAutore': serializeParam(
          _fotoAutore,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReviewCardStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReviewCardStruct(
        nomeAutore: deserializeParam(
          data['nomeAutore'],
          ParamType.String,
          false,
        ),
        contenuto: deserializeParam(
          data['contenuto'],
          ParamType.String,
          false,
        ),
        dataCreazione: deserializeParam(
          data['dataCreazione'],
          ParamType.DateTime,
          false,
        ),
        fotoAutore: deserializeParam(
          data['fotoAutore'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReviewCardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReviewCardStruct &&
        nomeAutore == other.nomeAutore &&
        contenuto == other.contenuto &&
        dataCreazione == other.dataCreazione &&
        fotoAutore == other.fotoAutore;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([nomeAutore, contenuto, dataCreazione, fotoAutore]);
}

ReviewCardStruct createReviewCardStruct({
  String? nomeAutore,
  String? contenuto,
  DateTime? dataCreazione,
  String? fotoAutore,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReviewCardStruct(
      nomeAutore: nomeAutore,
      contenuto: contenuto,
      dataCreazione: dataCreazione,
      fotoAutore: fotoAutore,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReviewCardStruct? updateReviewCardStruct(
  ReviewCardStruct? reviewCard, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    reviewCard
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReviewCardStructData(
  Map<String, dynamic> firestoreData,
  ReviewCardStruct? reviewCard,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (reviewCard == null) {
    return;
  }
  if (reviewCard.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && reviewCard.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final reviewCardData = getReviewCardFirestoreData(reviewCard, forFieldValue);
  final nestedData = reviewCardData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = reviewCard.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReviewCardFirestoreData(
  ReviewCardStruct? reviewCard, [
  bool forFieldValue = false,
]) {
  if (reviewCard == null) {
    return {};
  }
  final firestoreData = mapToFirestore(reviewCard.toMap());

  // Add any Firestore field values
  reviewCard.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReviewCardListFirestoreData(
  List<ReviewCardStruct>? reviewCards,
) =>
    reviewCards?.map((e) => getReviewCardFirestoreData(e, true)).toList() ?? [];
