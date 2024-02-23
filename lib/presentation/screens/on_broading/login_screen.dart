import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soil/presentation/screens/on_broading/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(

              width: MediaQuery.of(context).size.width/2,
              height: 150,
              child: Image.asset("assets/images/login.png"),
            ),
          ),
          SizedBox(height: 20,),
          Center(child: Text("Log in your account",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: TextField(
              decoration: InputDecoration(
                fillColor: const Color(0xffF5F5F5),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Color(0xffF5F5F5)),
                ),
                hintText: "Enter your phone",
                hintStyle: const TextStyle(
                  color: Color(0xff787676),
                  fontSize: 14,
                ),
                prefixIcon: const Icon(
                  Icons.phone_outlined,
                  color: Color(0xff787676),
                ),
                prefixIconColor: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: TextField(
              decoration: InputDecoration(
                fillColor: const Color(0xffF5F5F5),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Color(0xffF5F5F5)),
                ),
                hintText: "Enter your password",
                hintStyle: const TextStyle(
                  color: Color(0xff787676),
                  fontSize: 14,
                ),

                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: Color(0xff787676),
                ),
                prefixIconColor: Colors.black54,
                // icon: Icon(Icons.remove_red_eye_outlined)
                // prefix: Icon(Icons.remove_red_eye_outlined),
                suffixIcon: const Icon(
                  Icons.remove_red_eye_outlined,
                ),
                suffixIconColor: const Color(0xff787676),
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 180),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Forget Password",
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 16, color: Color(0xff895B2D)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff895B2D),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(" _____________________  Or  _____________________")),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Google.png",
                scale: 3,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/images/Facebook.png",
                scale: 3,
              )
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Don’t have an account?",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>const SignUpScreen()));
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(color: Color(0xff895B2D), fontSize: 18),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
