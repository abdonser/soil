import 'package:flutter/material.dart';
import 'package:soil/app/custom_app_bar.dart';
import '../../../app/app_color.dart';
import 'custom_device_information_view.dart';


class BuyDevice extends StatelessWidget {
  const BuyDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const Icon(Icons.arrow_back_ios),
              const SizedBox(
                child: CustomAppBar(
                  text: "",
                  backArrow: Icons.arrow_back_ios,
                ),
              ),
              Container(
                padding: EdgeInsetsGeometry.lerp(
                    const EdgeInsets.only(top: 150), EdgeInsets.zero, 0.8),
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff895B2D).withOpacity(0.1),
                child: Image.asset(
                  "assets/images/device.png",
                  width: 10,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * .46,
                  horizontal: MediaQuery.of(context).size.width * 0.3,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.mainColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  width: 150,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        width: 30,
                        height: 25,
                        child: const Center(
                          child: Text(
                            "+",
                            style: TextStyle(
                                color: AppColor.mainColor,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const Text(
                        "1",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        width: 30,
                        height: 25,
                        child: const Center(
                          child: Text(
                            "-",
                            style: TextStyle(
                                color: AppColor.mainColor,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const CustomDeviceInformation(),

            ],
          ),
        ],
      ),
    );
  }
}
