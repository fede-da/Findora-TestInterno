import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/esplora/widets/announcement_card/announcement_card_widget.dart';
import '/esplora/widets/service_card/service_card_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'esplora_sotto_servizio_widget.dart' show EsploraSottoServizioWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EsploraSottoServizioModel
    extends FlutterFlowModel<EsploraSottoServizioWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for serviceCard component.
  late ServiceCardModel serviceCardModel1;
  // Model for serviceCard component.
  late ServiceCardModel serviceCardModel2;
  // Model for serviceCard component.
  late ServiceCardModel serviceCardModel3;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {
    serviceCardModel1 = createModel(context, () => ServiceCardModel());
    serviceCardModel2 = createModel(context, () => ServiceCardModel());
    serviceCardModel3 = createModel(context, () => ServiceCardModel());
  }

  @override
  void dispose() {
    serviceCardModel1.dispose();
    serviceCardModel2.dispose();
    serviceCardModel3.dispose();
  }
}
