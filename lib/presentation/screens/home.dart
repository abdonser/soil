import 'package:flutter/material.dart';
import 'package:soil/app/app_color.dart';
import 'package:soil/app/app_images.dart';
import 'package:soil/presentation/component/home_Card.dart';

import 'package:soil/presentation/screens/start_scan/turn_on_the_device.dart';


import 'Quantity_crop_expected/choose_crop.dart';
import 'Tack_care_of_your_crop/cropList.dart';
import 'buy_device_view/buy_device_body.dart';
import 'crop_deficiency/select_crop.dart';

import 'enter_npk_value/enter_npk_value.dart';

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
            backgroundImage: AssetImage('assets/images/profile.png'),
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
              HomeCard(
                  image: AppImage.buyDevice,
                  text: "buy the device",
                  color: AppColor.mainColor,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => BuyDevice()));
                  }),
              HomeCard(
                  image: "assets/images/startScan.png",
                  text: "start scan",
                  color: AppColor.mainColor,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => StartScan()));
                  }),
              HomeCard(
                  image: "assets/images/npk_value_card.jpg",
                  text: " Enter npk\n    value  ",
                  color: AppColor.mainColor,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => UploadValue()));
                  }),
              HomeCard(
                  image: "assets/images/npk.png",
                  text: "Tack care of\n your crop",
                  color: AppColor.mainColor,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>SelectCrop()));
                  }),
              HomeCard(
                  image: "assets/images/quantityCrop.png",
                  text: "Quantity crop\n  expected ",
                  color: AppColor.mainColor,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>ChooseCrop()));
                  }),
              HomeCard(
                  image: "assets/images/npk.png",
                  text: "NPK deficiency\n      in crops",
                  color: AppColor.mainColor,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => SelectCropQuantity()));
                  }),
            ]),
      ),
    );
  }
}
