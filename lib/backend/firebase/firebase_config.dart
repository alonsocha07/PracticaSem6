import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAzSesn3H_Cb1uz3Am5-u4eKRlXA2Ykc-I",
            authDomain: "practicaexamen-d4bc8.firebaseapp.com",
            projectId: "practicaexamen-d4bc8",
            storageBucket: "practicaexamen-d4bc8.appspot.com",
            messagingSenderId: "425240972818",
            appId: "1:425240972818:web:629be228aa5b76692352cb",
            measurementId: "G-FHR92WLE18"));
  } else {
    await Firebase.initializeApp();
  }
}
