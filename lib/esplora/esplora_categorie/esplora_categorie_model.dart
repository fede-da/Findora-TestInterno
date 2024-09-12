import '/esplora/widets/category_card/category_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'esplora_categorie_widget.dart' show EsploraCategorieWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EsploraCategorieModel extends FlutterFlowModel<EsploraCategorieWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for categoryCard component.
  late CategoryCardModel categoryCardModel1;
  // Model for categoryCard component.
  late CategoryCardModel categoryCardModel2;
  // Model for categoryCard component.
  late CategoryCardModel categoryCardModel3;
  // Model for categoryCard component.
  late CategoryCardModel categoryCardModel4;
  // Model for categoryCard component.
  late CategoryCardModel categoryCardModel5;
  // Model for categoryCard component.
  late CategoryCardModel categoryCardModel6;
  // Model for categoryCard component.
  late CategoryCardModel categoryCardModel7;
  // Model for categoryCard component.
  late CategoryCardModel categoryCardModel8;
  // Model for categoryCard component.
  late CategoryCardModel categoryCardModel9;
  // Model for categoryCard component.
  late CategoryCardModel categoryCardModel10;

  @override
  void initState(BuildContext context) {
    categoryCardModel1 = createModel(context, () => CategoryCardModel());
    categoryCardModel2 = createModel(context, () => CategoryCardModel());
    categoryCardModel3 = createModel(context, () => CategoryCardModel());
    categoryCardModel4 = createModel(context, () => CategoryCardModel());
    categoryCardModel5 = createModel(context, () => CategoryCardModel());
    categoryCardModel6 = createModel(context, () => CategoryCardModel());
    categoryCardModel7 = createModel(context, () => CategoryCardModel());
    categoryCardModel8 = createModel(context, () => CategoryCardModel());
    categoryCardModel9 = createModel(context, () => CategoryCardModel());
    categoryCardModel10 = createModel(context, () => CategoryCardModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    categoryCardModel1.dispose();
    categoryCardModel2.dispose();
    categoryCardModel3.dispose();
    categoryCardModel4.dispose();
    categoryCardModel5.dispose();
    categoryCardModel6.dispose();
    categoryCardModel7.dispose();
    categoryCardModel8.dispose();
    categoryCardModel9.dispose();
    categoryCardModel10.dispose();
  }
}
