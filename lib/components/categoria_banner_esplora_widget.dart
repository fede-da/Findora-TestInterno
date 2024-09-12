import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'categoria_banner_esplora_model.dart';
export 'categoria_banner_esplora_model.dart';

class CategoriaBannerEsploraWidget extends StatefulWidget {
  const CategoriaBannerEsploraWidget({
    super.key,
    this.categoryName,
    this.categoryPicture,
  });

  final String? categoryName;
  final String? categoryPicture;

  @override
  State<CategoriaBannerEsploraWidget> createState() =>
      _CategoriaBannerEsploraWidgetState();
}

class _CategoriaBannerEsploraWidgetState
    extends State<CategoriaBannerEsploraWidget> {
  late CategoriaBannerEsploraModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriaBannerEsploraModel());

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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.8,
          height: MediaQuery.sizeOf(context).height * 0.08,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).lineColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                valueOrDefault<String>(
                  widget!.categoryName,
                  'Loading...',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ]
                .divide(SizedBox(width: 10.0))
                .addToStart(SizedBox(width: 10.0))
                .addToEnd(SizedBox(width: 10.0)),
          ),
        ),
      ],
    );
  }
}
