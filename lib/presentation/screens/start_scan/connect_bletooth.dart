import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soil/app/app_color.dart';
import 'package:soil/presentation/screens/start_scan/take_sample.dart';


class ConnectBluetooth extends StatelessWidget {
  const ConnectBluetooth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Skip",
              style: TextStyle(
                  color:AppColor.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 70.h),
                child: Container(
                    child: Image.asset("assets/images/connectBl.png")),
              ),
               SizedBox(
                height: 10.h,
              ),
              const Text(
                "Connect bluetooth",
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
                  "Please connect bluetooth to  connect it to\n                  device and start scan ",
                  style: TextStyle(fontSize: 16),
                ),
              ),

               SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.h,right: 146.w,left: 146),
                child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: AppColor.mainColor),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (builder)=>TakeSample()));
                        },
                        icon: const Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
