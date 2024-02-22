import 'package:flutter/material.dart';
import 'package:soil/app/custom_app_bar.dart';

import 'custom_language_item.dart';

class Radiobutton extends StatefulWidget {
  const Radiobutton({super.key});

  @override
  RadiobuttonState createState() => RadiobuttonState();
}

class RadiobuttonState extends State<Radiobutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:  const Column(
        children: [
          SizedBox(
            height: 70,
            child: CustomAppBar(
              text: "Languages",
              backArrow: Icons.arrow_back_ios,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Scaffold(
              body: RadioExample(),
            ),
          )
        ],
      ),
    );
  }
}
