import 'package:flutter/material.dart';

import '../../../app/app_color.dart';

class CheckYourCrop extends StatefulWidget {
  const CheckYourCrop({super.key});

  @override
  State<CheckYourCrop> createState() => _CheckYourCropState();
}

class _CheckYourCropState extends State<CheckYourCrop> {
  bool value = false;

  @override


  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        const SizedBox(width: 1), //SizedBox
        /** Checkbox Widget **/
        Checkbox(
          checkColor: AppColor.mainColor,
          activeColor: Colors.white,
          value: value,
          onChanged: (value) {
            setState(() {
              this.value = value!;
            });
          },
        ),
      ], //<Widget>[]
    );
  }
}
