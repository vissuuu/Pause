import 'package:flutter/material.dart';
import 'dart:math';

class MeditativeMasteryQuizPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final List<String> texts = [
      '"Brilliant things happen in calm minds."',
      '"In the midst of movement and chaos, keep stillness inside of you."',
      '"Meditation nourishes the mind in the same way that food nourishes the body."',
      '"The heart of meditation is taking ourselves a little less seriously."',
      '"No matter how fast life is moving around us, there is always a place of stillness inside."'
    ];
    final int randomIndex = Random().nextInt(texts.length);
    final String randomText = texts[randomIndex];

    int value = 28;
    String text1 = '';
    String text2 = '';
    String text3 = '';

    if (value < 50) {
      text1 = 'is below';
      text2 = '50%';
      text3 = randomText;
    } else {
      text1 = 'is above';
      text2 = '50%';
      text3 = 'Try out our meditation \n & focus features!';
      // By incorporating meditation into your routine you would experience improved well-being.';
    }

    return Scaffold(
      body: Container(
        color: Color(0xFF8B80F8),
        child: SingleChildScrollView(
        child: Column(
          children: [
            // Arrow Icon and Title
            Container(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                  Text(
                    'Meditative Mastery Quiz',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(width: 40),
                ],
              ),
            ),
            // White Overlay with Text and Image
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 20), // adjust the value as needed
              child: Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 20,
                        blurRadius: 14,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 35),
                      Text(
                        'Here are your awaited \n results',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 0),
                      Image.asset(
                        'assets/images/7450188.png',
                        height: 258,
                        width: 250,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'It seems like your stress level' ,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black87,
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 3),
                      Text(
                        text1,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black87,
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Text(
                        text2,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF8B80F8),
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.all(27.0),
                        child: Text(
                          text3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 80),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color(0xFF8B80F8),
                              width: 1,
                            ),
                            bottom: BorderSide(
                              color: Color(0xFF8B80F8),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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

