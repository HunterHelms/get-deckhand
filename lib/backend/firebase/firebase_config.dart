import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBKBriaK5dChkQyxjN3gw8vPLCxrW2MWTc",
            authDomain: "deckhanddev.firebaseapp.com",
            projectId: "deckhanddev",
            storageBucket: "deckhanddev.appspot.com",
            messagingSenderId: "598120000272",
            appId: "1:598120000272:web:3f1af37952f8a1f4f19395",
            measurementId: "G-5MLSKFRHXN"));
  } else {
    await Firebase.initializeApp();
  }
}
