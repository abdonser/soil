import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soil/presentation/screens/home.dart';
import 'package:soil/presentation/screens/start_scan/result_scan.dart';

import '../../../app/app_color.dart';
import 'blu.dart';


class FinalStartScan extends StatelessWidget {
  const FinalStartScan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (Context)=>const MyHomePage()));
              },
              child: const Text(
                "See steps",
                style: TextStyle(
                    color: AppColor.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/startScan2.png"),
               SizedBox(
                height: 10.h,
              ),
              const Text(
                "Start scan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
               SizedBox(
                height: 10.h,
              ),
              const Center(
                  child: Text(
                      " you can start scan and see the report of NPK sensor")),
               SizedBox(
                height: 30.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=> Bluetooth()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                      width: 327.w,
                      height: 57.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: AppColor.mainColor),
                      child: const Center(
                          child: Text(
                        "Start Scan",
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
