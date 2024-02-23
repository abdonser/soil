import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text,this.backArrow});

  final String text;
  final IconData? backArrow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Icon(
            backArrow,
            size: 24,
          ),
        ),
        title: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
    );
  }
}
