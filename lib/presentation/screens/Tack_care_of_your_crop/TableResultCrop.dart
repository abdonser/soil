
import 'package:flutter/material.dart';

import 'check_box_your_crop.dart';

class CustomTableResult extends StatelessWidget {
  const CustomTableResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Fertilizer",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w900, color: Colors.black),
          ),
          Text(
            "Urea",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          Text(
            "1/5",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          CheckYourCrop(),
        ],
      ),
    );
  }
}
