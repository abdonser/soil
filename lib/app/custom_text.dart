import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title ;
  final Color color ;
  final FontWeight fontWeight ;
  final double fontSize;
  const CustomText({super.key,required this.title,this.color=Colors.black
    ,this.fontWeight=FontWeight.w400,this.fontSize=12});

  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(color: color,fontSize: fontSize,fontWeight: fontWeight),);
  }
}
