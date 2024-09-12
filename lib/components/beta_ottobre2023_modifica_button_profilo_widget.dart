import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'beta_ottobre2023_modifica_button_profilo_model.dart';
export 'beta_ottobre2023_modifica_button_profilo_model.dart';

class BetaOttobre2023ModificaButtonProfiloWidget extends StatefulWidget {
  const BetaOttobre2023ModificaButtonProfiloWidget({
    super.key,
    String? nomeProprieta,
  }) : this.nomeProprieta = nomeProprieta ?? 'null';

  final String nomeProprieta;

  @override
  State<BetaOttobre2023ModificaButtonProfiloWidget> createState() =>
      _BetaOttobre2023ModificaButtonProfiloWidgetState();
}

class _BetaOttobre2023ModificaButtonProfiloWidgetState
    extends State<BetaOttobre2023ModificaButtonProfiloWidget> {
  late BetaOttobre2023ModificaButtonProfiloModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => BetaOttobre2023ModificaButtonProfiloModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Opacity(
          opacity: 0.0,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.05,
            height: 1.0,
            decoration: BoxDecoration(
              color: Color(0x00131619),
            ),
          ),
        ),
        Container(
          width: MediaQuery.sizeOf(context).width * 0.8,
          height: MediaQuery.sizeOf(context).height * 0.05,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(100.0),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget!.nomeProprieta,
                  style: TextStyle(
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 16.0,
                  ),
                ),
                Icon(
                  Icons.settings_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 20.0,
                ),
              ],
            ),
          ),
        ),
        Opacity(
          opacity: 0.0,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.05,
            height: 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
        ),
      ],
    );
  }
}
