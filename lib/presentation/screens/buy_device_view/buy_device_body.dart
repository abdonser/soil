

import 'package:flutter/material.dart';
import '../../../app/app_color.dart';
import '../my_profile_view/help_view/custom_button.dart';
import '../payment_view/payment_view.dart';
import 'CustomRowImages/payment_methods_bottom_sheet.dart';
import 'custom_device_information_view.dart';

class BuyDevice extends StatelessWidget {
  const BuyDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff895B2D).withOpacity(0.1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        toolbarHeight: 35,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // const Icon(Icons.arrow_back_ios),

                Container(
                  padding: EdgeInsetsGeometry.lerp(
                      const EdgeInsets.only(top: 8), EdgeInsets.zero, 0.8),
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xff895B2D).withOpacity(0.1),
                  child: Image.asset(
                    "assets/images/device.png",
                    width: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .365,
                    right: MediaQuery.of(context).size.width * 0.3,
                    left: MediaQuery.of(context).size.width * 0.3,
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
              ],
            ),
            const CustomDeviceInformation(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return PaymentMethodsBottomSheet();
                    },
                  );
                },
                style: ButtonStyle(
                 // backgroundColor: WidgetStateProperty.all<Color>(
                 //     const Color(0xff895B2D)), // Button background color
                 // minimumSize:
                  //    WidgetStateProperty.all<Size>(const Size(500, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
                child: const Text(
                  'Check Out',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
