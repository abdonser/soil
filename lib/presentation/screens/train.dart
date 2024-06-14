import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Train extends StatelessWidget {
  const Train({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
        Image.network("http://10.0.2.2:8000/npks/upload/apple.jpeg")
      ],)
    );
  }
}
