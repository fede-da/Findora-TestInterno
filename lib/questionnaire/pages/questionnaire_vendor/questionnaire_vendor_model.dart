import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/questionnaire/questionnaire_components_vendor/vendor_quest1/vendor_quest1_widget.dart';
import '/questionnaire/questionnaire_components_vendor/vendor_quest10/vendor_quest10_widget.dart';
import '/questionnaire/questionnaire_components_vendor/vendor_quest2/vendor_quest2_widget.dart';
import '/questionnaire/questionnaire_components_vendor/vendor_quest3/vendor_quest3_widget.dart';
import '/questionnaire/questionnaire_components_vendor/vendor_quest4/vendor_quest4_widget.dart';
import '/questionnaire/questionnaire_components_vendor/vendor_quest5/vendor_quest5_widget.dart';
import '/questionnaire/questionnaire_components_vendor/vendor_quest6/vendor_quest6_widget.dart';
import '/questionnaire/questionnaire_components_vendor/vendor_quest7/vendor_quest7_widget.dart';
import '/questionnaire/questionnaire_components_vendor/vendor_quest8/vendor_quest8_widget.dart';
import '/questionnaire/questionnaire_components_vendor/vendor_quest9/vendor_quest9_widget.dart';
import 'questionnaire_vendor_widget.dart' show QuestionnaireVendorWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuestionnaireVendorModel
    extends FlutterFlowModel<QuestionnaireVendorWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for vendorQuest1 component.
  late VendorQuest1Model vendorQuest1Model;
  // Model for vendorQuest2 component.
  late VendorQuest2Model vendorQuest2Model;
  // Model for vendorQuest3 component.
  late VendorQuest3Model vendorQuest3Model;
  // Model for vendorQuest4 component.
  late VendorQuest4Model vendorQuest4Model;
  // Model for vendorQuest5 component.
  late VendorQuest5Model vendorQuest5Model;
  // Model for vendorQuest6 component.
  late VendorQuest6Model vendorQuest6Model;
  // Model for vendorQuest7 component.
  late VendorQuest7Model vendorQuest7Model;
  // Model for vendorQuest8 component.
  late VendorQuest8Model vendorQuest8Model;
  // Model for vendorQuest9 component.
  late VendorQuest9Model vendorQuest9Model;
  // Model for vendorQuest10 component.
  late VendorQuest10Model vendorQuest10Model;

  @override
  void initState(BuildContext context) {
    vendorQuest1Model = createModel(context, () => VendorQuest1Model());
    vendorQuest2Model = createModel(context, () => VendorQuest2Model());
    vendorQuest3Model = createModel(context, () => VendorQuest3Model());
    vendorQuest4Model = createModel(context, () => VendorQuest4Model());
    vendorQuest5Model = createModel(context, () => VendorQuest5Model());
    vendorQuest6Model = createModel(context, () => VendorQuest6Model());
    vendorQuest7Model = createModel(context, () => VendorQuest7Model());
    vendorQuest8Model = createModel(context, () => VendorQuest8Model());
    vendorQuest9Model = createModel(context, () => VendorQuest9Model());
    vendorQuest10Model = createModel(context, () => VendorQuest10Model());
  }

  @override
  void dispose() {
    vendorQuest1Model.dispose();
    vendorQuest2Model.dispose();
    vendorQuest3Model.dispose();
    vendorQuest4Model.dispose();
    vendorQuest5Model.dispose();
    vendorQuest6Model.dispose();
    vendorQuest7Model.dispose();
    vendorQuest8Model.dispose();
    vendorQuest9Model.dispose();
    vendorQuest10Model.dispose();
  }
}
