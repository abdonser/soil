import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key, required this.contact, required this.myIcon});

  final String contact;
  final Icon myIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffE7DED5),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          height: 55,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
                myIcon ,
              const SizedBox(
                width: 8,
              ),
               Text(
                contact,
                style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 14,
        )

      ],
    );
  }
}
