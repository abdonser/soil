
import 'package:flutter/material.dart';

class CustomDevicesImage extends StatelessWidget {
  const CustomDevicesImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff895B2D).withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 60,
      width: 60,
      child: Image.asset(image),
    );
  }
}
