import 'package:flutter/material.dart';

import '../../../../app/app_color.dart';



enum SingingCharacter {
  english,
  arabic,
  french,
  italian,
  turkish,
  spanish,
  russian,
  indian,
}

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  SingingCharacter? _character = SingingCharacter.english;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text(
              'English',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff575757),
              ),
            ),
            trailing: Radio<SingingCharacter>(
              activeColor: AppColor.mainColor,
              value: SingingCharacter.english,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text(
              'Arabic',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff575757),
              ),
            ),
            trailing: Radio<SingingCharacter>(
              activeColor: AppColor.mainColor,
              value: SingingCharacter.arabic,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(
                  () {
                    _character = value;
                  },
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text(
              'French',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff575757),
              ),
            ),
            trailing: Radio<SingingCharacter>(
              activeColor: AppColor.mainColor,
              value: SingingCharacter.french,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(
                  () {
                    _character = value;
                  },
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text(
              'Italian',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff575757),
              ),
            ),
            trailing: Radio<SingingCharacter>(
              activeColor: AppColor.mainColor,
              value: SingingCharacter.italian,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(
                  () {
                    _character = value;
                  },
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text(
              'Turkish',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff575757),
              ),
            ),
            trailing: Radio<SingingCharacter>(
              activeColor: AppColor.mainColor,
              value: SingingCharacter.turkish,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(
                  () {
                    _character = value;
                  },
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text(
              'Spanish',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff575757),
              ),
            ),
            trailing: Radio<SingingCharacter>(
              activeColor: AppColor.mainColor,
              value: SingingCharacter.spanish,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(
                  () {
                    _character = value;
                  },
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text(
              'Russian',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff575757),
              ),
            ),
            trailing: Radio<SingingCharacter>(
              activeColor: AppColor.mainColor,
              value: SingingCharacter.russian,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(
                  () {
                    _character = value;
                  },
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListTile(
            title: const Text(
              'Indian',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff575757),
              ),
            ),
            trailing: Radio<SingingCharacter>(
              activeColor: AppColor.mainColor,
              value: SingingCharacter.indian,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(
                  () {
                    _character = value;
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
