import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:soil/presentation/screens/help_view/custom_contact_us_view.dart';
import 'package:soil/presentation/screens/help_view/custom_text_field.dart';
import '../../../app/app_color.dart';
import 'custom_phone_number.dart';
import 'custom_button.dart';

class HelpContactUsViewBody extends StatefulWidget {
  const HelpContactUsViewBody({super.key});

  @override
  State<HelpContactUsViewBody> createState() => _HelpContactUsViewBodyState();
}

class _HelpContactUsViewBodyState extends State<HelpContactUsViewBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Icon(
            Icons.arrow_back_ios,
            size: 24,
          ),
        ),
        title: const Text(
          "Help",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        bottom: customTabBar(),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const CustomTextField(
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
                  const CustomTextField(
                    hintText: "Email",
                    icon: Icon(
                      Icons.email_outlined,
                      size: 20,
                      color: Color(0xff787676),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomTextField(
                    hintText: "Problem description",
                    maxLine: 4,
                    height: 123,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomButton(text: 'Send',),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                ContactUsView(
                  contact: 'WhatsApp',
                  myIcon: Icon(
                    FontAwesomeIcons.whatsapp,
                    color: AppColor.mainColor,
                    size: 24,
                  ),
                ),
                ContactUsView(
                  contact: 'Facebook',
                  myIcon: Icon(
                    FontAwesomeIcons.squareFacebook,
                    color: AppColor.mainColor,
                    size: 24,
                  ),
                ),
                ContactUsView(
                  contact: 'Twitter',
                  myIcon: Icon(
                    FontAwesomeIcons.twitter,
                    color: AppColor.mainColor,
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }



  TabBar customTabBar() {
    return TabBar(
      controller: _tabController,
      labelColor: AppColor.mainColor,
      indicatorColor: AppColor.mainColor,
      indicatorSize: TabBarIndicatorSize.tab,
      unselectedLabelColor: const Color(0xff787878),
      dividerColor: const Color(0xffB2B2B2),
      tabs: const <Widget>[
        Tab(
          child: Text(
            "FAQ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Tab(
          child: Text(
            "Contact us",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
