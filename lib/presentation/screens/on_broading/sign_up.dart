import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 150,
              child: Image.asset("assets/images/sign_up.png"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
              child: Text(
            "Create new account",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
          )),
          const SizedBox(
            height: 20,
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
                hintText: "Enter your name",
                hintStyle: const TextStyle(
                  color: Color(0xff787676),
                  fontSize: 14,
                ),
                prefixIcon: const Icon(
                  Icons.person_outline,
                  color: Color(0xff895B2D),
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
                hintText: "Enter your phone",
                hintStyle: const TextStyle(
                  color: Color(0xff787676),
                  fontSize: 14,
                ),
                prefixIcon: const Icon(
                  Icons.phone_outlined,
                  color: Color(0xff895B2D),
                ),
                suffixIcon: const Icon(
                  Icons.done,
                  color: Color(0xff895B2D),
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
            height: 15,
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
                    "Sign up",
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
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => const LoginScreen()));
                  },
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: Color(0xff895B2D), fontSize: 18),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
