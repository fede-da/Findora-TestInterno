import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD6ezTICao3sSg0h8K469vy2e3VBR4a1G0",
            authDomain: "findora-48bfd.firebaseapp.com",
            projectId: "findora-48bfd",
            storageBucket: "findora-48bfd.appspot.com",
            messagingSenderId: "534234956335",
            appId: "1:534234956335:web:44821ab7a437ddedd7bcda",
            measurementId: "G-G3WTL6C22V"));
  } else {
    await Firebase.initializeApp();
  }
}
