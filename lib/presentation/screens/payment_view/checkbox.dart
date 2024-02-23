import 'package:flutter/material.dart';

import '../../../app/app_color.dart';

class GetCheckValue extends StatefulWidget {
  const GetCheckValue({super.key});

  @override
  State<GetCheckValue> createState() => _GetCheckValueState();
}

class _GetCheckValueState extends State<GetCheckValue> {
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
        const Text(
          'Save details',
          style: TextStyle(
              fontSize: 16, color: AppColor.mainColor),
        ), //Checkbox
      ], //<Widget>[]
    );
  }
}
