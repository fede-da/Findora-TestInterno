import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pulsante_standard_opzioni_visualizzaprofilo_model.dart';
export 'pulsante_standard_opzioni_visualizzaprofilo_model.dart';

class PulsanteStandardOpzioniVisualizzaprofiloWidget extends StatefulWidget {
  const PulsanteStandardOpzioniVisualizzaprofiloWidget({
    super.key,
    String? funzionePulsante,
    required this.iconaLateraleSinistra,
    Color? colore,
  })  : this.funzionePulsante =
            funzionePulsante ?? '[Esempio: Modifica profilo]',
        this.colore = colore ?? const Color(0xFF131619);

  final String funzionePulsante;
  final Widget? iconaLateraleSinistra;
  final Color colore;

  @override
  State<PulsanteStandardOpzioniVisualizzaprofiloWidget> createState() =>
      _PulsanteStandardOpzioniVisualizzaprofiloWidgetState();
}

class _PulsanteStandardOpzioniVisualizzaprofiloWidgetState
    extends State<PulsanteStandardOpzioniVisualizzaprofiloWidget> {
  late PulsanteStandardOpzioniVisualizzaprofiloModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => PulsanteStandardOpzioniVisualizzaprofiloModel());

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
      width: MediaQuery.sizeOf(context).width * 0.85,
      height: MediaQuery.sizeOf(context).height * 0.07,
      decoration: BoxDecoration(
        color: widget!.colore,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget!.iconaLateraleSinistra!,
            Text(
              widget!.funzionePulsante,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
