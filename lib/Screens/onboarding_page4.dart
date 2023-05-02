import 'package:flutter/material.dart';
import 'onboarding_page5.dart';

class OnboardingPage4 extends StatefulWidget {
  @override
  _OnboardingPage4State createState() => _OnboardingPage4State();
}

class _OnboardingPage4State extends State<OnboardingPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA), // Set background color to white
        elevation: 0, // Remove the default shadow
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnboardingPage5()),
              );
            },
            child: Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xFF000000),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 32),
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
                    color: Color(0xFF8B80F8),
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
                )
              ],
            ),
            SizedBox(height: 30),
            Image.asset(
              'assets/images/page5.png',
              width: 300,
              height: 300,
            ),
            SizedBox(height: 40),
            Text(
              'Get daily affirmations',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF1C1C1C),
                  fontFamily: 'Poppins',
                  fontSize: 25,
                  fontWeight: FontWeight.w600
              ),
            ),
            // SizedBox(height: 2),
            // Text(
            //   'to improve your mood',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //       color: Color(0xFF1C1C1C),
            //       fontFamily: 'Poppins',
            //       fontSize: 25,
            //       fontWeight: FontWeight.w600
            //   ),
            // ),
            SizedBox(height: 20),
            Text(
              'Get different motivating affirmations',
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
              ' everyday to start of your day in a',
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
              ' happy note!',
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
                  MaterialPageRoute(builder: (context) => OnboardingPage5()),
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
