import '/backend/backend.dart';
import '/esplora/widets/announcement_card/announcement_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ricerca_annunci_per_categoria_model.dart';
export 'ricerca_annunci_per_categoria_model.dart';

class RicercaAnnunciPerCategoriaWidget extends StatefulWidget {
  const RicercaAnnunciPerCategoriaWidget({
    super.key,
    required this.categoryToSearch,
  });

  final String? categoryToSearch;

  @override
  State<RicercaAnnunciPerCategoriaWidget> createState() =>
      _RicercaAnnunciPerCategoriaWidgetState();
}

class _RicercaAnnunciPerCategoriaWidgetState
    extends State<RicercaAnnunciPerCategoriaWidget> {
  late RicercaAnnunciPerCategoriaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RicercaAnnunciPerCategoriaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<AdvertisementRecord>>(
      stream: queryAdvertisementRecord(
        queryBuilder: (advertisementRecord) => advertisementRecord.where(
          'subcategory',
          isEqualTo: widget!.categoryToSearch,
        ),
        limit: 30,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitDoubleBounce(
                  color: Color(0xFF1AB58A),
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<AdvertisementRecord>
            ricercaAnnunciPerCategoriaAdvertisementRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              iconTheme:
                  IconThemeData(color: FlutterFlowTheme.of(context).white),
              automaticallyImplyLeading: true,
              title: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
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
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Builder(
                  builder: (context) {
                    final advertisementPerSubcategory =
                        ricercaAnnunciPerCategoriaAdvertisementRecordList
                            .toList();

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: advertisementPerSubcategory.length,
                      itemBuilder: (context, advertisementPerSubcategoryIndex) {
                        final advertisementPerSubcategoryItem =
                            advertisementPerSubcategory[
                                advertisementPerSubcategoryIndex];
                        return AnnouncementCardWidget(
                          key: Key(
                              'Keyxv1_${advertisementPerSubcategoryIndex}_of_${advertisementPerSubcategory.length}'),
                          annuncio: advertisementPerSubcategoryItem,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
