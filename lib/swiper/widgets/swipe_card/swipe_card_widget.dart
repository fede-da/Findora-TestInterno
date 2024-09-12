import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'swipe_card_model.dart';
export 'swipe_card_model.dart';

class SwipeCardWidget extends StatefulWidget {
  const SwipeCardWidget({
    super.key,
    this.likeButton,
    this.advertisement,
  });

  final bool? likeButton;
  final AdvertisementRecord? advertisement;

  @override
  State<SwipeCardWidget> createState() => _SwipeCardWidgetState();
}

class _SwipeCardWidgetState extends State<SwipeCardWidget> {
  late SwipeCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwipeCardModel());

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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    widget!.advertisement!.image,
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 50.0,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget!.advertisement?.createdBy,
                        'Utente Sconosciuto',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 48.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryText,
                          borderRadius: BorderRadius.circular(16.0),
                          shape: BoxShape.rectangle,
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '1',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  2.0, 0.0, 2.0, 0.0),
                              child: Text(
                                '/',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                            Text(
                              '1',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.95),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(17.0, 0.0, 16.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'PaginaAnnuncio',
                      queryParameters: {
                        'annuncio': serializeParam(
                          widget!.advertisement,
                          ParamType.Document,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        'annuncio': widget!.advertisement,
                      },
                    );
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          FlutterFlowTheme.of(context).secondary,
                          FlutterFlowTheme.of(context).primary
                        ],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(1.0, 0.0),
                        end: AlignmentDirectional(-1.0, 0),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 4.0, 0.0),
                          child: Text(
                            'A partire da €',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget!.advertisement?.price?.toString(),
                            '100',
                          ),
                          textAlign: TextAlign.justify,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                1.0, 0.0, 0.0, 0.0),
                            child: Icon(
                              Icons.arrow_right,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1.0, 0.74),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.25,
                height: 150.0,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'otherProfile',
                          queryParameters: {
                            'idUtente': serializeParam(
                              widget!.advertisement?.creatorUID,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(64.0),
                        child: Image.network(
                          widget!.advertisement!.profilePictureVendor,
                          width: 48.0,
                          height: 48.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Builder(
                      builder: (context) => Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await Share.share(
                              widget!.advertisement!.reference.id,
                              sharePositionOrigin:
                                  getWidgetBoundingBox(context),
                            );
                          },
                          child: Icon(
                            Icons.share_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 48.0,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onLongPress: () async {
                        var _shouldSetState = false;
                        _model.addToChatUsers(
                            widget!.advertisement!.creatorUserReference!);
                        _model.addToChatUsers(currentUserReference!);
                        _model.allUserChatsCopy2 = await queryChatsRecordOnce(
                          queryBuilder: (chatsRecord) =>
                              chatsRecord.where(Filter.or(
                            Filter(
                              'user_a',
                              isEqualTo: currentUserReference,
                            ),
                            Filter(
                              'user_b',
                              isEqualTo: currentUserReference,
                            ),
                          )),
                        );
                        _shouldSetState = true;
                        _model.allChats = _model.allUserChatsCopy2!
                            .toList()
                            .cast<ChatsRecord>();
                        while (_model.allChats.length > 0) {
                          if (((_model.allChats.first.userA ==
                                          currentUserReference) &&
                                      (_model.allChats.first.userB ==
                                          _model.selectedUser)) ||
                                  ((_model.allChats.first.userA ==
                                          _model.selectedUser) &&
                                      (_model.allChats.first.userB ==
                                          currentUserReference))
                              ? true
                              : false) {
                            context.pushNamed(
                              'chat_detail',
                              queryParameters: {
                                'chatRef': serializeParam(
                                  _model.allChats.first,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'chatRef': _model.allChats.first,
                              },
                            );

                            _model.chatUsers = [];
                            _model.allChats = [];
                            if (_shouldSetState) safeSetState(() {});
                            return;
                          } else {
                            _model.removeAtIndexFromAllChats(0);
                          }
                        }
                        // newChat

                        var chatsRecordReference = ChatsRecord.collection.doc();
                        await chatsRecordReference.set({
                          ...createChatsRecordData(
                            userA: currentUserReference,
                            userB: widget!.advertisement?.creatorUserReference,
                            lastMessage: '',
                            lastMessageTime: getCurrentTimestamp,
                            groupChatId:
                                random_data.randomInteger(1000000, 9999999),
                          ),
                          ...mapToFirestore(
                            {
                              'users': _model.chatUsers,
                            },
                          ),
                        });
                        _model.newChatThread2 =
                            ChatsRecord.getDocumentFromData({
                          ...createChatsRecordData(
                            userA: currentUserReference,
                            userB: widget!.advertisement?.creatorUserReference,
                            lastMessage: '',
                            lastMessageTime: getCurrentTimestamp,
                            groupChatId:
                                random_data.randomInteger(1000000, 9999999),
                          ),
                          ...mapToFirestore(
                            {
                              'users': _model.chatUsers,
                            },
                          ),
                        }, chatsRecordReference);
                        _shouldSetState = true;
                        if (Navigator.of(context).canPop()) {
                          context.pop();
                        }
                        context.pushNamed(
                          'chat_detail',
                          queryParameters: {
                            'chatRef': serializeParam(
                              _model.newChatThread,
                              ParamType.Document,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            'chatRef': _model.newChatThread,
                          },
                        );

                        _model.chatUsers = [];
                        _model.selectedUser = null;
                        if (_shouldSetState) safeSetState(() {});
                      },
                      child: FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 48.0,
                        icon: Icon(
                          Icons.chat_bubble_outline_rounded,
                          color: _model.color,
                          size: 32.0,
                        ),
                        onPressed: () async {
                          var _shouldSetState = false;
                          _model.addToChatUsers(
                              widget!.advertisement!.creatorUserReference!);
                          _model.addToChatUsers(currentUserReference!);
                          _model.selectedUser =
                              widget!.advertisement?.creatorUserReference;
                          safeSetState(() {});
                          _model.allUserChats = await queryChatsRecordOnce(
                            queryBuilder: (chatsRecord) =>
                                chatsRecord.where(Filter.or(
                              Filter(
                                'user_a',
                                isEqualTo: currentUserReference,
                              ),
                              Filter(
                                'user_b',
                                isEqualTo: currentUserReference,
                              ),
                            )),
                          );
                          _shouldSetState = true;
                          _model.allChats =
                              _model.allUserChats!.toList().cast<ChatsRecord>();
                          while (_model.allChats.length > 0) {
                            if (_model.allChats.first.users
                                    .contains(currentUserReference) ||
                                _model.allChats.first.users
                                    .contains(_model.selectedUser)) {
                              context.pushNamed(
                                'chat_detail',
                                queryParameters: {
                                  'chatRef': serializeParam(
                                    _model.allChats.first,
                                    ParamType.Document,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  'chatRef': _model.allChats.first,
                                },
                              );

                              _model.chatUsers = [];
                              _model.allChats = [];
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            } else {
                              _model.removeAtIndexFromAllChats(0);
                            }
                          }
                          // newChat

                          var chatsRecordReference =
                              ChatsRecord.collection.doc();
                          await chatsRecordReference.set({
                            ...createChatsRecordData(
                              userA: currentUserReference,
                              userB:
                                  widget!.advertisement?.creatorUserReference,
                              lastMessage: '',
                              lastMessageTime: getCurrentTimestamp,
                              groupChatId:
                                  random_data.randomInteger(1000000, 9999999),
                            ),
                            ...mapToFirestore(
                              {
                                'users': _model.chatUsers,
                              },
                            ),
                          });
                          _model.newChatThread =
                              ChatsRecord.getDocumentFromData({
                            ...createChatsRecordData(
                              userA: currentUserReference,
                              userB:
                                  widget!.advertisement?.creatorUserReference,
                              lastMessage: '',
                              lastMessageTime: getCurrentTimestamp,
                              groupChatId:
                                  random_data.randomInteger(1000000, 9999999),
                            ),
                            ...mapToFirestore(
                              {
                                'users': _model.chatUsers,
                              },
                            ),
                          }, chatsRecordReference);
                          _shouldSetState = true;
                          if (Navigator.of(context).canPop()) {
                            context.pop();
                          }
                          context.pushNamed(
                            'chat_detail',
                            queryParameters: {
                              'chatRef': serializeParam(
                                _model.newChatThread,
                                ParamType.Document,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'chatRef': _model.newChatThread,
                            },
                          );

                          _model.chatUsers = [];
                          _model.selectedUser = null;
                          if (_shouldSetState) safeSetState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.66),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.75,
                height: 20.0,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget!.advertisement?.name,
                      'Titolo sconosciuto',
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.79),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.75,
                height: 40.0,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget!.advertisement?.description,
                      'Descrizione sconosciuta',
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
