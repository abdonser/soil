import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soil/Data/cubit/login_cubit/login_cubit.dart';
import 'package:soil/app/cache_service.dart';
import 'package:soil/presentation/screens/on_broading/sign_up.dart';

import '../../../app/app_color.dart';
import '../layout_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  String _email = '';

  String _password = '';

  @override
  /* void initState() {
    LoginCubit.get(context).loginRequest(email: emailController.text, password: passwordController.text);
    // TODO: implement initState
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 150,
                child: Image.asset("assets/images/login.png"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
              "Log in your account",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _email = value!;
                  });
                },
                onFieldSubmitted: (value) {
                  print(value);
                },
                decoration: InputDecoration(
                  fillColor: const Color(0xffF5F5F5),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Color(0xffF5F5F5)),
                  ),
                  hintText: "Enter your email",
                  hintStyle: const TextStyle(
                    color: Color(0xff787676),
                    fontSize: 14,
                  ),
                  prefixIcon: const Icon(
                    Icons.email,
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
              child: TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _password = value!;
                  });
                },
                obscureText: _obscureText,
                onFieldSubmitted: (value) {
                  print(value);
                },
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
                  suffixIcon: IconButton(
                    icon: Icon(
                      //Icons.remove_red_eye_rounded,
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      // Toggle the state of password visibility
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  suffixIconColor: const Color(0xff787676),
                ),
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
                  child:BlocConsumer<LoginCubit, LoginState>(
                    listener: (context, state) {
                      if (state is LoginDone) {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=>BottomNavBar()), (route) => false);
                        String?token=LoginCubit().loginmodel.token;
                        CacheService().setUserToken(token:"$token");
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Login successful'),
                          duration: Duration(seconds: 5),
                        ));
                      } else if (state is LoginError) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Please enter valid credentials'),
                          duration: Duration(seconds: 5),
                        ));
                      }
                      // TODO: Implement other listeners if needed
                    },
                    builder: (context, state) {
                      if (state is LoginLoading) {
                        // Show a loading indicator while fetching data
                        return Center(
                          child: CircularProgressIndicator(
                            color: AppColor.mainColor,
                          ),
                        );
                      } else {
                        // Show the login button
                        return MaterialButton(
                          onPressed: () {
                            LoginCubit.get(context).loginRequest(
                              email: emailController.text,
                              password: passwordController.text,
                            );


                          },
                          child: const Text(
                            'Log in',
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }
                    },
                  )

                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
                child:
                    Text(" _____________________  Or  _____________________")),
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
                  "Don’t have an account?",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const SignUpScreen()));
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(color: Color(0xff895B2D), fontSize: 18),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
