import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../app/app_words.dart';
import '../../../app/custom_text.dart';
import 'login_screen.dart';

class Splash3Screen extends StatefulWidget {
  const Splash3Screen({super.key});

  @override
  State<Splash3Screen> createState() => _Splash3ScreenState();
}

class _Splash3ScreenState extends State<Splash3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 60, right: 10),
            child: Image.asset(
              "assets/images/splash3.png",
              scale: 4,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomText(
            title: "Report",
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
              title: "    The application will show you a report on the \n"
                  "  percentages of N,P and k ,the crops that you can \n"
                  "grow based on these percentages, and the fertilizers \n"
                  "               that you will use to grow this crop."),
          SizedBox(
            height: 40,
          ),
          Container(
              width: 100,
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xff895B2D),
                borderRadius: BorderRadius.circular(15),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const LoginScreen()),
                      (route) => false);
                },
                child: const CustomText(
                  title: AppWords.done,
                  color: Colors.white,
                  fontSize: 12,
                ),
              ))
        ],
      ),
    );
  }
}
