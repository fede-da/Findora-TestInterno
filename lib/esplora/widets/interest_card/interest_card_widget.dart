import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'interest_card_model.dart';
export 'interest_card_model.dart';

class InterestCardWidget extends StatefulWidget {
  const InterestCardWidget({
    super.key,
    this.title,
    this.icon,
  });

  final String? title;
  final Widget? icon;

  @override
  State<InterestCardWidget> createState() => _InterestCardWidgetState();
}

class _InterestCardWidgetState extends State<InterestCardWidget> {
  late InterestCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InterestCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            _model.selected = !_model.selected;
            _model.updatePage(() {});
          },
          child: Container(
            width: double.infinity,
            height: 100.0,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                _model.selected ? _model.defaultColor : _model.selectColor,
                FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                    child: widget!.icon!,
                  ),
                  Text(
                    widget!.title!,
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleMediumFamily,
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleMediumFamily),
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
