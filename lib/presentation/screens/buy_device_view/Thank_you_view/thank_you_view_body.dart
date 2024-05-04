import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soil/presentation/screens/buy_device_view/Thank_you_view/thank_you_card.dart';

import 'custom_checked_icon.dart';
import 'custom_dashed_line.dart';



class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 27),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCard(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            left: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
              top: -35,
              left: -1,
              child: SvgPicture.asset("assets/images/arrow.svg")),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            right: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            right: 0,
            left: 0,
            top: -50,
            child: CustomCheckIcon(),
          ),
          Positioned(
            left: 20 + 8,
            right: 20 + 8,
            bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
            child: const CustomDashedLine(),
          )
        ],
      ),
    );
  }
}
