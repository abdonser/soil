import 'package:flutter/material.dart';
import 'package:soil/presentation/screens/Upload_Laboratory_resul/Laboratory_result.dart';

import 'package:soil/presentation/screens/home.dart';

import 'package:soil/presentation/screens/layout_screen.dart';
import 'package:soil/presentation/screens/my_profile_view/my_profile.dart';
import 'package:soil/presentation/screens/on_broading/login_screen.dart';
import 'package:soil/presentation/screens/on_broading/logo_screen.dart';
import 'package:soil/presentation/screens/on_broading/sign_up.dart';
import 'package:soil/presentation/screens/on_broading/splash1.dart';
import 'package:soil/presentation/screens/on_broading/splash2.dart';
import 'package:soil/presentation/screens/on_broading/splash3.dart';
import 'package:soil/presentation/screens/start_scan/report.dart';
import 'package:soil/presentation/screens/start_scan/result_scan.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   const LogoScreen(),
    );
  }
}




