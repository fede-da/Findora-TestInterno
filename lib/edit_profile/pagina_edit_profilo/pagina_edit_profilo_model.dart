import '/auth/firebase_auth/auth_util.dart';
import '/edit_profile/widgets/pulsante_standard_opzioni_visualizzaprofilo/pulsante_standard_opzioni_visualizzaprofilo_widget.dart';
import '/edit_profile/widgets/settings_display_name_email/settings_display_name_email_widget.dart';
import '/edit_profile/widgets/vertical_spacer/vertical_spacer_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'pagina_edit_profilo_widget.dart' show PaginaEditProfiloWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaginaEditProfiloModel extends FlutterFlowModel<PaginaEditProfiloWidget> {
  ///  Local state fields for this page.

  DocumentReference? prova;

  ///  State fields for stateful widgets in this page.

  // Model for settingsDisplayNameEmail component.
  late SettingsDisplayNameEmailModel settingsDisplayNameEmailModel;
  // Model for verticalSpacer component.
  late VerticalSpacerModel verticalSpacerModel1;
  // Model for pulsanteStandardOpzioniVisualizzaprofilo component.
  late PulsanteStandardOpzioniVisualizzaprofiloModel
      pulsanteStandardOpzioniVisualizzaprofiloModel1;
  // Model for verticalSpacer component.
  late VerticalSpacerModel verticalSpacerModel2;
  // Model for pulsanteStandardOpzioniVisualizzaprofilo component.
  late PulsanteStandardOpzioniVisualizzaprofiloModel
      pulsanteStandardOpzioniVisualizzaprofiloModel2;
  // Model for verticalSpacer component.
  late VerticalSpacerModel verticalSpacerModel3;
  // Model for verticalSpacer component.
  late VerticalSpacerModel verticalSpacerModel4;
  // Model for verticalSpacer component.
  late VerticalSpacerModel verticalSpacerModel5;
  // Model for pulsanteStandardOpzioniVisualizzaprofilo component.
  late PulsanteStandardOpzioniVisualizzaprofiloModel
      pulsanteStandardOpzioniVisualizzaprofiloModel3;
  // Model for verticalSpacer component.
  late VerticalSpacerModel verticalSpacerModel6;
  // Model for pulsanteStandardOpzioniVisualizzaprofilo component.
  late PulsanteStandardOpzioniVisualizzaprofiloModel
      pulsanteStandardOpzioniVisualizzaprofiloModel4;
  // Model for verticalSpacer component.
  late VerticalSpacerModel verticalSpacerModel7;
  // Model for pulsanteStandardOpzioniVisualizzaprofilo component.
  late PulsanteStandardOpzioniVisualizzaprofiloModel
      pulsanteStandardOpzioniVisualizzaprofiloModel5;
  // Model for verticalSpacer component.
  late VerticalSpacerModel verticalSpacerModel8;
  // Model for pulsanteStandardOpzioniVisualizzaprofilo component.
  late PulsanteStandardOpzioniVisualizzaprofiloModel
      pulsanteStandardOpzioniVisualizzaprofiloModel6;
  // Model for verticalSpacer component.
  late VerticalSpacerModel verticalSpacerModel9;

  @override
  void initState(BuildContext context) {
    settingsDisplayNameEmailModel =
        createModel(context, () => SettingsDisplayNameEmailModel());
    verticalSpacerModel1 = createModel(context, () => VerticalSpacerModel());
    pulsanteStandardOpzioniVisualizzaprofiloModel1 = createModel(
        context, () => PulsanteStandardOpzioniVisualizzaprofiloModel());
    verticalSpacerModel2 = createModel(context, () => VerticalSpacerModel());
    pulsanteStandardOpzioniVisualizzaprofiloModel2 = createModel(
        context, () => PulsanteStandardOpzioniVisualizzaprofiloModel());
    verticalSpacerModel3 = createModel(context, () => VerticalSpacerModel());
    verticalSpacerModel4 = createModel(context, () => VerticalSpacerModel());
    verticalSpacerModel5 = createModel(context, () => VerticalSpacerModel());
    pulsanteStandardOpzioniVisualizzaprofiloModel3 = createModel(
        context, () => PulsanteStandardOpzioniVisualizzaprofiloModel());
    verticalSpacerModel6 = createModel(context, () => VerticalSpacerModel());
    pulsanteStandardOpzioniVisualizzaprofiloModel4 = createModel(
        context, () => PulsanteStandardOpzioniVisualizzaprofiloModel());
    verticalSpacerModel7 = createModel(context, () => VerticalSpacerModel());
    pulsanteStandardOpzioniVisualizzaprofiloModel5 = createModel(
        context, () => PulsanteStandardOpzioniVisualizzaprofiloModel());
    verticalSpacerModel8 = createModel(context, () => VerticalSpacerModel());
    pulsanteStandardOpzioniVisualizzaprofiloModel6 = createModel(
        context, () => PulsanteStandardOpzioniVisualizzaprofiloModel());
    verticalSpacerModel9 = createModel(context, () => VerticalSpacerModel());
  }

  @override
  void dispose() {
    settingsDisplayNameEmailModel.dispose();
    verticalSpacerModel1.dispose();
    pulsanteStandardOpzioniVisualizzaprofiloModel1.dispose();
    verticalSpacerModel2.dispose();
    pulsanteStandardOpzioniVisualizzaprofiloModel2.dispose();
    verticalSpacerModel3.dispose();
    verticalSpacerModel4.dispose();
    verticalSpacerModel5.dispose();
    pulsanteStandardOpzioniVisualizzaprofiloModel3.dispose();
    verticalSpacerModel6.dispose();
    pulsanteStandardOpzioniVisualizzaprofiloModel4.dispose();
    verticalSpacerModel7.dispose();
    pulsanteStandardOpzioniVisualizzaprofiloModel5.dispose();
    verticalSpacerModel8.dispose();
    pulsanteStandardOpzioniVisualizzaprofiloModel6.dispose();
    verticalSpacerModel9.dispose();
  }
}
