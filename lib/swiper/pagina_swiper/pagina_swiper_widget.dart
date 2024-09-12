import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/swiper/widgets/swipe_card/swipe_card_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pagina_swiper_model.dart';
export 'pagina_swiper_model.dart';

class PaginaSwiperWidget extends StatefulWidget {
  const PaginaSwiperWidget({
    super.key,
    this.category,
  });

  final String? category;

  @override
  State<PaginaSwiperWidget> createState() => _PaginaSwiperWidgetState();
}

class _PaginaSwiperWidgetState extends State<PaginaSwiperWidget> {
  late PaginaSwiperModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginaSwiperModel());

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
          backgroundColor: FlutterFlowTheme.of(context).darkBG,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Icon(
              Icons.arrow_back_sharp,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: StreamBuilder<List<AdvertisementRecord>>(
            stream: queryAdvertisementRecord(
              queryBuilder: (advertisementRecord) => advertisementRecord
                  .where(
                    'creatorUID',
                    isNotEqualTo: currentUserUid,
                  )
                  .where(
                    'category',
                    isEqualTo: widget!.category,
                  ),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitDoubleBounce(
                      color: Color(0xFF1AB58A),
                      size: 50.0,
                    ),
                  ),
                );
              }
              List<AdvertisementRecord> pageViewAdvertisementRecordList =
                  snapshot.data!;

              return Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 1.0,
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: _model.pageViewController ??= PageController(
                          initialPage: max(
                              0,
                              min(0,
                                  pageViewAdvertisementRecordList.length - 1))),
                      scrollDirection: Axis.vertical,
                      itemCount: pageViewAdvertisementRecordList.length,
                      itemBuilder: (context, pageViewIndex) {
                        final pageViewAdvertisementRecord =
                            pageViewAdvertisementRecordList[pageViewIndex];
                        return SwipeCardWidget(
                          key: Key(
                              'Keyvah_${pageViewIndex}_of_${pageViewAdvertisementRecordList.length}'),
                          likeButton: false,
                          advertisement: pageViewAdvertisementRecord,
                        );
                      },
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 0.0, 16.0),
                        child: smooth_page_indicator.SmoothPageIndicator(
                          controller: _model.pageViewController ??=
                              PageController(
                                  initialPage: max(
                                      0,
                                      min(
                                          0,
                                          pageViewAdvertisementRecordList
                                                  .length -
                                              1))),
                          count: pageViewAdvertisementRecordList.length,
                          axisDirection: Axis.vertical,
                          onDotClicked: (i) async {
                            await _model.pageViewController!.animateToPage(
                              i,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                            safeSetState(() {});
                          },
                          effect: smooth_page_indicator.ExpandingDotsEffect(
                            expansionFactor: 3.0,
                            spacing: 8.0,
                            radius: 16.0,
                            dotWidth: 16.0,
                            dotHeight: 0.0,
                            dotColor: FlutterFlowTheme.of(context).accent1,
                            activeDotColor:
                                FlutterFlowTheme.of(context).primary,
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
