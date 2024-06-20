import 'package:flutter/material.dart';

import '../../../../app/custom_app_bar.dart';

import '../help_view/custom_button.dart';
import '../help_view/custom_phone_number.dart';
import '../../../../app/custom_text_field.dart';
import 'custom_edit_profile_photo.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 70,
            child: CustomAppBar(
              text: "Edit Profile",
              backArrow: Icons.arrow_back_ios,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const UpdateProfilePhoto(),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Scaffold(
                body: Column(
                  children: [
                    CustomTextField(
                      hintText: "Full Name",
                      icon: Icon(Icons.person_2_outlined),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    phoneNumber(),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomTextField(
                      hintText: "Email",
                      icon: Icon(Icons.email_outlined),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomButton(
                      text: 'Save', onTap: () {  },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}