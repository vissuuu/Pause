import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool _affirmationsEnabled = true;
  bool _meditationsEnabled = false;
  bool _focusEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 60, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Notification Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            SwitchListTile(
              activeColor: Color(0xFF9575CD),

              title: const Text('Affirmations'),
              value: _affirmationsEnabled,
              onChanged: (value) {
                setState(() {
                  _affirmationsEnabled = value;
                });
              },
            ),
            SwitchListTile(
              activeColor: Color(0xFF9575CD),
              title: const Text('Meditations'),
              value: _meditationsEnabled,
              onChanged: (value) {
                setState(() {
                  _meditationsEnabled = value;
                });
              },
            ),
            SwitchListTile(
              activeColor: Color(0xFF9575CD),
              title: const Text('Focus'),
              value: _focusEnabled,
              onChanged: (value) {
                setState(() {
                  _focusEnabled = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
