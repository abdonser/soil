import 'package:flutter/material.dart';

class PaymentItemValue extends StatelessWidget {
  const PaymentItemValue({super.key, required this.title, required this.value});

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: 0,
        ), textAlign: TextAlign.center),
        Text(value, style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          height: 0,
        ), textAlign: TextAlign.center),
      ],
    );
  }
}
