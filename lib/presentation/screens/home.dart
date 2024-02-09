import 'package:flutter/material.dart';
import 'package:soil/app/app_color.dart';
import 'package:soil/app/app_images.dart';

import 'package:soil/presentation/screens/start_scan/turn_on_the_device.dart';

import 'Upload_Laboratory_resul/Laboratory_result.dart';

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
                      color: AppColor.mainColor, fontWeight: FontWeight.bold),
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
              childAspectRatio: 0.8,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            children: [
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImage.buyDevice),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "buy the device",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColor.mainColor),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => StartScan()));
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/startScan.png"),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "start scan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColor.mainColor),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => StartScan()));
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/upload.png"),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Upload ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      "Laboratory result ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColor.mainColor),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          LaboratoryResult()));
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/npk.png"),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Tack care of",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                    const Text(
                      " your crop",
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/quantityCrop.png"),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Quantity crop",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                    const Text(
                      "expected",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/npk.png"),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "NPK deficiency",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                    const Text(
                      "in crops",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
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
