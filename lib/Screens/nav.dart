import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_pause/focus/focus2.dart';
import 'package:the_pause/meditation/medi_final.dart';
import 'package:the_pause/screens/chat_bot.dart';
import 'package:the_pause/meditation/med%202.dart';
import 'package:the_pause/meditation/med.dart';
import 'package:the_pause/screens/profile1.dart';
import 'package:the_pause/screens/home.dart';
import 'package:the_pause/focus/focus.dart';



class bottom_bar extends StatefulWidget {
  const bottom_bar({Key? key}) : super(key: key);

  @override
  State<bottom_bar> createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  int selected_index=0;
  static final List<Widget>_widgetsOptions =<Widget>[
    const home(),
    const medi_final(),
    focus_2(),
    Profile()

  ];
  void onItemTapped(int index){
    setState(() {
      selected_index=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: _widgetsOptions[selected_index]
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0), ),
        child: BottomNavigationBar(

          backgroundColor: Color(0xFF8B80F8),
          type: BottomNavigationBarType.fixed,
          currentIndex: selected_index,
          onTap: onItemTapped,
          showSelectedLabels:true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home_rounded)
                ,label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.access_time),
                activeIcon:Icon(Icons.access_time_filled),label: 'Meditation'),
            BottomNavigationBarItem(icon: Icon(Icons.hourglass_empty),
                activeIcon:Icon(Icons.hourglass_full),label: 'Focus'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline),
                activeIcon:Icon(Icons.person),label: 'Profile')
          ],),
      ) ,
    );

  }
}
