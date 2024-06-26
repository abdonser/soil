import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/app_color.dart';

import 'final_start_scan.dart';

class TakeSample extends StatelessWidget {
  const TakeSample({super.key});

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
                  color: Color(0xff895B2D),
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
              Image.asset("assets/images/takeSample.png"),
               SizedBox(
                height: 10.h,
              ),
              const Text(
                "Take the sample",
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
                "Please take the sample of soil at a distance of 20 to 30 cm,\n     add some of water, then insert the sensor into it",
                    style: TextStyle(fontSize: 14),
              )),

              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.h,right: 146.w,left: 146.w),
                child: Container(
                    width: 150.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color:AppColor.mainColor),
                    child:  Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (builder)=>FinalStartScan()));
                          },
                          child: Text(
                      "Done",
                      style: TextStyle(color: Colors.white),
                    ),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
