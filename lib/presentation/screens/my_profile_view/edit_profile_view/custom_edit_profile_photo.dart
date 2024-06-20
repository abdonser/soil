import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import '../../../../app/app_color.dart';

class UpdateProfilePhoto extends StatefulWidget {
  const UpdateProfilePhoto({super.key});

  @override
  _UpdateProfilePhotoState createState() => _UpdateProfilePhotoState();
}

class _UpdateProfilePhotoState extends State<UpdateProfilePhoto> {
  File? _cachedImage;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final appDir = await getApplicationDocumentsDirectory();
      final fileName = pickedFile.name;
      final savedImage = await File(pickedFile.path).copy('${appDir.path}/$fileName');

      setState(() {
        _cachedImage = savedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffD9D9D9),
          radius: 150 / 2,
          backgroundImage: _cachedImage != null
              ? FileImage(_cachedImage!)
              : AssetImage("assets/images/profile.png") as ImageProvider,
        ),
        Positioned(
          bottom: -10,
          right: 5,
          child: GestureDetector(
            onTap: _pickImage,
            child: CircleAvatar(
              backgroundColor: Color(0xffF5F5F5),
              radius: 45 / 2,
              child: Icon(
                Icons.camera_alt_outlined,
                color: AppColor.mainColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
