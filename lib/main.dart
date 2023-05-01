import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:the_pause/Screens/home.dart';
import 'package:the_pause/Screens/login.dart';
import 'package:the_pause/Screens/profile1.dart';
import 'package:the_pause/Screens/quiz.dart';
import 'package:the_pause/focus/timerend.dart';
import 'package:the_pause/meditation/med 2.dart';
import 'package:the_pause/landing_page.dart';
import 'package:the_pause/meditation/medi_final.dart';
import 'package:the_pause/model/check.dart';
import 'package:the_pause/meditation/med.dart';
import 'package:the_pause/screens/signup.dart';
import 'firebase_options.dart';
import 'login_page.dart';
import 'package:the_pause/screens/nav.dart';
import 'package:flutter/services.dart';
import 'package:the_pause/focus/focus2.dart';

import 'meditation/medi_music.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(debugShowCheckedModeBanner: false, home: Quiz());
  }
}
