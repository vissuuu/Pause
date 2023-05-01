import 'package:flutter/material.dart';
import 'settings.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 5, 0),
              child: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  // Navigate to Settings Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()),
                  );
                },
              ),
            ),
          ),
          CircleAvatar(
            radius: 50.0,
            backgroundImage:
                NetworkImage('https://randomuser.me/api/portraits/men/1.jpg'),
          ),
          SizedBox(height: 10.0),
          Text(
            'User Name',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(30, 5, 0, 5),
            child: Text(
              'Insights',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Color.fromARGB(255, 150, 118, 205),
                ),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildInsightButton('Week'),
                _buildInsightButton('Month'),
                _buildInsightButton('6 Months'),
                _buildInsightButton('1 Year'),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildInsightCard('Hours Meditated', '10'),
              _buildInsightCard('Hours Focused', '7'),
            ],
          ),
        ],
      ),
    );
  }

 String _selectedButton = 'Week';

Widget _buildInsightButton(String title) {
  bool isEnabled = title == _selectedButton;
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60.0),
        ),
        primary: isEnabled ? Color.fromARGB(255, 150, 118, 205) : Colors.white,
        onPrimary: isEnabled ? Colors.white : Colors.black, // text color
        ),
    onPressed: () {
      setState(() {
        _selectedButton = title;
      });
    },
    child: Text(title),
  );
}

  Widget _buildInsightCard(String title, String hours) {
    return Card(
      child: Column(
        children: [
          SizedBox(height: 10.0),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 150, 118, 205),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    hours,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
