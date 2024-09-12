import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'swipe_card_widget.dart' show SwipeCardWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class SwipeCardModel extends FlutterFlowModel<SwipeCardWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> chatUsers = [];
  void addToChatUsers(DocumentReference item) => chatUsers.add(item);
  void removeFromChatUsers(DocumentReference item) => chatUsers.remove(item);
  void removeAtIndexFromChatUsers(int index) => chatUsers.removeAt(index);
  void insertAtIndexInChatUsers(int index, DocumentReference item) =>
      chatUsers.insert(index, item);
  void updateChatUsersAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      chatUsers[index] = updateFn(chatUsers[index]);

  DocumentReference? selectedUser;

  Color? color = Color(4287996332);

  List<ChatsRecord> allChats = [];
  void addToAllChats(ChatsRecord item) => allChats.add(item);
  void removeFromAllChats(ChatsRecord item) => allChats.remove(item);
  void removeAtIndexFromAllChats(int index) => allChats.removeAt(index);
  void insertAtIndexInAllChats(int index, ChatsRecord item) =>
      allChats.insert(index, item);
  void updateAllChatsAtIndex(int index, Function(ChatsRecord) updateFn) =>
      allChats[index] = updateFn(allChats[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<ChatsRecord>? allUserChats;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatsRecord? newChatThread;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<ChatsRecord>? allUserChatsCopy2;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatsRecord? newChatThread2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
