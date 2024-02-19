import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:soil/app/app_color.dart';
import 'package:soil/presentation/screens/profile_screen/myprofile.dart';

import 'chat_screen/chat.dart';
import 'home.dart';
import 'notifications_screen/notifications.dart';

// import 'package:soil_scan/presentation/screens/screen1.dart';
// import 'package:soil_scan/presentation/screens/screen2.dart';
// import 'package:soil_scan/presentation/screens/screen3.dart';
// import 'package:soil_scan/presentation/screens/screen4.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List Screens = [
    const MyHomePage(),
    const Notifications(),
    const Chat(),
    const MyProfile()
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        height: 60.0,
        items: const <Widget>[
          Icon(
            Icons.home_outlined,
            size: 30,
            color: AppColor.mainColor,
          ),
          Icon(Icons.notifications_outlined, size: 30, color: Colors.white),
          Icon(Icons.chat_outlined, size: 30, color: Colors.white),
          Icon(Icons.person_outline, size: 30, color: Colors.white),
        ],
        color: AppColor.mainColor,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: Screens[_selectedIndex],
    );
  }
}
