import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/app_color.dart';
import 'connect_bletooth.dart';


class StartScan extends StatelessWidget {
  const StartScan({super.key});

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
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Skip",
              style: TextStyle(
                  color: AppColor.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 90.h),
              child: Container(


                  child: Image.asset("assets/images/trunOnDevice.png")),
            ),
            const Text(
              "Turn on the device",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
             SizedBox(
              height: 10.h,
            ),
            const Text(
              "Please turn on the device by pressing the power\n                                 button",style: TextStyle(fontSize: 16),
            ),
             SizedBox(
              height: 24.h,
            ),
            Padding(
              padding:  EdgeInsets.only(top: 50.h,right: 146.w,left: 146),
              child: Container(
                  width: 150.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: AppColor.mainColor),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>const ConnectBluetooth()));
                      },
                      icon: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
