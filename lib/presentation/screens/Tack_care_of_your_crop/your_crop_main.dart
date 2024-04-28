import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:soil/app/app_color.dart';
import 'package:soil/app/custom_app_bar.dart';
import 'TableResultCrop.dart';
import 'custom_buttons_row.dart';
import 'custom_npk_values.dart';

class YourCropView extends StatelessWidget {
  const YourCropView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 70,
                child: CustomAppBar(
                  text: "Your Crop",
                  backArrow: Icons.arrow_back_ios,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color(0xffD9D9D9),
                    radius: 150 / 2,
                    backgroundImage: AssetImage("assets/images/tomato.png"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      const Text(
                        "Tomatoes",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.mainColor),
                          color: const Color(0xff895B2D).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 47,
                        width: 120,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            NpkValues(
                              name: 'N',
                              value: '1.3',
                            ),
                            NpkValues(
                              name: 'P',
                              value: '5.4',
                            ),
                            NpkValues(
                              name: 'K',
                              value: '8.2',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButtonsRow(
                        text: 'Irrigation',
                        icon: FontAwesomeIcons.icons,
                      ),
                      CustomButtonsRow(
                        text: 'Fertilizer',
                        icon: FontAwesomeIcons.icons,
                      ),
                      CustomButtonsRow(
                        text: 'Length',
                        icon: FontAwesomeIcons.icons,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Type",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "Date",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "Done",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const CustomTableResult(),
                  const Divider(),
                  const CustomTableResult(),
                  const Divider(),
                  const CustomTableResult(),
                  const Divider(),
                  const CustomTableResult(),
                  const Divider(),
                  const CustomTableResult(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
