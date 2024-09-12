import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'first_quest_comp_widget.dart' show FirstQuestCompWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FirstQuestCompModel extends FlutterFlowModel<FirstQuestCompWidget> {
  ///  Local state fields for this component.

  int? selectedIndex;

  String currentAnswer = 'Seleziona una risposta';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
