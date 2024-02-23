import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soil/presentation/screens/on_broading/splash2.dart';


import '../../../app/app_words.dart';
import '../../../app/custom_text.dart';
import 'login_screen.dart';


class Splash1Screen extends StatefulWidget {
  const Splash1Screen({super.key});

  @override
  State<Splash1Screen> createState() => _Splash1ScreenState();
}

class _Splash1ScreenState extends State<Splash1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (builder) => const LoginScreen()));
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 300),
            child: CustomText(
              title: AppWords.skip,
              color: Color(0xff895B2D),
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 130),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Center(
              child: Image.asset(
                "assets/images/splash1png.png",

              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomText(
              title: AppWords.welcome,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black87,
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomText(
              fontSize: 14,
                title:
                    "    In SoilScan application, you will find powerful tools to   \n "
                    "analyze and understand the composition of the soil, as well \n"
                    "    as provide appropriate recommendations to improve soil \n "
                    "                  quality and increase crop productivity."),
            // Container(
            //   width: 80,
            //   height: 50,
            //   color: Color(0xff895B2D),
            //   child: InkWell(
            //     onTap: (){},
            //   ),
            // )

            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const Splash2Screen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 24,right: 146,left: 146,bottom: 130),
                  child: Container(
                    width: 100,
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color(0xff895B2D),
                        borderRadius: BorderRadius.circular(15)),
                    child: Icon(
                      Icons.adaptive.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
