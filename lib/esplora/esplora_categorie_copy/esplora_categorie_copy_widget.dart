import '/esplora/widets/category_card/category_card_widget.dart';
import '/esplora/widets/interest_card/interest_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'esplora_categorie_copy_model.dart';
export 'esplora_categorie_copy_model.dart';

class EsploraCategorieCopyWidget extends StatefulWidget {
  const EsploraCategorieCopyWidget({super.key});

  @override
  State<EsploraCategorieCopyWidget> createState() =>
      _EsploraCategorieCopyWidgetState();
}

class _EsploraCategorieCopyWidgetState extends State<EsploraCategorieCopyWidget>
    with TickerProviderStateMixin {
  late EsploraCategorieCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EsploraCategorieCopyModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).primary,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelPadding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                        unselectedLabelStyle: TextStyle(),
                        indicatorColor: FlutterFlowTheme.of(context).primary,
                        tabs: [
                          Tab(
                            text: 'Categorie',
                          ),
                          Tab(
                            text: 'Interessi',
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'EsploraServizi',
                                    queryParameters: {
                                      'categorie': serializeParam(
                                        FFAppConstants.Grafica,
                                        ParamType.String,
                                        isList: true,
                                      ),
                                      'title': serializeParam(
                                        'Grafica e Design',
                                        ParamType.String,
                                      ),
                                      'subTitle': serializeParam(
                                        'Logo & Brand identity, Gaming',
                                        ParamType.String,
                                      ),
                                      'icon': serializeParam(
                                        'FontAwesome.pencilRuler',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryCardModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryCardWidget(
                                    title: 'Grafica e Design',
                                    subTitle:
                                        'Logo e Brand identity, Game Design',
                                    icon: FaIcon(
                                      FontAwesomeIcons.pencilRuler,
                                      color: FlutterFlowTheme.of(context).white,
                                      size: 32.0,
                                    ),
                                    subCategoriesList: FFAppConstants.Grafica,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'EsploraServizi',
                                    queryParameters: {
                                      'categorie': serializeParam(
                                        FFAppConstants.DigitalMarketing,
                                        ParamType.String,
                                        isList: true,
                                      ),
                                      'title': serializeParam(
                                        'Digital Marketing',
                                        ParamType.String,
                                      ),
                                      'subTitle': serializeParam(
                                        'Social Media Marketing, Search Engine Optimization (SEO)',
                                        ParamType.String,
                                      ),
                                      'icon': serializeParam(
                                        'Icons.shopping_cart_rounded',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryCardModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryCardWidget(
                                    title: 'Digital Marketing',
                                    subTitle: 'Social Media Marketing',
                                    icon: Icon(
                                      Icons.shopping_cart_rounded,
                                      color: FlutterFlowTheme.of(context).white,
                                      size: 32.0,
                                    ),
                                    otherSubTitle:
                                        'Search Engine Optimization (SEO)',
                                    subCategoriesList:
                                        FFAppConstants.DigitalMarketing,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'EsploraServizi',
                                    queryParameters: {
                                      'categorie': serializeParam(
                                        FFAppConstants.ScritturaTraduzione,
                                        ParamType.String,
                                        isList: true,
                                      ),
                                      'title': serializeParam(
                                        'Scrittura e Traduzioni',
                                        ParamType.String,
                                      ),
                                      'subTitle': serializeParam(
                                        'Traduzioni testi, scrittura documenti',
                                        ParamType.String,
                                      ),
                                      'icon': serializeParam(
                                        'Icons.translate_rounded',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryCardModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryCardWidget(
                                    title: 'Scrittura e Traduzioni',
                                    subTitle:
                                        'Traduzioni testi, scrittura documenti',
                                    icon: Icon(
                                      Icons.translate_rounded,
                                      color: FlutterFlowTheme.of(context).white,
                                      size: 32.0,
                                    ),
                                    subCategoriesList:
                                        FFAppConstants.ScritturaTraduzione,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'EsploraServizi',
                                    queryParameters: {
                                      'categorie': serializeParam(
                                        FFAppConstants.VideoAnimazioni,
                                        ParamType.String,
                                        isList: true,
                                      ),
                                      'title': serializeParam(
                                        'Video ed Animazioni',
                                        ParamType.String,
                                      ),
                                      'subTitle': serializeParam(
                                        'Video Editing, Video Ads e commerciali',
                                        ParamType.String,
                                      ),
                                      'icon': serializeParam(
                                        'Icons.video_collection_rounded',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryCardModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryCardWidget(
                                    title: 'Video ed Animazioni',
                                    subTitle:
                                        'Video Editing, Video Ads e commerciali',
                                    icon: Icon(
                                      Icons.video_collection_rounded,
                                      color: FlutterFlowTheme.of(context).white,
                                      size: 32.0,
                                    ),
                                    subCategoriesList:
                                        FFAppConstants.VideoAnimazioni,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'EsploraServizi',
                                    queryParameters: {
                                      'categorie': serializeParam(
                                        FFAppConstants.Musica,
                                        ParamType.String,
                                        isList: true,
                                      ),
                                      'title': serializeParam(
                                        'Musica ed Audio',
                                        ParamType.String,
                                      ),
                                      'subTitle': serializeParam(
                                        'Produzione musica, cantanti e musicisti',
                                        ParamType.String,
                                      ),
                                      'icon': serializeParam(
                                        'Icons.music_note_rounded',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryCardModel5,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryCardWidget(
                                    title: 'Musica ed Audio',
                                    subTitle:
                                        'Produzione musica, cantanti e musicisti',
                                    icon: Icon(
                                      Icons.music_note_rounded,
                                      color: FlutterFlowTheme.of(context).white,
                                      size: 32.0,
                                    ),
                                    subCategoriesList: FFAppConstants.Musica,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'EsploraServizi',
                                    queryParameters: {
                                      'categorie': serializeParam(
                                        FFAppConstants.Tecnologia,
                                        ParamType.String,
                                        isList: true,
                                      ),
                                      'title': serializeParam(
                                        'Tecnologia',
                                        ParamType.String,
                                      ),
                                      'subTitle': serializeParam(
                                        'Programmatore web, mantimento app',
                                        ParamType.String,
                                      ),
                                      'icon': serializeParam(
                                        '\\\\\\+',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryCardModel6,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryCardWidget(
                                    title: 'Tecnologia',
                                    subTitle:
                                        'Programmatore web, mantimento app',
                                    icon: Icon(
                                      Icons.keyboard_rounded,
                                      color: FlutterFlowTheme.of(context).white,
                                      size: 32.0,
                                    ),
                                    subCategoriesList:
                                        FFAppConstants.Tecnologia,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'EsploraServizi',
                                    queryParameters: {
                                      'categorie': serializeParam(
                                        FFAppConstants.Business,
                                        ParamType.String,
                                        isList: true,
                                      ),
                                      'title': serializeParam(
                                        'Business',
                                        ParamType.String,
                                      ),
                                      'subTitle': serializeParam(
                                        'Consulenza, Coaching, Mentoring',
                                        ParamType.String,
                                      ),
                                      'icon': serializeParam(
                                        'Icons.add_chart_rounded',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryCardModel7,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryCardWidget(
                                    title: 'Business',
                                    subTitle: 'Consulenza, Coaching, Mentoring',
                                    icon: Icon(
                                      Icons.add_chart_rounded,
                                      color: FlutterFlowTheme.of(context).white,
                                      size: 32.0,
                                    ),
                                    subCategoriesList: FFAppConstants.Business,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'EsploraServizi',
                                    queryParameters: {
                                      'categorie': serializeParam(
                                        FFAppConstants.ServiziCasa,
                                        ParamType.String,
                                        isList: true,
                                      ),
                                      'title': serializeParam(
                                        'Servizi per la cosa',
                                        ParamType.String,
                                      ),
                                      'subTitle': serializeParam(
                                        'Babysitting, Trasloschi, Manutentezione',
                                        ParamType.String,
                                      ),
                                      'icon': serializeParam(
                                        'Icons.house_rounded',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryCardModel8,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryCardWidget(
                                    title: 'Servizi per la cosa',
                                    subTitle:
                                        'Babysitting, Trasloschi, Manutentezione',
                                    icon: Icon(
                                      Icons.house_rounded,
                                      color: FlutterFlowTheme.of(context).white,
                                      size: 32.0,
                                    ),
                                    subCategoriesList:
                                        FFAppConstants.ServiziCasa,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'EsploraServizi',
                                    queryParameters: {
                                      'categorie': serializeParam(
                                        FFAppConstants.Fotografia,
                                        ParamType.String,
                                        isList: true,
                                      ),
                                      'title': serializeParam(
                                        'Fotografia',
                                        ParamType.String,
                                      ),
                                      'subTitle': serializeParam(
                                        'Amatoriale, Professionale, Drone',
                                        ParamType.String,
                                      ),
                                      'icon': serializeParam(
                                        'Icons.camera_enhance',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryCardModel9,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryCardWidget(
                                    title: 'Fotografia',
                                    subTitle:
                                        'Amatoriale, Professionale, Drone',
                                    icon: Icon(
                                      Icons.camera_enhance,
                                      color: FlutterFlowTheme.of(context).white,
                                      size: 32.0,
                                    ),
                                    subCategoriesList:
                                        FFAppConstants.Fotografia,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'EsploraServizi',
                                    queryParameters: {
                                      'categorie': serializeParam(
                                        FFAppConstants.ModaFashion,
                                        ParamType.String,
                                        isList: true,
                                      ),
                                      'title': serializeParam(
                                        'Moda e Fashion',
                                        ParamType.String,
                                      ),
                                      'subTitle': serializeParam(
                                        'Sartoria, Trucco, Acconciature',
                                        ParamType.String,
                                      ),
                                      'icon': serializeParam(
                                        'Icons.content_cut_rounded',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryCardModel10,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryCardWidget(
                                    title: 'Moda e Fashion',
                                    subTitle: 'Sartoria, Trucco, Acconciature',
                                    icon: Icon(
                                      Icons.content_cut_rounded,
                                      color: FlutterFlowTheme.of(context).white,
                                      size: 32.0,
                                    ),
                                    subCategoriesList:
                                        FFAppConstants.ModaFashion,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: [
                              wrapWithModel(
                                model: _model.interestCardModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: InterestCardWidget(
                                  title: 'Creazione di contenuti social',
                                  icon: Icon(
                                    Icons.supervisor_account_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 32.0,
                                  ),
                                ),
                              ),
                              Container(
                                height: 100.0,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.interestCardModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InterestCardWidget(
                                    title: 'Traduci un testo',
                                    icon: Icon(
                                      Icons.translate_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 32.0,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100.0,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.interestCardModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InterestCardWidget(
                                    title: 'Modifica foto ed immagini',
                                    icon: Icon(
                                      Icons.photo_library_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 32.0,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100.0,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.interestCardModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InterestCardWidget(
                                    title: 'Modifica video',
                                    icon: Icon(
                                      Icons.video_collection_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 32.0,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100.0,
                                child: wrapWithModel(
                                  model: _model.interestCardModel5,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InterestCardWidget(
                                    title: 'Crea un sito web',
                                    icon: Icon(
                                      Icons.web_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 32.0,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100.0,
                                child: wrapWithModel(
                                  model: _model.interestCardModel6,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InterestCardWidget(
                                    title: 'Ripetioni',
                                    icon: Icon(
                                      Icons.menu_book_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 32.0,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100.0,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.interestCardModel7,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InterestCardWidget(
                                    title: 'Pulizia casa',
                                    icon: Icon(
                                      Icons.clean_hands_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 32.0,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100.0,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.interestCardModel8,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InterestCardWidget(
                                    title: 'Scrivi una canzone',
                                    icon: Icon(
                                      Icons.mic_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 32.0,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100.0,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.interestCardModel9,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InterestCardWidget(
                                    title: 'Rider',
                                    icon: Icon(
                                      Icons.motorcycle_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 32.0,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100.0,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.interestCardModel10,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InterestCardWidget(
                                    title: 'Gioielli e bigiotteria',
                                    icon: Icon(
                                      Icons.diamond_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 32.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
