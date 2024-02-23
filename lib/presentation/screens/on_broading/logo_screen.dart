import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soil/presentation/screens/on_broading/splash1.dart';

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
           Navigator.push(context, MaterialPageRoute(builder: (builder)=>const Splash1Screen()));
        },
        child: Center(
          child: Container(margin: const EdgeInsets.only(right: 25),

            child: Image.asset("assets/images/logo.png",scale: 3,),
          ),
        ),
      ),

    );
  }
}
