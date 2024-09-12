import '/components/categoria_banner_esplora_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sottocategoria_selezionata_model.dart';
export 'sottocategoria_selezionata_model.dart';

class SottocategoriaSelezionataWidget extends StatefulWidget {
  const SottocategoriaSelezionataWidget({
    super.key,
    required this.subcategoryList,
  });

  final List<String>? subcategoryList;

  @override
  State<SottocategoriaSelezionataWidget> createState() =>
      _SottocategoriaSelezionataWidgetState();
}

class _SottocategoriaSelezionataWidgetState
    extends State<SottocategoriaSelezionataWidget> {
  late SottocategoriaSelezionataModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SottocategoriaSelezionataModel());

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
          iconTheme: IconThemeData(color: FlutterFlowTheme.of(context).white),
          automaticallyImplyLeading: true,
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              final subcategoryItems = widget!.subcategoryList!.toList();

              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: subcategoryItems.length,
                itemBuilder: (context, subcategoryItemsIndex) {
                  final subcategoryItemsItem =
                      subcategoryItems[subcategoryItemsIndex];
                  return Container(
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    decoration: BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'RicercaAnnunciPerCategoria',
                          queryParameters: {
                            'categoryToSearch': serializeParam(
                              subcategoryItemsItem,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: CategoriaBannerEsploraWidget(
                        key: Key(
                            'Keyaaa_${subcategoryItemsIndex}_of_${subcategoryItems.length}'),
                        categoryName: subcategoryItemsItem,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
