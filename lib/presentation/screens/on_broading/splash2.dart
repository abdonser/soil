import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soil/presentation/screens/on_broading/splash3.dart';

import '../../../app/app_words.dart';
import '../../../app/custom_text.dart';
import 'login_screen.dart';

class Splash2Screen extends StatefulWidget {
  const Splash2Screen({super.key});

  @override
  State<Splash2Screen> createState() => _Splash2ScreenState();
}

class _Splash2ScreenState extends State<Splash2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (builder) => const LoginScreen()),
                (route) => false);
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 220),
            child: CustomText(
              title: AppWords.skip,
              color: Color(0xff895B2D),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/splash2.png",
                scale: 4,
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomText(
                title: 'NPK Sensor',
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                  title:
                      "The application will help you in how to use the sensor \n"
                      "    to analyze the soil using easy and simple steps."),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const Splash3Screen()));
                  },
                  child: Container(
                    width: 100,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xff895B2D),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.adaptive.arrow_forward,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
