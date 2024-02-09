// //mohamed ali
// import 'dart:ui';
//
// import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
// import 'package:flutter/material.dart';
//
// import 'home.dart';
//
// class BottomBar2 extends StatefulWidget {
//   const BottomBar2({Key? key}) : super(key: key);
//
//   @override
//   State<BottomBar2> createState() => _BottomBar2State();
// }
//
// class _BottomBar2State extends State<BottomBar2> {
//   /// Controller to handle PageView and also handles initial page
//
//
//   /// Controller to handle bottom nav bar and also handles initial page
//   int currentIndex = 0;
//
//
//   /// widget list
//   final List<Widget> bottomBarPages = [
//     const MyHomePage(),
//     const Page2(),
//     const Page3(),
//     const Page4(),
//     const Page5(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//            AnimatedNotchBottomBar(
//               /// Provide NotchBottomBarController
//
//               color: Colors.brown,
//               showLabel: false,
//
//
//               // notchShader: const SweepGradient(
//               //   startAngle: 0,
//               //   endAngle: pi / 2,
//               //   colors: [Colors.red, Colors.green, Colors.orange],
//               //   tileMode: TileMode.mirror,
//               // ).createShader(Rect.fromCircle(center: Offset.zero, radius: 8.0)),
//               notchColor: Colors.white,
//
//               /// restart app if you change removeMargins
//               removeMargins: false,
//               bottomBarWidth: double.infinity,
//               durationInMilliSeconds: 300,
//
//               bottomBarItems: const [
//                 BottomBarItem(
//                   inActiveItem: Icon(
//                     Icons.home_filled,
//                     color: Colors.white,
//                   ),
//                   activeItem: Icon(
//                     Icons.home_filled,
//                     color: Colors.brown,
//                   ),
//                   itemLabel: 'Home,',
//                 ),
//                 BottomBarItem(
//                   inActiveItem: Icon(
//                     Icons.notifications,
//                     color: Colors.white,
//                   ),
//                   activeItem: Icon(
//                     Icons.star,
//                     color: Colors.brown,
//                   ),
//                   itemLabel: 'Notification',
//                 ),
//
//                 ///svg example
//
//                 BottomBarItem(
//                   inActiveItem: Icon(
//                     Icons.chat,
//                     color: Colors.white,
//                   ),
//                   activeItem: Icon(
//                     Icons.settings,
//                     color: Colors.brown,
//                   ),
//                   itemLabel: 'Chat',
//                 ),
//                 BottomBarItem(
//                   inActiveItem: Icon(
//                     Icons.person,
//                     color: Colors.white,
//                   ),
//                   activeItem: Icon(
//                     Icons.person_outline,
//                     color: Colors.brown,
//                   ),
//                   itemLabel: 'Profile',
//                 ),
//               ],
//               onTap: (index) {
//                 /// perform action on tab change and to update pages you can update pages without pages
//                 // log('current selected index $index');
//
//               },
//             ),
//
//
//     );
//   }
// }
//
// class Page1 extends StatelessWidget {
//   const Page1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.yellow, child: const Center(child: Text('Page 1')));
//   }
// }
//
// class Page2 extends StatelessWidget {
//   const Page2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.green, child: const Center(child: Text('Page 2')));
//   }
// }
//
// class Page3 extends StatelessWidget {
//   const Page3({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.red, child: const Center(child: Text('Page 3')));
//   }
// }
//
// class Page4 extends StatelessWidget {
//   const Page4({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.blue, child: const Center(child: Text('Page 4')));
//   }
// }
//
// class Page5 extends StatelessWidget {
//   const Page5({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.lightGreenAccent,
//         child: const Center(child: Text('Page 5')));
//   }
// }
