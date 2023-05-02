import 'package:flutter/material.dart';
// import 'package:project_2/Signup_page.dart';
// import 'package:project_2/login_page.dart';
import 'package:the_pause/model/check.dart';
import 'onboarding_page3.dart';
// import 'notification.dart';

class OnboardingPage5 extends StatefulWidget {
  @override
  _OnboardingPage5State createState() => _OnboardingPage5State();
}

class _OnboardingPage5State extends State<OnboardingPage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFFFAFAFA), // Set background color to white
      //   elevation: 0, // Remove the default shadow
      //   actions: [
      //     TextButton(
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => LoginPage()),
      //         );
      //       },
      //       child: Text(
      //         'Skip',
      //         style: TextStyle(
      //           fontFamily: 'Poppins',
      //           color: Color(0xFF000000),
      //           fontSize: 16,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[400],
                  ),
                ),
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[400],
                  ),
                ),
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[400],
                  ),
                ),
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[400],
                  ),
                ),
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF8B80F8),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Image.asset(
              'assets/images/page4.png',
              width: 300,
              height: 300,
            ),
            SizedBox(height: 40),
            Text(
              'Use focus mode to',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF1C1C1C),
                  fontFamily: 'Poppins',
                  fontSize: 25,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 2),
            Text(
              'be more productive',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF1C1C1C),
                  fontFamily: 'Poppins',
                  fontSize: 25,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Level up using focus mode and set',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF1C1C1C),
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 2),
            Text(
              'away distracting notifications to achieve',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF1C1C1C),
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 2),
            Text(
              'productivity within a set period of time',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF1C1C1C),
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Check()),
                );
              },
              child: Text(
                'Next',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF8B80F8)),
                minimumSize: MaterialStateProperty.all<Size>(Size(291, 61)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
