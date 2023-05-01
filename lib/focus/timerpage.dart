import 'dart:async';
import '../Screens/nav.dart';
import 'timerend.dart';
import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  final int timerValueInMinutes;

  TimerPage({required this.timerValueInMinutes, required int timerValue});

  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  late int _timerValueInSeconds;
  late bool _isTimerRunning;
  late bool _isTimerFinished;

  late Duration _duration;
  late int _secondsRemaining;
  late String _timerText;

  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _timerValueInSeconds = widget.timerValueInMinutes * 60;
    _isTimerRunning = true;
    _isTimerFinished = false;

    _duration = Duration(seconds: _timerValueInSeconds);
    _secondsRemaining = _duration.inSeconds;
    _timerText = _formatTime(_secondsRemaining);

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_isTimerRunning) {
        setState(() {
          _secondsRemaining--;
          _timerText = _formatTime(_secondsRemaining);
        });

        if (_secondsRemaining == 0) {
          setState(() {
            _isTimerRunning = false;
            _isTimerFinished = true;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    _timer.cancel();
  }

  String _formatTime(int seconds) {
    Duration duration = Duration(seconds: seconds);
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  void _toggleTimer() {
    setState(() {
      _isTimerRunning = !_isTimerRunning;
    });
  }

  void _goBack() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/Meditate_music_bg1.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const bottom_bar(),));
              },
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 144, 49, 239).withOpacity(0.5),
                ),
                child: Text(
                  _timerText,
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 350,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: _toggleTimer,
                child: _isTimerRunning
                    ? Icon(Icons.pause)
                    : Icon(Icons.play_arrow),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    primary: Color.fromARGB(
                        255, 115, 60, 219), // button background color
                    onPrimary: Colors.white, // text color
                    elevation: 5),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: _isTimerFinished
                    ? () {
                        CongratulationsPage cp =
                            CongratulationsPage(time: (_timerValueInSeconds));
                        Navigator.pop(context);

                        // Handle button tap
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => cp),
                        );
                      }
                    : null,
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
            ),
          ),
        ],
      ),
    );
  }
}
