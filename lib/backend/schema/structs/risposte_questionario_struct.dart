// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RisposteQuestionarioStruct extends FFFirebaseStruct {
  RisposteQuestionarioStruct({
    String? resp1,
    String? resp2,
    String? resp3,
    String? resp4,
    String? resp5,
    String? resp6,
    String? resp7,
    String? resp8,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _resp1 = resp1,
        _resp2 = resp2,
        _resp3 = resp3,
        _resp4 = resp4,
        _resp5 = resp5,
        _resp6 = resp6,
        _resp7 = resp7,
        _resp8 = resp8,
        super(firestoreUtilData);

  // "resp1" field.
  String? _resp1;
  String get resp1 => _resp1 ?? '';
  set resp1(String? val) => _resp1 = val;

  bool hasResp1() => _resp1 != null;

  // "resp2" field.
  String? _resp2;
  String get resp2 => _resp2 ?? '';
  set resp2(String? val) => _resp2 = val;

  bool hasResp2() => _resp2 != null;

  // "resp3" field.
  String? _resp3;
  String get resp3 => _resp3 ?? '';
  set resp3(String? val) => _resp3 = val;

  bool hasResp3() => _resp3 != null;

  // "resp4" field.
  String? _resp4;
  String get resp4 => _resp4 ?? '';
  set resp4(String? val) => _resp4 = val;

  bool hasResp4() => _resp4 != null;

  // "resp5" field.
  String? _resp5;
  String get resp5 => _resp5 ?? '';
  set resp5(String? val) => _resp5 = val;

  bool hasResp5() => _resp5 != null;

  // "resp6" field.
  String? _resp6;
  String get resp6 => _resp6 ?? '';
  set resp6(String? val) => _resp6 = val;

  bool hasResp6() => _resp6 != null;

  // "resp7" field.
  String? _resp7;
  String get resp7 => _resp7 ?? '';
  set resp7(String? val) => _resp7 = val;

  bool hasResp7() => _resp7 != null;

  // "resp8" field.
  String? _resp8;
  String get resp8 => _resp8 ?? '';
  set resp8(String? val) => _resp8 = val;

  bool hasResp8() => _resp8 != null;

  static RisposteQuestionarioStruct fromMap(Map<String, dynamic> data) =>
      RisposteQuestionarioStruct(
        resp1: data['resp1'] as String?,
        resp2: data['resp2'] as String?,
        resp3: data['resp3'] as String?,
        resp4: data['resp4'] as String?,
        resp5: data['resp5'] as String?,
        resp6: data['resp6'] as String?,
        resp7: data['resp7'] as String?,
        resp8: data['resp8'] as String?,
      );

  static RisposteQuestionarioStruct? maybeFromMap(dynamic data) => data is Map
      ? RisposteQuestionarioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'resp1': _resp1,
        'resp2': _resp2,
        'resp3': _resp3,
        'resp4': _resp4,
        'resp5': _resp5,
        'resp6': _resp6,
        'resp7': _resp7,
        'resp8': _resp8,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'resp1': serializeParam(
          _resp1,
          ParamType.String,
        ),
        'resp2': serializeParam(
          _resp2,
          ParamType.String,
        ),
        'resp3': serializeParam(
          _resp3,
          ParamType.String,
        ),
        'resp4': serializeParam(
          _resp4,
          ParamType.String,
        ),
        'resp5': serializeParam(
          _resp5,
          ParamType.String,
        ),
        'resp6': serializeParam(
          _resp6,
          ParamType.String,
        ),
        'resp7': serializeParam(
          _resp7,
          ParamType.String,
        ),
        'resp8': serializeParam(
          _resp8,
          ParamType.String,
        ),
      }.withoutNulls;

  static RisposteQuestionarioStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RisposteQuestionarioStruct(
        resp1: deserializeParam(
          data['resp1'],
          ParamType.String,
          false,
        ),
        resp2: deserializeParam(
          data['resp2'],
          ParamType.String,
          false,
        ),
        resp3: deserializeParam(
          data['resp3'],
          ParamType.String,
          false,
        ),
        resp4: deserializeParam(
          data['resp4'],
          ParamType.String,
          false,
        ),
        resp5: deserializeParam(
          data['resp5'],
          ParamType.String,
          false,
        ),
        resp6: deserializeParam(
          data['resp6'],
          ParamType.String,
          false,
        ),
        resp7: deserializeParam(
          data['resp7'],
          ParamType.String,
          false,
        ),
        resp8: deserializeParam(
          data['resp8'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RisposteQuestionarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RisposteQuestionarioStruct &&
        resp1 == other.resp1 &&
        resp2 == other.resp2 &&
        resp3 == other.resp3 &&
        resp4 == other.resp4 &&
        resp5 == other.resp5 &&
        resp6 == other.resp6 &&
        resp7 == other.resp7 &&
        resp8 == other.resp8;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([resp1, resp2, resp3, resp4, resp5, resp6, resp7, resp8]);
}

RisposteQuestionarioStruct createRisposteQuestionarioStruct({
  String? resp1,
  String? resp2,
  String? resp3,
  String? resp4,
  String? resp5,
  String? resp6,
  String? resp7,
  String? resp8,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RisposteQuestionarioStruct(
      resp1: resp1,
      resp2: resp2,
      resp3: resp3,
      resp4: resp4,
      resp5: resp5,
      resp6: resp6,
      resp7: resp7,
      resp8: resp8,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RisposteQuestionarioStruct? updateRisposteQuestionarioStruct(
  RisposteQuestionarioStruct? risposteQuestionario, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    risposteQuestionario
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRisposteQuestionarioStructData(
  Map<String, dynamic> firestoreData,
  RisposteQuestionarioStruct? risposteQuestionario,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (risposteQuestionario == null) {
    return;
  }
  if (risposteQuestionario.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && risposteQuestionario.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final risposteQuestionarioData =
      getRisposteQuestionarioFirestoreData(risposteQuestionario, forFieldValue);
  final nestedData =
      risposteQuestionarioData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      risposteQuestionario.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRisposteQuestionarioFirestoreData(
  RisposteQuestionarioStruct? risposteQuestionario, [
  bool forFieldValue = false,
]) {
  if (risposteQuestionario == null) {
    return {};
  }
  final firestoreData = mapToFirestore(risposteQuestionario.toMap());

  // Add any Firestore field values
  risposteQuestionario.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRisposteQuestionarioListFirestoreData(
  List<RisposteQuestionarioStruct>? risposteQuestionarios,
) =>
    risposteQuestionarios
        ?.map((e) => getRisposteQuestionarioFirestoreData(e, true))
        .toList() ??
    [];
