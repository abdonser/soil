import 'package:flutter/material.dart';
import 'package:soil/app/app_color.dart';

class CustomButton extends StatelessWidget {


  final String text;
  Function() onTap;
   CustomButton({super.key, required this.text,  required this.onTap});



  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      height: 56,
      minWidth: MediaQuery.of(context).size.width,
      onPressed: () {
        onTap;
      },
      color: AppColor.mainColor,
      child: Text(
        text,
        style:  TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}
