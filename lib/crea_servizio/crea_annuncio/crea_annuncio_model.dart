import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'crea_annuncio_widget.dart' show CreaAnnuncioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreaAnnuncioModel extends FlutterFlowModel<CreaAnnuncioWidget> {
  ///  Local state fields for this page.

  String? selectedCategory = '';

  String? selectedSubCategory = '';

  String? nome = 'Titolo..';

  String? descrizione = 'Descrizione..';

  double prezzo = 0.0;

  List<String> sottoCategorieSelezionate = [];
  void addToSottoCategorieSelezionate(String item) =>
      sottoCategorieSelezionate.add(item);
  void removeFromSottoCategorieSelezionate(String item) =>
      sottoCategorieSelezionate.remove(item);
  void removeAtIndexFromSottoCategorieSelezionate(int index) =>
      sottoCategorieSelezionate.removeAt(index);
  void insertAtIndexInSottoCategorieSelezionate(int index, String item) =>
      sottoCategorieSelezionate.insert(index, item);
  void updateSottoCategorieSelezionateAtIndex(
          int index, Function(String) updateFn) =>
      sottoCategorieSelezionate[index] =
          updateFn(sottoCategorieSelezionate[index]);

  int? selectedIndex;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for productName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // Stores action output result for [Custom Action - uuidGenerator] action in Button widget.
  String? newGeneratedUuid;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();
  }
}
