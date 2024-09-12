// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnnuncioInPreparazioneStruct extends FFFirebaseStruct {
  AnnuncioInPreparazioneStruct({
    String? titolo,
    List<String>? foto,
    String? descrizione,
    double? prezzo,
    String? categoria,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _titolo = titolo,
        _foto = foto,
        _descrizione = descrizione,
        _prezzo = prezzo,
        _categoria = categoria,
        super(firestoreUtilData);

  // "titolo" field.
  String? _titolo;
  String get titolo => _titolo ?? '';
  set titolo(String? val) => _titolo = val;

  bool hasTitolo() => _titolo != null;

  // "foto" field.
  List<String>? _foto;
  List<String> get foto => _foto ?? const [];
  set foto(List<String>? val) => _foto = val;

  void updateFoto(Function(List<String>) updateFn) {
    updateFn(_foto ??= []);
  }

  bool hasFoto() => _foto != null;

  // "descrizione" field.
  String? _descrizione;
  String get descrizione => _descrizione ?? '';
  set descrizione(String? val) => _descrizione = val;

  bool hasDescrizione() => _descrizione != null;

  // "prezzo" field.
  double? _prezzo;
  double get prezzo => _prezzo ?? 0.0;
  set prezzo(double? val) => _prezzo = val;

  void incrementPrezzo(double amount) => prezzo = prezzo + amount;

  bool hasPrezzo() => _prezzo != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  set categoria(String? val) => _categoria = val;

  bool hasCategoria() => _categoria != null;

  static AnnuncioInPreparazioneStruct fromMap(Map<String, dynamic> data) =>
      AnnuncioInPreparazioneStruct(
        titolo: data['titolo'] as String?,
        foto: getDataList(data['foto']),
        descrizione: data['descrizione'] as String?,
        prezzo: castToType<double>(data['prezzo']),
        categoria: data['categoria'] as String?,
      );

  static AnnuncioInPreparazioneStruct? maybeFromMap(dynamic data) => data is Map
      ? AnnuncioInPreparazioneStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'titolo': _titolo,
        'foto': _foto,
        'descrizione': _descrizione,
        'prezzo': _prezzo,
        'categoria': _categoria,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'titolo': serializeParam(
          _titolo,
          ParamType.String,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
          isList: true,
        ),
        'descrizione': serializeParam(
          _descrizione,
          ParamType.String,
        ),
        'prezzo': serializeParam(
          _prezzo,
          ParamType.double,
        ),
        'categoria': serializeParam(
          _categoria,
          ParamType.String,
        ),
      }.withoutNulls;

  static AnnuncioInPreparazioneStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AnnuncioInPreparazioneStruct(
        titolo: deserializeParam(
          data['titolo'],
          ParamType.String,
          false,
        ),
        foto: deserializeParam<String>(
          data['foto'],
          ParamType.String,
          true,
        ),
        descrizione: deserializeParam(
          data['descrizione'],
          ParamType.String,
          false,
        ),
        prezzo: deserializeParam(
          data['prezzo'],
          ParamType.double,
          false,
        ),
        categoria: deserializeParam(
          data['categoria'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AnnuncioInPreparazioneStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AnnuncioInPreparazioneStruct &&
        titolo == other.titolo &&
        listEquality.equals(foto, other.foto) &&
        descrizione == other.descrizione &&
        prezzo == other.prezzo &&
        categoria == other.categoria;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([titolo, foto, descrizione, prezzo, categoria]);
}

AnnuncioInPreparazioneStruct createAnnuncioInPreparazioneStruct({
  String? titolo,
  String? descrizione,
  double? prezzo,
  String? categoria,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AnnuncioInPreparazioneStruct(
      titolo: titolo,
      descrizione: descrizione,
      prezzo: prezzo,
      categoria: categoria,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AnnuncioInPreparazioneStruct? updateAnnuncioInPreparazioneStruct(
  AnnuncioInPreparazioneStruct? annuncioInPreparazione, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    annuncioInPreparazione
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAnnuncioInPreparazioneStructData(
  Map<String, dynamic> firestoreData,
  AnnuncioInPreparazioneStruct? annuncioInPreparazione,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (annuncioInPreparazione == null) {
    return;
  }
  if (annuncioInPreparazione.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      annuncioInPreparazione.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final annuncioInPreparazioneData = getAnnuncioInPreparazioneFirestoreData(
      annuncioInPreparazione, forFieldValue);
  final nestedData =
      annuncioInPreparazioneData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      annuncioInPreparazione.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAnnuncioInPreparazioneFirestoreData(
  AnnuncioInPreparazioneStruct? annuncioInPreparazione, [
  bool forFieldValue = false,
]) {
  if (annuncioInPreparazione == null) {
    return {};
  }
  final firestoreData = mapToFirestore(annuncioInPreparazione.toMap());

  // Add any Firestore field values
  annuncioInPreparazione.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAnnuncioInPreparazioneListFirestoreData(
  List<AnnuncioInPreparazioneStruct>? annuncioInPreparaziones,
) =>
    annuncioInPreparaziones
        ?.map((e) => getAnnuncioInPreparazioneFirestoreData(e, true))
        .toList() ??
    [];
