import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../app/app_color.dart';

Container phoneNumber() {
  return Container(
    height: 56,
    child: IntlPhoneField(
      disableLengthCheck: true,
      keyboardType: TextInputType.phone,
      style: const TextStyle(
        color: AppColor.mainColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF5F5F5),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.mainColor),
          borderRadius: BorderRadius.circular(16),
        ),
        hintText: "Phone Number",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColor.mainColor),
        ),
      ),
      cursorColor: AppColor.mainColor,
      initialCountryCode: 'EG',
      onChanged: (phone) {
        print(phone.completeNumber);
      },
    ),
  );
}