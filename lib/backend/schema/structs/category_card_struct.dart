// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryCardStruct extends FFFirebaseStruct {
  CategoryCardStruct({
    String? name,
    String? image,
    String? subTitle,
    String? icon,
    List<String>? subCategor,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _image = image,
        _subTitle = subTitle,
        _icon = icon,
        _subCategor = subCategor,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "subTitle" field.
  String? _subTitle;
  String get subTitle => _subTitle ?? '';
  set subTitle(String? val) => _subTitle = val;

  bool hasSubTitle() => _subTitle != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  set icon(String? val) => _icon = val;

  bool hasIcon() => _icon != null;

  // "subCategor" field.
  List<String>? _subCategor;
  List<String> get subCategor => _subCategor ?? const [];
  set subCategor(List<String>? val) => _subCategor = val;

  void updateSubCategor(Function(List<String>) updateFn) {
    updateFn(_subCategor ??= []);
  }

  bool hasSubCategor() => _subCategor != null;

  static CategoryCardStruct fromMap(Map<String, dynamic> data) =>
      CategoryCardStruct(
        name: data['name'] as String?,
        image: data['Image'] as String?,
        subTitle: data['subTitle'] as String?,
        icon: data['icon'] as String?,
        subCategor: getDataList(data['subCategor']),
      );

  static CategoryCardStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoryCardStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'Image': _image,
        'subTitle': _subTitle,
        'icon': _icon,
        'subCategor': _subCategor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Image': serializeParam(
          _image,
          ParamType.String,
        ),
        'subTitle': serializeParam(
          _subTitle,
          ParamType.String,
        ),
        'icon': serializeParam(
          _icon,
          ParamType.String,
        ),
        'subCategor': serializeParam(
          _subCategor,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static CategoryCardStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoryCardStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['Image'],
          ParamType.String,
          false,
        ),
        subTitle: deserializeParam(
          data['subTitle'],
          ParamType.String,
          false,
        ),
        icon: deserializeParam(
          data['icon'],
          ParamType.String,
          false,
        ),
        subCategor: deserializeParam<String>(
          data['subCategor'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'CategoryCardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CategoryCardStruct &&
        name == other.name &&
        image == other.image &&
        subTitle == other.subTitle &&
        icon == other.icon &&
        listEquality.equals(subCategor, other.subCategor);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, image, subTitle, icon, subCategor]);
}

CategoryCardStruct createCategoryCardStruct({
  String? name,
  String? image,
  String? subTitle,
  String? icon,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CategoryCardStruct(
      name: name,
      image: image,
      subTitle: subTitle,
      icon: icon,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CategoryCardStruct? updateCategoryCardStruct(
  CategoryCardStruct? categoryCard, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    categoryCard
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCategoryCardStructData(
  Map<String, dynamic> firestoreData,
  CategoryCardStruct? categoryCard,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (categoryCard == null) {
    return;
  }
  if (categoryCard.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && categoryCard.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final categoryCardData =
      getCategoryCardFirestoreData(categoryCard, forFieldValue);
  final nestedData =
      categoryCardData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = categoryCard.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCategoryCardFirestoreData(
  CategoryCardStruct? categoryCard, [
  bool forFieldValue = false,
]) {
  if (categoryCard == null) {
    return {};
  }
  final firestoreData = mapToFirestore(categoryCard.toMap());

  // Add any Firestore field values
  categoryCard.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCategoryCardListFirestoreData(
  List<CategoryCardStruct>? categoryCards,
) =>
    categoryCards?.map((e) => getCategoryCardFirestoreData(e, true)).toList() ??
    [];
