import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBOZuIukQgB_1_BRhWml786Inxi8BUYt5U",
            authDomain: "groitalapp.firebaseapp.com",
            projectId: "groitalapp",
            storageBucket: "groitalapp.firebasestorage.app",
            messagingSenderId: "508993988479",
            appId: "1:508993988479:web:3b16a278599e1bc5409c4a",
            measurementId: "G-L32FPR9PKV"));
  } else {
    await Firebase.initializeApp();
  }
}
