import 'package:flutter/material.dart';
import 'package:soil/app/app_color.dart';

import 'package:soil/presentation/screens/start_scan/start_scan.dart';



class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Ahmed",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  "in",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "SoilScan",
                  style: TextStyle(
                      color:AppColor.mainColor, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.jpg'),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing:2,
              mainAxisSpacing: 40,
            ),
            children: [
              Card(
                child: Column(
                  children: [
                    Image.asset("assets/images/buyDevice.png"),
                    const Text(
                      "buy the device",
                      style: TextStyle(fontSize: 16),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColor.mainColor),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (builder)=>StartScan()));
                            },
                            icon: const Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                            )))
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset("assets/images/startScan.png"),
                    Text(
                      "start scan",
                      style: TextStyle(fontSize: 16),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColor.mainColor),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (builder)=>StartScan()));
                            },
                            icon: const Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                            )))
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset("assets/images/upload.png"),
                    Text("Upload Laboratory result"),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color:AppColor.mainColor),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                            )))
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset("assets/images/npk.png"),
                    Text("Tack care of your crop"),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColor.mainColor),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                            )))
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset("assets/images/quantityCrop.png"),
                    Text("Quantity crop expected"),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColor.mainColor),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                            )))
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset("assets/images/npk.png"),
                    Text("NPK deficiency in crops"),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColor.mainColor),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                            )))
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
