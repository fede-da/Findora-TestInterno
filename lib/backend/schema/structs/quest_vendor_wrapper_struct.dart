// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestVendorWrapperStruct extends FFFirebaseStruct {
  QuestVendorWrapperStruct({
    RisposteQuestionarioVendorStruct? risposte,
    DocumentReference? userReference,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _risposte = risposte,
        _userReference = userReference,
        super(firestoreUtilData);

  // "risposte" field.
  RisposteQuestionarioVendorStruct? _risposte;
  RisposteQuestionarioVendorStruct get risposte =>
      _risposte ?? RisposteQuestionarioVendorStruct();
  set risposte(RisposteQuestionarioVendorStruct? val) => _risposte = val;

  void updateRisposte(Function(RisposteQuestionarioVendorStruct) updateFn) {
    updateFn(_risposte ??= RisposteQuestionarioVendorStruct());
  }

  bool hasRisposte() => _risposte != null;

  // "userReference" field.
  DocumentReference? _userReference;
  DocumentReference? get userReference => _userReference;
  set userReference(DocumentReference? val) => _userReference = val;

  bool hasUserReference() => _userReference != null;

  static QuestVendorWrapperStruct fromMap(Map<String, dynamic> data) =>
      QuestVendorWrapperStruct(
        risposte:
            RisposteQuestionarioVendorStruct.maybeFromMap(data['risposte']),
        userReference: data['userReference'] as DocumentReference?,
      );

  static QuestVendorWrapperStruct? maybeFromMap(dynamic data) => data is Map
      ? QuestVendorWrapperStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'risposte': _risposte?.toMap(),
        'userReference': _userReference,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'risposte': serializeParam(
          _risposte,
          ParamType.DataStruct,
        ),
        'userReference': serializeParam(
          _userReference,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static QuestVendorWrapperStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      QuestVendorWrapperStruct(
        risposte: deserializeStructParam(
          data['risposte'],
          ParamType.DataStruct,
          false,
          structBuilder: RisposteQuestionarioVendorStruct.fromSerializableMap,
        ),
        userReference: deserializeParam(
          data['userReference'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['user_credential'],
        ),
      );

  @override
  String toString() => 'QuestVendorWrapperStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuestVendorWrapperStruct &&
        risposte == other.risposte &&
        userReference == other.userReference;
  }

  @override
  int get hashCode => const ListEquality().hash([risposte, userReference]);
}

QuestVendorWrapperStruct createQuestVendorWrapperStruct({
  RisposteQuestionarioVendorStruct? risposte,
  DocumentReference? userReference,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestVendorWrapperStruct(
      risposte: risposte ??
          (clearUnsetFields ? RisposteQuestionarioVendorStruct() : null),
      userReference: userReference,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuestVendorWrapperStruct? updateQuestVendorWrapperStruct(
  QuestVendorWrapperStruct? questVendorWrapper, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    questVendorWrapper
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuestVendorWrapperStructData(
  Map<String, dynamic> firestoreData,
  QuestVendorWrapperStruct? questVendorWrapper,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (questVendorWrapper == null) {
    return;
  }
  if (questVendorWrapper.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && questVendorWrapper.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questVendorWrapperData =
      getQuestVendorWrapperFirestoreData(questVendorWrapper, forFieldValue);
  final nestedData =
      questVendorWrapperData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      questVendorWrapper.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuestVendorWrapperFirestoreData(
  QuestVendorWrapperStruct? questVendorWrapper, [
  bool forFieldValue = false,
]) {
  if (questVendorWrapper == null) {
    return {};
  }
  final firestoreData = mapToFirestore(questVendorWrapper.toMap());

  // Handle nested data for "risposte" field.
  addRisposteQuestionarioVendorStructData(
    firestoreData,
    questVendorWrapper.hasRisposte() ? questVendorWrapper.risposte : null,
    'risposte',
    forFieldValue,
  );

  // Add any Firestore field values
  questVendorWrapper.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestVendorWrapperListFirestoreData(
  List<QuestVendorWrapperStruct>? questVendorWrappers,
) =>
    questVendorWrappers
        ?.map((e) => getQuestVendorWrapperFirestoreData(e, true))
        .toList() ??
    [];
