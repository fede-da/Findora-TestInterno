import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'category_card_widget.dart' show CategoryCardWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoryCardModel extends FlutterFlowModel<CategoryCardWidget> {
  ///  Local state fields for this component.

  List<String> subCategoriesList = [];
  void addToSubCategoriesList(String item) => subCategoriesList.add(item);
  void removeFromSubCategoriesList(String item) =>
      subCategoriesList.remove(item);
  void removeAtIndexFromSubCategoriesList(int index) =>
      subCategoriesList.removeAt(index);
  void insertAtIndexInSubCategoriesList(int index, String item) =>
      subCategoriesList.insert(index, item);
  void updateSubCategoriesListAtIndex(int index, Function(String) updateFn) =>
      subCategoriesList[index] = updateFn(subCategoriesList[index]);

  String? otherSubTitle;

  String? subTitle;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
