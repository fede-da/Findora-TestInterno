import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vertical_spacer_model.dart';
export 'vertical_spacer_model.dart';

class VerticalSpacerWidget extends StatefulWidget {
  const VerticalSpacerWidget({super.key});

  @override
  State<VerticalSpacerWidget> createState() => _VerticalSpacerWidgetState();
}

class _VerticalSpacerWidgetState extends State<VerticalSpacerWidget> {
  late VerticalSpacerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerticalSpacerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.0,
      child: Container(
        width: double.infinity,
        height: 10.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
      ),
    );
  }
}
