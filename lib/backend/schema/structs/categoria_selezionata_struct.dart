// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriaSelezionataStruct extends FFFirebaseStruct {
  CategoriaSelezionataStruct({
    String? selected,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _selected = selected,
        super(firestoreUtilData);

  // "selected" field.
  String? _selected;
  String get selected => _selected ?? '';
  set selected(String? val) => _selected = val;

  bool hasSelected() => _selected != null;

  static CategoriaSelezionataStruct fromMap(Map<String, dynamic> data) =>
      CategoriaSelezionataStruct(
        selected: data['selected'] as String?,
      );

  static CategoriaSelezionataStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoriaSelezionataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'selected': _selected,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'selected': serializeParam(
          _selected,
          ParamType.String,
        ),
      }.withoutNulls;

  static CategoriaSelezionataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CategoriaSelezionataStruct(
        selected: deserializeParam(
          data['selected'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CategoriaSelezionataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoriaSelezionataStruct && selected == other.selected;
  }

  @override
  int get hashCode => const ListEquality().hash([selected]);
}

CategoriaSelezionataStruct createCategoriaSelezionataStruct({
  String? selected,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CategoriaSelezionataStruct(
      selected: selected,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CategoriaSelezionataStruct? updateCategoriaSelezionataStruct(
  CategoriaSelezionataStruct? categoriaSelezionata, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    categoriaSelezionata
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCategoriaSelezionataStructData(
  Map<String, dynamic> firestoreData,
  CategoriaSelezionataStruct? categoriaSelezionata,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (categoriaSelezionata == null) {
    return;
  }
  if (categoriaSelezionata.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && categoriaSelezionata.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final categoriaSelezionataData =
      getCategoriaSelezionataFirestoreData(categoriaSelezionata, forFieldValue);
  final nestedData =
      categoriaSelezionataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      categoriaSelezionata.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCategoriaSelezionataFirestoreData(
  CategoriaSelezionataStruct? categoriaSelezionata, [
  bool forFieldValue = false,
]) {
  if (categoriaSelezionata == null) {
    return {};
  }
  final firestoreData = mapToFirestore(categoriaSelezionata.toMap());

  // Add any Firestore field values
  categoriaSelezionata.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCategoriaSelezionataListFirestoreData(
  List<CategoriaSelezionataStruct>? categoriaSelezionatas,
) =>
    categoriaSelezionatas
        ?.map((e) => getCategoriaSelezionataFirestoreData(e, true))
        .toList() ??
    [];
