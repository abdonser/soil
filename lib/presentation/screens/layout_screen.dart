import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:soil_scan/presentation/screens/screen1.dart';
// import 'package:soil_scan/presentation/screens/screen2.dart';
// import 'package:soil_scan/presentation/screens/screen3.dart';
// import 'package:soil_scan/presentation/screens/screen4.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List Screens = [
    // Screen1(),
    // Screen2(),
    // Screen3(),
    // Screen4(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        height: 60.0,
        items: <Widget>[
          Icon(
            Icons.home_filled,
            size: 30,
            color: Colors.white,
          ),
          Icon(Icons.notifications_outlined, size: 30, color: Colors.white),
          Icon(Icons.chat_outlined, size: 30, color: Colors.white),
          Icon(Icons.person_outline, size: 30, color: Colors.white),
        ],
        color: Colors.brown,
        buttonBackgroundColor: Colors.grey,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
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
