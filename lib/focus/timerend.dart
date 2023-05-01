import 'package:flutter/material.dart';

import '../Screens/nav.dart';

class CongratulationsPage extends StatelessWidget {
  final int time;

  CongratulationsPage({required this.time});

  String _formatTime(seconds) {
    Duration duration = Duration(seconds: seconds);
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 60,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 90,
              ),
              Text(
                'Congratulations!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 150, 118, 205),
                ),
              ),
              SizedBox(height: 60),
              Image.asset(
                'assets/images/Saly-18.png',
                height: 200,
                width: 200,
              ),
              SizedBox(height: 60),
              Text(
                'You have focused for',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                _formatTime(time),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Color.fromARGB(255, 150, 118, 205),
                ),
              ),
              SizedBox(height: 90),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);

                  Navigator.push(context, MaterialPageRoute(builder: (context) => const bottom_bar(),));
                },
                child: Text('Continue'),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    primary: Color.fromARGB(
                        255, 150, 118, 205), // button background color
                    onPrimary: Colors.white, // text color
                    elevation: 5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
