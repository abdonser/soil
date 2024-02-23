import 'package:flutter/material.dart';
import 'package:soil/presentation/screens/Upload_Laboratory_resul/Laboratory_result.dart';
import 'package:soil/presentation/screens/buy_device_view/buy_device_body.dart';

import 'package:soil/presentation/screens/home.dart';
import 'package:soil/presentation/screens/layout_screen.dart';
import 'package:soil/presentation/screens/payment_view/payment_view.dart';
import 'package:soil/presentation/screens/start_scan/report.dart';
import 'package:soil/presentation/screens/start_scan/result_scan.dart';
import 'package:soil/presentation/screens/your_crop_view/your_crop_main.dart';



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
      home:    const YourCropView(),
    );
  }
}




