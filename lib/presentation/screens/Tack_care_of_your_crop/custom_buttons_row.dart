import 'package:flutter/material.dart';

class CustomButtonsRow extends StatelessWidget {
  final String text;

   final Color color;
   final Color color2;
   const CustomButtonsRow({
    super.key,
    required this.text,
   // required this.icon,
    required this.color,
     required this.color2,

  });



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border:Border(),
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 80,
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(
          //   icon,
          //   color: Colors.white,
          //   size: 30,
          // ),
          const SizedBox(
            height: 8,
          ),
          Text(
            text,
            style:  TextStyle(
              color: color2,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
