import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:the_pause/Screens/login.dart';
// import 'package:the_pause/landing_page.dart';
import 'package:the_pause/login_page.dart';
import 'package:the_pause/model/auth.dart';
import 'package:the_pause/screens/nav.dart';

import '../screens/home.dart';

class Check extends StatelessWidget {
  const Check({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context , snapshot){
        if(snapshot.hasData){
          return bottom_bar();
        }
        else{
          return LoginPage();
        }
      },),
    );
  }
}
