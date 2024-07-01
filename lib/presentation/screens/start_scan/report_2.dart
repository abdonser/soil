import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soil/app/app_color.dart';

import '../layout_screen.dart';

class Repoort extends StatelessWidget {
  const Repoort({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (builder)=>BottomNavBar()));
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text(
          "Report",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [


          CircularProgressIndicator(color: AppColor.mainColor,)



        ],),
      ),

    );
  }
}
