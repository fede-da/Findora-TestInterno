import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'third_quest_comp_model.dart';
export 'third_quest_comp_model.dart';

class ThirdQuestCompWidget extends StatefulWidget {
  const ThirdQuestCompWidget({super.key});

  @override
  State<ThirdQuestCompWidget> createState() => _ThirdQuestCompWidgetState();
}

class _ThirdQuestCompWidgetState extends State<ThirdQuestCompWidget> {
  late ThirdQuestCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThirdQuestCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.7,
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '3/8',
                      textAlign: TextAlign.end,
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelSmallFamily),
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                      child: Text(
                        'Quale dei seguenti settori ti interessa di più?',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Builder(
                builder: (context) {
                  final answersListForSingleQuestion =
                      FFAppConstants.RisposteSurveyUser3.toList();

                  return Wrap(
                    spacing: 10.0,
                    runSpacing: 5.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: List.generate(answersListForSingleQuestion.length,
                        (answersListForSingleQuestionIndex) {
                      final answersListForSingleQuestionItem =
                          answersListForSingleQuestion[
                              answersListForSingleQuestionIndex];
                      return FFButtonWidget(
                        onPressed: () async {
                          _model.currentAnswer =
                              answersListForSingleQuestionItem;
                          _model.updatePage(() {});
                          FFAppState().updateQuestLocalRespASStruct(
                            (e) => e..resp3 = _model.currentAnswer,
                          );
                          safeSetState(() {});
                          FFAppState().thirdQuestionHasAnswered = true;
                          _model.updatePage(() {});
                          _model.selectedIndex =
                              answersListForSingleQuestionIndex;
                          safeSetState(() {});
                        },
                        text: answersListForSingleQuestionItem,
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0x001AB58A),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: (_model.selectedIndex != null) &&
                                        (_model.selectedIndex ==
                                            answersListForSingleQuestionIndex)
                                    ? FlutterFlowTheme.of(context).primary
                                    : Colors.white,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: (_model.selectedIndex != null) &&
                                    (_model.selectedIndex ==
                                        answersListForSingleQuestionIndex)
                                ? FlutterFlowTheme.of(context).primary
                                : Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
