import 'package:flutter/material.dart';
import 'package:the_pause/model/flask.dart';
import 'quiz_result.dart';

var res;

class Quiz extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<Quiz> {

  int q1 = 0;
  int q2 = 0;
  int q3 = 0;
  int q4 = 0;
  int q5 = 0;
  int q6 = 0;
  int q7 = 0;
  int q8 = 0;
  int q9 = 0;
  int q10 = 0;
  int q11 = 0;
  int q12 = 0;
  int q13 = 0;
  int q14 = 0;
  int q15 = 0;
  int q16 = 0;
  int q17 = 0;
  int q18 = 0;
  int q19 = 0;

  // List<int> a ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('My Page'),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 130),
            // Heading
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Answer these questions on \n a scale of 0 to 10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Text
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'How many fruits or vegetables do you eat in a day?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q1.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q1 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q1.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q2
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'How many new places do you visit?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q2.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q2 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q2.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q3
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'How many people are very close to you?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q3.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q3 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q3.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q4
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'How many people do you interact with during a typical day?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q4.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q4 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q4.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q5
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'How many people do you help achieve a better life?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q5.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q5 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q5.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q6
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'With how many people do you interact with during a typical day?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q6.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q6 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q6.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q7
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'How many remarkable achievements are you proud of?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q7.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q7 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q7.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q8
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'How many times do you donate your time or money to good causes?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q8.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q8 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q8.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q9
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                '[1 if below 25, else 2]What is your body mass index (bmi) range',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q9.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q9 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q9.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q10
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'How well do you complete your weekly to-do lists?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q10.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q10 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q10.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q11
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'In a typical day, how many hours do you experience flow? ',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q11.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q11 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q11.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q12
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'How many fruits or vegetables do you eat in a day?How many steps (in thousands) do you typically walk everyday? ',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q12.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q12 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q12.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q13
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'For how many years ahead is your life vision very clear for?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q13.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q13 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q13.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q14
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'How many days of vacation do you typically lose every year ?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q14.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q14 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q14.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q15
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'How often do you shout or sulk at somebody?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q15.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q15 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q15.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q16
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                '[1 for insufficient, 2 for sufficient]How sufficient is your income to    cover basic life expenses?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q16.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q16 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q16.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q17
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'How many recognitions have you received in your life?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q17.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q17 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q17.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q18
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'How many hours do you spend everyday doing what you are passionate about?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q18.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q18 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q18.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


            //q19
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'How well do you balance your work and life?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
            // Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              child: Slider(
                value: q19.toDouble(),
                min: 0,
                max: 10,
                divisions: 10,
                onChanged: (double newValue) {
                  setState(() {
                    q19 = newValue.round();
                  });
                },
                activeColor: Color(0xFF554DA5),
                inactiveColor: Color(0xFFD9D9D9),
              ),
            ),
            // Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    q19.toString(),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF554DA5),
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  res = predictAnx([
                    q1,
                    q2,
                    q3,
                    q4,
                    q5,
                    q6,
                    q7,
                    q8,
                    q9,
                    q10,
                    q11,
                    q12,
                    q13,
                    q14,
                    q15,
                    q16,
                    q17,
                    q18,
                    q19
                  ]);
                });

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MeditativeMasteryQuizPage()),
                );
              },
              child: Text(
                'Get your results!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFF8B80F8)),
                minimumSize: MaterialStateProperty.all<Size>(Size(200, 61)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}