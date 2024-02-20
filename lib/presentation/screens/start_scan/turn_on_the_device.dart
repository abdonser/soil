import 'package:flutter/material.dart';

import '../../../app/app_color.dart';
import 'connect_bletooth.dart';


class StartScan extends StatelessWidget {
  const StartScan({super.key});

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
            Image.asset("assets/images/trunOnDevice.png"),
            const Text(
              "Turn on the device",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Please turn on the device by pressing the power button",
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.mainColor),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>const ConnectBluetooth()));
                    },
                    icon: const Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    )))
          ],
        ),
      ),
    );
  }
}
