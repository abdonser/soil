import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String? image;
  final String? text;
  final Color? color;
  final Function()? onTap;

  HomeCard({Key? key, required this.image, required this.text, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image!),
          const SizedBox(height: 8),
          Text(
            text!,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: color,
            ),
            child: IconButton(
              onPressed: onTap, // Corrected invocation
              icon: const Icon(
                Icons.arrow_forward_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
