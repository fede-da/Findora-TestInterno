import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/questionnaire/questionnaire_components_user/eighth_quest_comp/eighth_quest_comp_widget.dart';
import '/questionnaire/questionnaire_components_user/fifth_quest_comp/fifth_quest_comp_widget.dart';
import '/questionnaire/questionnaire_components_user/first_quest_comp/first_quest_comp_widget.dart';
import '/questionnaire/questionnaire_components_user/fourth_quest_comp/fourth_quest_comp_widget.dart';
import '/questionnaire/questionnaire_components_user/second_quest_comp/second_quest_comp_widget.dart';
import '/questionnaire/questionnaire_components_user/seventh_quest_comp/seventh_quest_comp_widget.dart';
import '/questionnaire/questionnaire_components_user/sixth_quest_comp/sixth_quest_comp_widget.dart';
import '/questionnaire/questionnaire_components_user/third_quest_comp/third_quest_comp_widget.dart';
import 'questionnaire_user_widget.dart' show QuestionnaireUserWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuestionnaireUserModel extends FlutterFlowModel<QuestionnaireUserWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for firstQuestComp component.
  late FirstQuestCompModel firstQuestCompModel;
  // Model for secondQuestComp component.
  late SecondQuestCompModel secondQuestCompModel;
  // Model for thirdQuestComp component.
  late ThirdQuestCompModel thirdQuestCompModel;
  // Model for fourthQuestComp component.
  late FourthQuestCompModel fourthQuestCompModel;
  // Model for fifthQuestComp component.
  late FifthQuestCompModel fifthQuestCompModel;
  // Model for sixthQuestComp component.
  late SixthQuestCompModel sixthQuestCompModel;
  // Model for seventhQuestComp component.
  late SeventhQuestCompModel seventhQuestCompModel;
  // Model for eighthQuestComp component.
  late EighthQuestCompModel eighthQuestCompModel;

  @override
  void initState(BuildContext context) {
    firstQuestCompModel = createModel(context, () => FirstQuestCompModel());
    secondQuestCompModel = createModel(context, () => SecondQuestCompModel());
    thirdQuestCompModel = createModel(context, () => ThirdQuestCompModel());
    fourthQuestCompModel = createModel(context, () => FourthQuestCompModel());
    fifthQuestCompModel = createModel(context, () => FifthQuestCompModel());
    sixthQuestCompModel = createModel(context, () => SixthQuestCompModel());
    seventhQuestCompModel = createModel(context, () => SeventhQuestCompModel());
    eighthQuestCompModel = createModel(context, () => EighthQuestCompModel());
  }

  @override
  void dispose() {
    firstQuestCompModel.dispose();
    secondQuestCompModel.dispose();
    thirdQuestCompModel.dispose();
    fourthQuestCompModel.dispose();
    fifthQuestCompModel.dispose();
    sixthQuestCompModel.dispose();
    seventhQuestCompModel.dispose();
    eighthQuestCompModel.dispose();
  }
}
