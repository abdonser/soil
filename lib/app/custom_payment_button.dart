import 'package:flutter/material.dart';

class CustomPaymentButton extends StatelessWidget {
  const CustomPaymentButton(
      {super.key, this.onTap, required this.title, this.isLoading = false});

  final void Function()? onTap;
  final String title;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: ShapeDecoration(
          color: const Color(0xff895B2D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
