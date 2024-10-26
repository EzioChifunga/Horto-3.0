import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCB1ix1mMsgIFtXhirtDRpJQsy2GFJ842k",
            authDomain: "hortodb-7b474.firebaseapp.com",
            projectId: "hortodb-7b474",
            storageBucket: "hortodb-7b474.appspot.com",
            messagingSenderId: "541135003096",
            appId: "1:541135003096:web:d30fd5dd394d8fc74aa6ad",
            measurementId: "G-1R63DGR42C"));
  } else {
    await Firebase.initializeApp();
  }
}
