import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          // Navigator.push(context, MaterialPageRoute(builder: (builder)=>Splash1Screen()));
        },
        child: Center(
          child: Container(margin: EdgeInsets.only(right: 25),

            child: Image.asset("assets/images/logo.png",scale: 3,),
          ),
        ),
      ),

    );
  }
}
