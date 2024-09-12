import '/esplora/widets/category_card/category_card_widget.dart';
import '/esplora/widets/interest_card/interest_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'esplora_categorie_copy_widget.dart' show EsploraCategorieCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EsploraCategorieCopyModel
    extends FlutterFlowModel<EsploraCategorieCopyWidget> {
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
  // Model for interestCard component.
  late InterestCardModel interestCardModel1;
  // Model for interestCard component.
  late InterestCardModel interestCardModel2;
  // Model for interestCard component.
  late InterestCardModel interestCardModel3;
  // Model for interestCard component.
  late InterestCardModel interestCardModel4;
  // Model for interestCard component.
  late InterestCardModel interestCardModel5;
  // Model for interestCard component.
  late InterestCardModel interestCardModel6;
  // Model for interestCard component.
  late InterestCardModel interestCardModel7;
  // Model for interestCard component.
  late InterestCardModel interestCardModel8;
  // Model for interestCard component.
  late InterestCardModel interestCardModel9;
  // Model for interestCard component.
  late InterestCardModel interestCardModel10;

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
    interestCardModel1 = createModel(context, () => InterestCardModel());
    interestCardModel2 = createModel(context, () => InterestCardModel());
    interestCardModel3 = createModel(context, () => InterestCardModel());
    interestCardModel4 = createModel(context, () => InterestCardModel());
    interestCardModel5 = createModel(context, () => InterestCardModel());
    interestCardModel6 = createModel(context, () => InterestCardModel());
    interestCardModel7 = createModel(context, () => InterestCardModel());
    interestCardModel8 = createModel(context, () => InterestCardModel());
    interestCardModel9 = createModel(context, () => InterestCardModel());
    interestCardModel10 = createModel(context, () => InterestCardModel());
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
    interestCardModel1.dispose();
    interestCardModel2.dispose();
    interestCardModel3.dispose();
    interestCardModel4.dispose();
    interestCardModel5.dispose();
    interestCardModel6.dispose();
    interestCardModel7.dispose();
    interestCardModel8.dispose();
    interestCardModel9.dispose();
    interestCardModel10.dispose();
  }
}
