import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../model/check.dart';
import 'notif.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Replace this with your own logic for the profile picture
  String profileImageUrl = 'https://randomuser.me/api/portraits/men/1.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(profileImageUrl),
                          ),
                          Positioned(
                            bottom: 0,
                            right: -10,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor:
                                    Color.fromARGB(255, 150, 118, 205),
                                padding: EdgeInsets.all(10),
                              ),
                              onPressed: () {
                                // Replace this with your own logic for changing the profile picture
                                setState(() {
                                  profileImageUrl =
                                      'https://randomuser.me/api/portraits/women/2.jpg';
                                });
                              },
                              child: const Icon(Icons.edit),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                  Text(
                    '   User Name',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Change Password'),
              onTap: () {
                // Navigate to the password change page
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationPage()),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text('Dark Mode'),
              trailing: Switch(
                activeColor: Color(0xFF9575CD),
                value: true, // Replace this with your own logic for dark mode
                onChanged: (value) {},
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text('FAQ'),
              onTap: () {
                // Navigate to the FAQ page
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Privacy Policy'),
              onTap: () {
                // Navigate to the privacy policy page
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.article),
              title: const Text('Terms of Service'),
              onTap: () {
                // Navigate to the terms of service page
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Check() ));
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
