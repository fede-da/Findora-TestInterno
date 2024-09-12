import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'invite_users2_chat_widget.dart' show InviteUsers2ChatWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class InviteUsers2ChatModel extends FlutterFlowModel<InviteUsers2ChatWidget> {
  ///  Local state fields for this page.

  DocumentReference? selectedUser;

  List<DocumentReference> chatUsers = [];
  void addToChatUsers(DocumentReference item) => chatUsers.add(item);
  void removeFromChatUsers(DocumentReference item) => chatUsers.remove(item);
  void removeAtIndexFromChatUsers(int index) => chatUsers.removeAt(index);
  void insertAtIndexInChatUsers(int index, DocumentReference item) =>
      chatUsers.insert(index, item);
  void updateChatUsersAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      chatUsers[index] = updateFn(chatUsers[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, UserCredentialRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;

  // State field(s) for CheckboxListTile widget.
  Map<UserCredentialRecord, bool> checkboxListTileValueMap = {};
  List<UserCredentialRecord> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? newChatThread;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    listViewPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, UserCredentialRecord>
      setListViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController ??= _createListViewController(query, parent);
    if (listViewPagingQuery != query) {
      listViewPagingQuery = query;
      listViewPagingController?.refresh();
    }
    return listViewPagingController!;
  }

  PagingController<DocumentSnapshot?, UserCredentialRecord>
      _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, UserCredentialRecord>(
            firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryUserCredentialRecordPage(
          queryBuilder: (_) => listViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          controller: controller,
          pageSize: 16,
          isStream: false,
        ),
      );
  }
}
