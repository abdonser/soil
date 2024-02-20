import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:soil/app/app_color.dart';
import 'package:soil/app/custom_app_bar.dart';
import 'custom_profile_listTile.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          SizedBox(
            height: 70,
            child: CustomAppBar(
              text: "My Profile",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Scaffold(
              body: Column(
                children: [
                  ListTile(
                    horizontalTitleGap: 1,
                    titleTextStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    subtitleTextStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff787876),
                    ),
                    leading: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                        "assets/images/profile.png",
                      ),
                    ),
                    title: Text("Omar Ali"),
                    subtitle: Text("OmarAli2000@gmail.com"),
                    trailing: Opacity(
                      opacity: 0.9,
                      child: Icon(
                        FontAwesomeIcons.penToSquare,
                        color: AppColor.mainColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Divider(),
                  ),
                  CustomProfileListTile(
                    text: 'History of Reports',
                    leadingIcon: Icons.battery_charging_full_outlined,
                    trailingIcon: Icons.arrow_forward_ios,
                  ),
                  CustomProfileListTile(
                    text: 'Privacy & policy',
                    leadingIcon: Icons.privacy_tip_outlined,
                    trailingIcon: Icons.arrow_forward_ios,
                  ),
                  CustomProfileListTile(
                    text: 'Language',
                    leadingIcon: Icons.language_outlined,
                    trailingIcon: Icons.arrow_forward_ios,
                  ),
                  CustomProfileListTile(
                    text: 'Help',
                    leadingIcon: Icons.help_outline,
                    trailingIcon: Icons.arrow_forward_ios,
                  ),
                  CustomProfileListTile(
                    text: 'Share app',
                    leadingIcon: Icons.battery_charging_full_rounded,
                  ),
                  CustomProfileListTile(
                    text: 'Log out',
                    leadingIcon: Icons.battery_charging_full_rounded,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}