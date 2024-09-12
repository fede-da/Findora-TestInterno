import '/esplora/widets/category_card/category_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'esplora_categorie_model.dart';
export 'esplora_categorie_model.dart';

class EsploraCategorieWidget extends StatefulWidget {
  const EsploraCategorieWidget({super.key});

  @override
  State<EsploraCategorieWidget> createState() => _EsploraCategorieWidgetState();
}

class _EsploraCategorieWidgetState extends State<EsploraCategorieWidget>
    with TickerProviderStateMixin {
  late EsploraCategorieModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EsploraCategorieModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 1,
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
        body: Column(
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
                      labelPadding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      labelStyle: FlutterFlowTheme.of(context)
                          .titleMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleMediumFamily),
                          ),
                      unselectedLabelStyle: TextStyle(),
                      indicatorColor: FlutterFlowTheme.of(context).primary,
                      tabs: [
                        Tab(
                          text: 'Categorie',
                        ),
                      ],
                      controller: _model.tabBarController,
                      onTap: (i) async {
                        [() async {}][i]();
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
                              onTap: () async {},
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
                              onTap: () async {},
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
                              onTap: () async {},
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
                              onTap: () async {},
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
                              onTap: () async {},
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
                              onTap: () async {},
                              child: wrapWithModel(
                                model: _model.categoryCardModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: CategoryCardWidget(
                                  title: 'Tecnologia',
                                  subTitle: 'Programmatore web, mantimento app',
                                  icon: Icon(
                                    Icons.keyboard_rounded,
                                    color: FlutterFlowTheme.of(context).white,
                                    size: 32.0,
                                  ),
                                  subCategoriesList: FFAppConstants.Tecnologia,
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {},
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
                              onTap: () async {},
                              child: wrapWithModel(
                                model: _model.categoryCardModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: CategoryCardWidget(
                                  title: 'Servizi per la casa',
                                  subTitle:
                                      'Babysitting, Trasloschi, Manutentezione',
                                  icon: Icon(
                                    Icons.house_rounded,
                                    color: FlutterFlowTheme.of(context).white,
                                    size: 32.0,
                                  ),
                                  subCategoriesList: FFAppConstants.ServiziCasa,
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {},
                              child: wrapWithModel(
                                model: _model.categoryCardModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: CategoryCardWidget(
                                  title: 'Fotografia',
                                  subTitle: 'Amatoriale, Professionale, Drone',
                                  icon: Icon(
                                    Icons.camera_enhance,
                                    color: FlutterFlowTheme.of(context).white,
                                    size: 32.0,
                                  ),
                                  subCategoriesList: FFAppConstants.Fotografia,
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {},
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
                                  subCategoriesList: FFAppConstants.ModaFashion,
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
    );
  }
}
