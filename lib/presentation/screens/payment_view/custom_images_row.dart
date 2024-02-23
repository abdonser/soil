
import 'package:flutter/material.dart';

class CustomPaymentImage extends StatelessWidget {
  const CustomPaymentImage({
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
      height: 98,
      width: 98,
      child: Image.asset(image),
    );
  }
}
