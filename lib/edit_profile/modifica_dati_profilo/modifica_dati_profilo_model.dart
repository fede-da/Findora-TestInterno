import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/edit_profile/widgets/text_field_edit_component/text_field_edit_component_widget.dart';
import '/edit_profile/widgets/vertical_spacer/vertical_spacer_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'modifica_dati_profilo_widget.dart' show ModificaDatiProfiloWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModificaDatiProfiloModel
    extends FlutterFlowModel<ModificaDatiProfiloWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? uploadedNewProfilePictureAsByte;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Model for verticalSpacer component.
  late VerticalSpacerModel verticalSpacerModel1;
  // Model for textFieldEditComponent component.
  late TextFieldEditComponentModel textFieldEditComponentModel1;
  // Model for verticalSpacer component.
  late VerticalSpacerModel verticalSpacerModel2;
  // Model for textFieldEditComponent component.
  late TextFieldEditComponentModel textFieldEditComponentModel2;
  // Model for verticalSpacer component.
  late VerticalSpacerModel verticalSpacerModel3;
  // Model for textFieldEditComponent component.
  late TextFieldEditComponentModel textFieldEditComponentModel3;
  // Model for verticalSpacer component.
  late VerticalSpacerModel verticalSpacerModel4;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<AdvertisementRecord>? annunciFiltrati;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {
    verticalSpacerModel1 = createModel(context, () => VerticalSpacerModel());
    textFieldEditComponentModel1 =
        createModel(context, () => TextFieldEditComponentModel());
    verticalSpacerModel2 = createModel(context, () => VerticalSpacerModel());
    textFieldEditComponentModel2 =
        createModel(context, () => TextFieldEditComponentModel());
    verticalSpacerModel3 = createModel(context, () => VerticalSpacerModel());
    textFieldEditComponentModel3 =
        createModel(context, () => TextFieldEditComponentModel());
    verticalSpacerModel4 = createModel(context, () => VerticalSpacerModel());
  }

  @override
  void dispose() {
    verticalSpacerModel1.dispose();
    textFieldEditComponentModel1.dispose();
    verticalSpacerModel2.dispose();
    textFieldEditComponentModel2.dispose();
    verticalSpacerModel3.dispose();
    textFieldEditComponentModel3.dispose();
    verticalSpacerModel4.dispose();
  }
}
