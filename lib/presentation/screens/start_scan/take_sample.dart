import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../app/app_color.dart';

import 'final_start_scan.dart';

class TakeSample extends StatelessWidget {
  const TakeSample({super.key});

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
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Take the sample",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text(
                "Please take the sample of soil at a distance of 20 to 30 cm, add some of water, then insert the sensor into it",
              )),
              const SizedBox(
                height: 24,
              ),
              Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
