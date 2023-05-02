import 'package:flutter/material.dart';
import 'package:the_pause/model/check.dart';
import 'onboarding_page1.dart';
// import 'login_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF544CA4),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 110),
              Image.asset(
                'assets/images/intro_pause.png',
                height: 200,
                width: 200,
              ),
              SizedBox(height: 60),
              Text(
                'Pause',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFAFAFA),
                ),
              ),
              SizedBox(height: 0),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: Color(0xFFFAFAFA),
                  ),
                  children: [
                    TextSpan(text: 'Indulge mindfulness into\n'),
                    TextSpan(text: 'your everyday life'),
                  ],
                ),
              ),
              SizedBox(height: 200),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnboardingPage1()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFAFAFA),
                  onPrimary: Color(0xFF544CA4),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  elevation: 5,
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Check()),
                  );
                },
                child: Text(
                  'Already have an account? Log in',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: Color(0xFFFAFAFA),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


