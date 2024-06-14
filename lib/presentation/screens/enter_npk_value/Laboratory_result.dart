import 'package:flutter/material.dart';

import '../../../app/app_color.dart';
import 'LaboratoryReport.dart';

class LaboratoryResult extends StatelessWidget {
  const LaboratoryResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Laboratory result",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {

          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded,size: 30,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 97,bottom: 140,left: 24,right: 24),

        child: Container(
         // padding: EdgeInsets.only(top: 140,bottom: 140,left: 39,right: 39),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
              border: Border.all(
                style: BorderStyle.values[1],
                width: 2,
                color: AppColor.mainColor,
              )

          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/Laboratory result.png",width: 200,height: 200,),
                const Text(
                  "If you do not have our device and you ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "perform an analysis of a lab you can put",
                  style: TextStyle(fontSize: 16),
                ),
                const Text("the results here to tell you the ",
                    style: TextStyle(fontSize: 16)),
                const Text("appropriate crops ", style: TextStyle(fontSize: 16)),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //icon1
                    Container(
                      width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(39),
                            color: AppColor.mainColor),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (builder)=>LaboratoryReport()));
                            },
                            icon: const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                              size: 30,
                            ))),
                    const SizedBox(width: 10,),
                    Text("Or",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    const SizedBox(width: 10,),
                    //icon2
                    Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(39),
                            //  color: AppColor.mainColor
                            border: Border.all(
                              width: 2,
                              color: AppColor.mainColor,
                            )),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              size: 30,
                              Icons.image,
                              //color: Colors.white,
                            )))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
