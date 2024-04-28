
import 'package:flutter/material.dart';

import '../../../app/app_color.dart';

class NpkValues extends StatelessWidget {
  const NpkValues({
    super.key,
    required this.name,
    required this.value,
  });

  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: AppColor.mainColor,
          ),
        ),
      ],
    );
  }
}
