import 'package:flutter/material.dart';
import '../../../app/app_color.dart';
import '../help_view/custom_button.dart';
import 'CustomRowImages/imagesName.dart';
import 'custom_row_devices_images.dart';

class CustomDeviceInformation extends StatelessWidget {
  const CustomDeviceInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * .54,
        horizontal: 24,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Soil Scan Device",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                "&100",
                style: TextStyle(
                    color: AppColor.mainColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            "Details",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          Text(
            "This device will help you analyze the soil and determine the percentage of nitrogen, phosphorus and potassium to determine the appropriate crop to plant.",
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              CustomDevicesImage(
                image: DevicesImages.image1,
              ),
              SizedBox(
                width: 8,
              ),
              CustomDevicesImage(
                image: DevicesImages.image2,
              ),
              SizedBox(
                width: 8,
              ),
              CustomDevicesImage(
                image: DevicesImages.image3,
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          CustomButton(text: "Check out"),
        ],
      ),
    );
  }
}
