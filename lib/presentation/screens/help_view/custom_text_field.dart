import 'package:flutter/material.dart';
import 'package:soil/app/app_color.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.icon,
      this.maxLine,
      this.height = 56});

  final String hintText;
  final Icon? icon;
  final int? maxLine;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextField(
        cursorColor: AppColor.mainColor,
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(
          color: AppColor.mainColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColor.mainColor),
              borderRadius: BorderRadius.circular(16),
            ),
            filled: true,
            fillColor: const Color(0xffF5F5F5),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColor.mainColor),
              borderRadius: BorderRadius.circular(16),
            ),
            hintText: hintText,
            prefixIcon: icon),
        maxLines: maxLine,
      ),
    );
  }
}
