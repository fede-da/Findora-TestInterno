import '/auth/firebase_auth/auth_util.dart';
import '/edit_profile/widgets/pulsante_standard_opzioni_visualizzaprofilo/pulsante_standard_opzioni_visualizzaprofilo_widget.dart';
import '/edit_profile/widgets/settings_display_name_email/settings_display_name_email_widget.dart';
import '/edit_profile/widgets/vertical_spacer/vertical_spacer_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pagina_edit_profilo_model.dart';
export 'pagina_edit_profilo_model.dart';

class PaginaEditProfiloWidget extends StatefulWidget {
  const PaginaEditProfiloWidget({
    super.key,
    int? paddingLaterale,
  }) : this.paddingLaterale = paddingLaterale ?? 10;

  final int paddingLaterale;

  @override
  State<PaginaEditProfiloWidget> createState() =>
      _PaginaEditProfiloWidgetState();
}

class _PaginaEditProfiloWidgetState extends State<PaginaEditProfiloWidget> {
  late PaginaEditProfiloModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginaEditProfiloModel());

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
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.navigate_before_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('personalProfile');
            },
          ),
          title: Text(
            'Impostazioni',
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: wrapWithModel(
                    model: _model.settingsDisplayNameEmailModel,
                    updateCallback: () => safeSetState(() {}),
                    child: SettingsDisplayNameEmailWidget(),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Account',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                      ],
                    ),
                    wrapWithModel(
                      model: _model.verticalSpacerModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: VerticalSpacerWidget(),
                    ),
                    if (valueOrDefault<bool>(
                            currentUserDocument?.hasAnsweredQuestionnaireVendor,
                            false)
                        ? false
                        : true)
                      AuthUserStreamWidget(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('QuestionnaireVendor');
                          },
                          child: wrapWithModel(
                            model: _model
                                .pulsanteStandardOpzioniVisualizzaprofiloModel1,
                            updateCallback: () => safeSetState(() {}),
                            child:
                                PulsanteStandardOpzioniVisualizzaprofiloWidget(
                              funzionePulsante: 'Diventa un venditore',
                              iconaLateraleSinistra: Icon(
                                Icons.gpp_good_outlined,
                                color: FlutterFlowTheme.of(context).white,
                              ),
                              colore: FlutterFlowTheme.of(context).success,
                            ),
                          ),
                        ),
                      ),
                    wrapWithModel(
                      model: _model.verticalSpacerModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: VerticalSpacerWidget(),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('modificaDatiProfilo');
                      },
                      child: wrapWithModel(
                        model: _model
                            .pulsanteStandardOpzioniVisualizzaprofiloModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: PulsanteStandardOpzioniVisualizzaprofiloWidget(
                          funzionePulsante: 'Modifica Profilo',
                          iconaLateraleSinistra: Icon(
                            Icons.manage_accounts_outlined,
                            color: FlutterFlowTheme.of(context).white,
                          ),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.verticalSpacerModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: VerticalSpacerWidget(),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'General',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                      ],
                    ),
                    wrapWithModel(
                      model: _model.verticalSpacerModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: VerticalSpacerWidget(),
                    ),
                    wrapWithModel(
                      model: _model.verticalSpacerModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: VerticalSpacerWidget(),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('SupportoImpostazioni');
                      },
                      child: wrapWithModel(
                        model: _model
                            .pulsanteStandardOpzioniVisualizzaprofiloModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: PulsanteStandardOpzioniVisualizzaprofiloWidget(
                          funzionePulsante: 'Supporto',
                          iconaLateraleSinistra: FaIcon(
                            FontAwesomeIcons.questionCircle,
                            color: FlutterFlowTheme.of(context).white,
                          ),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.verticalSpacerModel6,
                      updateCallback: () => safeSetState(() {}),
                      child: VerticalSpacerWidget(),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('terminiDiServizioPage');
                      },
                      child: wrapWithModel(
                        model: _model
                            .pulsanteStandardOpzioniVisualizzaprofiloModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: PulsanteStandardOpzioniVisualizzaprofiloWidget(
                          funzionePulsante: 'Termini di Servizio',
                          iconaLateraleSinistra: Icon(
                            Icons.privacy_tip_sharp,
                            color: FlutterFlowTheme.of(context).white,
                          ),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.verticalSpacerModel7,
                      updateCallback: () => safeSetState(() {}),
                      child: VerticalSpacerWidget(),
                    ),
                    if (!valueOrDefault<bool>(
                        currentUserDocument?.hasAnsweredQuestionnaire, false))
                      AuthUserStreamWidget(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('QuestionnaireUser');
                          },
                          child: wrapWithModel(
                            model: _model
                                .pulsanteStandardOpzioniVisualizzaprofiloModel5,
                            updateCallback: () => safeSetState(() {}),
                            child:
                                PulsanteStandardOpzioniVisualizzaprofiloWidget(
                              funzionePulsante: 'Compila questionario',
                              iconaLateraleSinistra: Icon(
                                Icons.question_mark,
                                color: FlutterFlowTheme.of(context).white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    wrapWithModel(
                      model: _model.verticalSpacerModel8,
                      updateCallback: () => safeSetState(() {}),
                      child: VerticalSpacerWidget(),
                    ),
                    if (!valueOrDefault<bool>(
                        currentUserDocument?.hasAnsweredQuestionnaire, false))
                      AuthUserStreamWidget(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            context.goNamedAuth('Onboarding0', context.mounted);
                          },
                          child: wrapWithModel(
                            model: _model
                                .pulsanteStandardOpzioniVisualizzaprofiloModel6,
                            updateCallback: () => safeSetState(() {}),
                            child:
                                PulsanteStandardOpzioniVisualizzaprofiloWidget(
                              funzionePulsante: 'Esci',
                              iconaLateraleSinistra: Icon(
                                Icons.logout_sharp,
                                color: FlutterFlowTheme.of(context).white,
                              ),
                              colore: Color(0xFF5E1420),
                            ),
                          ),
                        ),
                      ),
                    wrapWithModel(
                      model: _model.verticalSpacerModel9,
                      updateCallback: () => safeSetState(() {}),
                      child: VerticalSpacerWidget(),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
          ),
        ),
      ),
    );
  }
}
