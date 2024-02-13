
import 'package:flutter/material.dart';

import '../../../app/app_color.dart';

class CustomProfileListTile extends StatelessWidget {
  const CustomProfileListTile({
    super.key,
    required this.leadingIcon,
    this.trailingIcon,
    required this.text,
  });

  final IconData leadingIcon;
  final IconData? trailingIcon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: -3),
      leading: Icon(
        size: 24,
        leadingIcon,
        color: AppColor.mainColor,
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Icon(
        size: 20,
        trailingIcon,
        color: AppColor.mainColor,
      ),
    );
  }
}
