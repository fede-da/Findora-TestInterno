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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modifica_dati_profilo_model.dart';
export 'modifica_dati_profilo_model.dart';

class ModificaDatiProfiloWidget extends StatefulWidget {
  const ModificaDatiProfiloWidget({
    super.key,
    this.annunci,
  });

  final DocumentReference? annunci;

  @override
  State<ModificaDatiProfiloWidget> createState() =>
      _ModificaDatiProfiloWidgetState();
}

class _ModificaDatiProfiloWidgetState extends State<ModificaDatiProfiloWidget> {
  late ModificaDatiProfiloModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModificaDatiProfiloModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          iconTheme: IconThemeData(color: FlutterFlowTheme.of(context).white),
          automaticallyImplyLeading: true,
          title: Text(
            'Modifica Profilo',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 5.0,
                      constraints: BoxConstraints(
                        minWidth: double.infinity,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0x00131619),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Builder(
                            builder: (context) {
                              if (_model.uploadedNewProfilePictureAsByte ==
                                      null ||
                                  (_model.uploadedNewProfilePictureAsByte?.bytes
                                          ?.isEmpty ??
                                      true)) {
                                return Container(
                                  width: 90.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent2,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(165.0),
                                      child: Image.network(
                                        currentUserPhoto,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Container(
                                  width: 90.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(90.0),
                                    child: Image.memory(
                                      _model.uploadedNewProfilePictureAsByte
                                              ?.bytes ??
                                          Uint8List.fromList([]),
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).lineColor,
                                borderRadius: 20.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context).accent1,
                                icon: Icon(
                                  Icons.photo_camera,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    allowPhoto: true,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    safeSetState(
                                        () => _model.isDataUploading1 = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    try {
                                      showUploadMessage(
                                        context,
                                        'Uploading file...',
                                        showLoading: true,
                                      );
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();
                                    } finally {
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentSnackBar();
                                      _model.isDataUploading1 = false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                        selectedMedia.length) {
                                      safeSetState(() {
                                        _model.uploadedLocalFile1 =
                                            selectedUploadedFiles.first;
                                      });
                                      showUploadMessage(context, 'Success!');
                                    } else {
                                      safeSetState(() {});
                                      showUploadMessage(
                                          context, 'Failed to upload data');
                                      return;
                                    }
                                  }

                                  _model.uploadedNewProfilePictureAsByte =
                                      _model.uploadedLocalFile1;
                                  safeSetState(() {});
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.verticalSpacerModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: VerticalSpacerWidget(),
                  ),
                  AuthUserStreamWidget(
                    builder: (context) => wrapWithModel(
                      model: _model.textFieldEditComponentModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: TextFieldEditComponentWidget(
                        label: 'Username',
                        value: currentUserDisplayName,
                        icon: Icon(
                          Icons.person,
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.verticalSpacerModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: VerticalSpacerWidget(),
                  ),
                  AuthUserStreamWidget(
                    builder: (context) => wrapWithModel(
                      model: _model.textFieldEditComponentModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: TextFieldEditComponentWidget(
                        label: 'Description',
                        value: valueOrDefault(
                            currentUserDocument?.description, ''),
                        icon: Icon(
                          Icons.description_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.verticalSpacerModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: VerticalSpacerWidget(),
                  ),
                  AuthUserStreamWidget(
                    builder: (context) => wrapWithModel(
                      model: _model.textFieldEditComponentModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: TextFieldEditComponentWidget(
                        label: 'Phone number',
                        value: currentPhoneNumber,
                        icon: Icon(
                          Icons.phone,
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.verticalSpacerModel4,
                    updateCallback: () => safeSetState(() {}),
                    child: VerticalSpacerWidget(),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.uploadedNewProfilePictureAsByte == null ||
                              (_model.uploadedNewProfilePictureAsByte?.bytes
                                      ?.isEmpty ??
                                  true)) {
                            await currentUserReference!
                                .update(createUserCredentialRecordData(
                              displayName: _model.textFieldEditComponentModel1
                                  .textController.text,
                              phoneNumber: _model.textFieldEditComponentModel3
                                  .textController.text,
                              description: _model.textFieldEditComponentModel2
                                  .textController.text,
                            ));
                            _model.annunciFiltrati =
                                await queryAdvertisementRecordOnce(
                              queryBuilder: (advertisementRecord) =>
                                  advertisementRecord.where(
                                'creatorUID',
                                isEqualTo: currentUserUid,
                              ),
                            );

                            await widget!.annunci!
                                .update(createAdvertisementRecordData(
                              createdBy: currentUserDisplayName,
                            ));
                          } else {
                            await FirebaseStorage.instance
                                .refFromURL(currentUserPhoto)
                                .delete();
                            {
                              safeSetState(
                                  () => _model.isDataUploading2 = true);
                              var selectedUploadedFiles = <FFUploadedFile>[];
                              var selectedMedia = <SelectedFile>[];
                              var downloadUrls = <String>[];
                              try {
                                selectedUploadedFiles =
                                    _model.uploadedLocalFile1.bytes!.isNotEmpty
                                        ? [_model.uploadedLocalFile1]
                                        : <FFUploadedFile>[];
                                selectedMedia = selectedFilesFromUploadedFiles(
                                  selectedUploadedFiles,
                                );
                                downloadUrls = (await Future.wait(
                                  selectedMedia.map(
                                    (m) async => await uploadData(
                                        m.storagePath, m.bytes),
                                  ),
                                ))
                                    .where((u) => u != null)
                                    .map((u) => u!)
                                    .toList();
                              } finally {
                                _model.isDataUploading2 = false;
                              }
                              if (selectedUploadedFiles.length ==
                                      selectedMedia.length &&
                                  downloadUrls.length == selectedMedia.length) {
                                safeSetState(() {
                                  _model.uploadedLocalFile2 =
                                      selectedUploadedFiles.first;
                                  _model.uploadedFileUrl2 = downloadUrls.first;
                                });
                              } else {
                                safeSetState(() {});
                                return;
                              }
                            }

                            await currentUserReference!
                                .update(createUserCredentialRecordData(
                              photoUrl: _model.uploadedFileUrl2,
                              displayName: _model.textFieldEditComponentModel1
                                  .textController.text,
                              phoneNumber: _model.textFieldEditComponentModel3
                                  .textController.text,
                              description: _model.textFieldEditComponentModel2
                                  .textController.text,
                            ));
                          }

                          context.safePop();

                          safeSetState(() {});
                        },
                        text: 'Salva',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
