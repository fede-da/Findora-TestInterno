// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RisposteQuestionarioVendorStruct extends FFFirebaseStruct {
  RisposteQuestionarioVendorStruct({
    String? r1,
    String? r2,
    String? r3,
    String? r4,
    String? r5,
    String? r6,
    String? r7,
    String? r8,
    String? r9,
    String? r10,
    String? creatorUID,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _r1 = r1,
        _r2 = r2,
        _r3 = r3,
        _r4 = r4,
        _r5 = r5,
        _r6 = r6,
        _r7 = r7,
        _r8 = r8,
        _r9 = r9,
        _r10 = r10,
        _creatorUID = creatorUID,
        super(firestoreUtilData);

  // "r1" field.
  String? _r1;
  String get r1 => _r1 ?? '';
  set r1(String? val) => _r1 = val;

  bool hasR1() => _r1 != null;

  // "r2" field.
  String? _r2;
  String get r2 => _r2 ?? '';
  set r2(String? val) => _r2 = val;

  bool hasR2() => _r2 != null;

  // "r3" field.
  String? _r3;
  String get r3 => _r3 ?? '';
  set r3(String? val) => _r3 = val;

  bool hasR3() => _r3 != null;

  // "r4" field.
  String? _r4;
  String get r4 => _r4 ?? '';
  set r4(String? val) => _r4 = val;

  bool hasR4() => _r4 != null;

  // "r5" field.
  String? _r5;
  String get r5 => _r5 ?? '';
  set r5(String? val) => _r5 = val;

  bool hasR5() => _r5 != null;

  // "r6" field.
  String? _r6;
  String get r6 => _r6 ?? '';
  set r6(String? val) => _r6 = val;

  bool hasR6() => _r6 != null;

  // "r7" field.
  String? _r7;
  String get r7 => _r7 ?? '';
  set r7(String? val) => _r7 = val;

  bool hasR7() => _r7 != null;

  // "r8" field.
  String? _r8;
  String get r8 => _r8 ?? '';
  set r8(String? val) => _r8 = val;

  bool hasR8() => _r8 != null;

  // "r9" field.
  String? _r9;
  String get r9 => _r9 ?? '';
  set r9(String? val) => _r9 = val;

  bool hasR9() => _r9 != null;

  // "r10" field.
  String? _r10;
  String get r10 => _r10 ?? '';
  set r10(String? val) => _r10 = val;

  bool hasR10() => _r10 != null;

  // "creatorUID" field.
  String? _creatorUID;
  String get creatorUID => _creatorUID ?? '';
  set creatorUID(String? val) => _creatorUID = val;

  bool hasCreatorUID() => _creatorUID != null;

  static RisposteQuestionarioVendorStruct fromMap(Map<String, dynamic> data) =>
      RisposteQuestionarioVendorStruct(
        r1: data['r1'] as String?,
        r2: data['r2'] as String?,
        r3: data['r3'] as String?,
        r4: data['r4'] as String?,
        r5: data['r5'] as String?,
        r6: data['r6'] as String?,
        r7: data['r7'] as String?,
        r8: data['r8'] as String?,
        r9: data['r9'] as String?,
        r10: data['r10'] as String?,
        creatorUID: data['creatorUID'] as String?,
      );

  static RisposteQuestionarioVendorStruct? maybeFromMap(dynamic data) => data
          is Map
      ? RisposteQuestionarioVendorStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'r1': _r1,
        'r2': _r2,
        'r3': _r3,
        'r4': _r4,
        'r5': _r5,
        'r6': _r6,
        'r7': _r7,
        'r8': _r8,
        'r9': _r9,
        'r10': _r10,
        'creatorUID': _creatorUID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'r1': serializeParam(
          _r1,
          ParamType.String,
        ),
        'r2': serializeParam(
          _r2,
          ParamType.String,
        ),
        'r3': serializeParam(
          _r3,
          ParamType.String,
        ),
        'r4': serializeParam(
          _r4,
          ParamType.String,
        ),
        'r5': serializeParam(
          _r5,
          ParamType.String,
        ),
        'r6': serializeParam(
          _r6,
          ParamType.String,
        ),
        'r7': serializeParam(
          _r7,
          ParamType.String,
        ),
        'r8': serializeParam(
          _r8,
          ParamType.String,
        ),
        'r9': serializeParam(
          _r9,
          ParamType.String,
        ),
        'r10': serializeParam(
          _r10,
          ParamType.String,
        ),
        'creatorUID': serializeParam(
          _creatorUID,
          ParamType.String,
        ),
      }.withoutNulls;

  static RisposteQuestionarioVendorStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RisposteQuestionarioVendorStruct(
        r1: deserializeParam(
          data['r1'],
          ParamType.String,
          false,
        ),
        r2: deserializeParam(
          data['r2'],
          ParamType.String,
          false,
        ),
        r3: deserializeParam(
          data['r3'],
          ParamType.String,
          false,
        ),
        r4: deserializeParam(
          data['r4'],
          ParamType.String,
          false,
        ),
        r5: deserializeParam(
          data['r5'],
          ParamType.String,
          false,
        ),
        r6: deserializeParam(
          data['r6'],
          ParamType.String,
          false,
        ),
        r7: deserializeParam(
          data['r7'],
          ParamType.String,
          false,
        ),
        r8: deserializeParam(
          data['r8'],
          ParamType.String,
          false,
        ),
        r9: deserializeParam(
          data['r9'],
          ParamType.String,
          false,
        ),
        r10: deserializeParam(
          data['r10'],
          ParamType.String,
          false,
        ),
        creatorUID: deserializeParam(
          data['creatorUID'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RisposteQuestionarioVendorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RisposteQuestionarioVendorStruct &&
        r1 == other.r1 &&
        r2 == other.r2 &&
        r3 == other.r3 &&
        r4 == other.r4 &&
        r5 == other.r5 &&
        r6 == other.r6 &&
        r7 == other.r7 &&
        r8 == other.r8 &&
        r9 == other.r9 &&
        r10 == other.r10 &&
        creatorUID == other.creatorUID;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, creatorUID]);
}

RisposteQuestionarioVendorStruct createRisposteQuestionarioVendorStruct({
  String? r1,
  String? r2,
  String? r3,
  String? r4,
  String? r5,
  String? r6,
  String? r7,
  String? r8,
  String? r9,
  String? r10,
  String? creatorUID,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RisposteQuestionarioVendorStruct(
      r1: r1,
      r2: r2,
      r3: r3,
      r4: r4,
      r5: r5,
      r6: r6,
      r7: r7,
      r8: r8,
      r9: r9,
      r10: r10,
      creatorUID: creatorUID,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RisposteQuestionarioVendorStruct? updateRisposteQuestionarioVendorStruct(
  RisposteQuestionarioVendorStruct? risposteQuestionarioVendor, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    risposteQuestionarioVendor
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRisposteQuestionarioVendorStructData(
  Map<String, dynamic> firestoreData,
  RisposteQuestionarioVendorStruct? risposteQuestionarioVendor,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (risposteQuestionarioVendor == null) {
    return;
  }
  if (risposteQuestionarioVendor.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      risposteQuestionarioVendor.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final risposteQuestionarioVendorData =
      getRisposteQuestionarioVendorFirestoreData(
          risposteQuestionarioVendor, forFieldValue);
  final nestedData = risposteQuestionarioVendorData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      risposteQuestionarioVendor.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRisposteQuestionarioVendorFirestoreData(
  RisposteQuestionarioVendorStruct? risposteQuestionarioVendor, [
  bool forFieldValue = false,
]) {
  if (risposteQuestionarioVendor == null) {
    return {};
  }
  final firestoreData = mapToFirestore(risposteQuestionarioVendor.toMap());

  // Add any Firestore field values
  risposteQuestionarioVendor.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRisposteQuestionarioVendorListFirestoreData(
  List<RisposteQuestionarioVendorStruct>? risposteQuestionarioVendors,
) =>
    risposteQuestionarioVendors
        ?.map((e) => getRisposteQuestionarioVendorFirestoreData(e, true))
        .toList() ??
    [];
