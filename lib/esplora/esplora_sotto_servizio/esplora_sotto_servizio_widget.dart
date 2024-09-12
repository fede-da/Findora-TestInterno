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
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'esplora_sotto_servizio_model.dart';
export 'esplora_sotto_servizio_model.dart';

class EsploraSottoServizioWidget extends StatefulWidget {
  const EsploraSottoServizioWidget({
    super.key,
    required this.serviceSottoCategorie,
    this.annunci,
    required this.currentCategory,
  });

  final List<String>? serviceSottoCategorie;
  final AdvertisementRecord? annunci;
  final String? currentCategory;

  @override
  State<EsploraSottoServizioWidget> createState() =>
      _EsploraSottoServizioWidgetState();
}

class _EsploraSottoServizioWidgetState
    extends State<EsploraSottoServizioWidget> {
  late EsploraSottoServizioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EsploraSottoServizioModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget!.currentCategory,
                'Categoria sconosciuta',
              ),
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).headlineMediumFamily),
                  ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 20.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.search_sharp,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (true == false)
                  Container(
                    width: double.infinity,
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(
                        16.0,
                        0,
                        16.0,
                        0,
                      ),
                      scrollDirection: Axis.horizontal,
                      children: [
                        wrapWithModel(
                          model: _model.serviceCardModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: ServiceCardWidget(
                            titleCard: 'Servizio 1',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.serviceCardModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: ServiceCardWidget(
                            titleCard: 'Servizio 2',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.serviceCardModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: ServiceCardWidget(
                            titleCard: 'Servizio 3',
                          ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                  ),
                Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 8.0),
                              child: FlutterFlowChoiceChips(
                                options: [
                                  ChipData('Stile'),
                                  ChipData('Servizi inclusi'),
                                  ChipData('Livello del Venditore')
                                ],
                                onChanged: (val) => safeSetState(() =>
                                    _model.choiceChipsValue = val?.firstOrNull),
                                selectedChipStyle: ChipStyle(
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                  iconColor: FlutterFlowTheme.of(context).info,
                                  iconSize: 18.0,
                                  elevation: 2.0,
                                  borderWidth: 1.0,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                unselectedChipStyle: ChipStyle(
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  iconSize: 18.0,
                                  elevation: 0.0,
                                  borderColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderWidth: 1.0,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                chipSpacing: 8.0,
                                rowSpacing: 12.0,
                                multiselect: false,
                                initialized: _model.choiceChipsValue != null,
                                alignment: WrapAlignment.start,
                                controller:
                                    _model.choiceChipsValueController ??=
                                        FormFieldController<List<String>>(
                                  ['Stile'],
                                ),
                                wrapped: true,
                              ),
                            ),
                          ),
                        ]
                            .addToStart(SizedBox(width: 16.0))
                            .addToEnd(SizedBox(width: 16.0)),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 8.0,
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.625,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: StreamBuilder<List<AdvertisementRecord>>(
                    stream: queryAdvertisementRecord(
                      queryBuilder: (advertisementRecord) => advertisementRecord
                          .where(
                            'category',
                            isEqualTo: widget!.currentCategory,
                          )
                          .where(
                            'creatorUID',
                            isNotEqualTo: currentUserUid,
                          ),
                      limit: 20,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: SpinKitDoubleBounce(
                              color: Color(0xFF1AB58A),
                              size: 50.0,
                            ),
                          ),
                        );
                      }
                      List<AdvertisementRecord>
                          listViewAdvertisementRecordList = snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          8.0,
                          0,
                          44.0,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewAdvertisementRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewAdvertisementRecord =
                              listViewAdvertisementRecordList[listViewIndex];
                          return AnnouncementCardWidget(
                            key: Key(
                                'Keyu6b_${listViewIndex}_of_${listViewAdvertisementRecordList.length}'),
                            annuncio: listViewAdvertisementRecord,
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
