import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body:SafeArea(child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            // Icon
            Image.asset("assets/images/Saly-10.png"),
            const SizedBox(height: 20,),
            // Login

            Text("Login to Your Account",
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 25,
              fontWeight: FontWeight.w500
            ),),

          ],
        ),
      )) ,
      
    );
  }
}
