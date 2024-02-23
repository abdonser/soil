import 'package:flutter/material.dart';

import '../../../../app/app_color.dart';



class UpdateProfilePhoto extends StatelessWidget {
  const UpdateProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffD9D9D9),
          radius: 150 / 2,
          backgroundImage: AssetImage("assets/images/profile.png"),
        ),
        Positioned(
          bottom: -10,
          right: 5,
          child: CircleAvatar(
            backgroundColor: Color(0xffF5F5F5),
            radius: 45 / 2,
            child: Icon(
              Icons.camera_alt_outlined,
              color: AppColor.mainColor,
            ),
          ),
        ),
      ],
    );
  }
}
