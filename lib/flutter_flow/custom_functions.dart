import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String formatedDate(String date) {
// Crea un oggetto DateFormat per il formato di input
  DateFormat inputFormat = DateFormat("yyyy-MM-dd HH:mm:ss");

  // Parsing della stringa di input
  DateTime parsedDate = inputFormat.parse(date);

  // Crea un oggetto DateFormat per il formato di output
  DateFormat outputFormat = DateFormat("dd/MM/yyyy");

  // Converte la data parsata nel formato desiderato
  return outputFormat.format(parsedDate);
}

List<String> ritornaSempreListaVuota() {
  return [];
}
