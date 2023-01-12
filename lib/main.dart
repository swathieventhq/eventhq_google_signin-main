import 'package:eventhq_google_signin/googleSignIn.dart';
import 'package:eventhq_google_signin/homePage.dart';
import 'package:eventhq_google_signin/signUpWidget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(create: (context)=> GoogleSignInProvider(),
    child: MaterialApp(
      home: HomePage(),
    )
  );
}

