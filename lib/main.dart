import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soil/Data/cubit/cropDeficieny_Info/crop_deficieny_info_cubit.dart';
import 'package:soil/Data/cubit/cropDeficieny_cubit/crop_cubit.dart';
import 'package:soil/Data/cubit/login_cubit/login_cubit.dart';
import 'package:soil/Data/cubit/signup_cubit/sign_up_cubit.dart';
import 'package:soil/presentation/screens/Upload_Laboratory_resul/Laboratory_result.dart';
import 'package:soil/presentation/screens/buy_device_view/buy_device_body.dart';
import 'package:soil/presentation/screens/crop_deficiency/crop_deficiency.dart';
import 'package:soil/presentation/screens/crop_deficiency/select_crop.dart';

import 'package:soil/presentation/screens/home.dart';
import 'package:soil/presentation/screens/layout_screen.dart';
import 'package:soil/presentation/screens/my_profile_view/edit_profile_view/edit_my_profile.dart';
import 'package:soil/presentation/screens/on_broading/login_screen.dart';
import 'package:soil/presentation/screens/on_broading/sign_up.dart';
import 'package:soil/presentation/screens/payment_view/payment_view.dart';
import 'package:soil/presentation/screens/start_scan/report.dart';
import 'package:soil/presentation/screens/start_scan/result_scan.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider<CropCubit>(
          create: (BuildContext context) => CropCubit(),
        ),
        BlocProvider<CropDeficienyInfoCubit>(
          create: (BuildContext context) => CropDeficienyInfoCubit(),
        ),
        BlocProvider<LoginCubit>(
          create: (BuildContext context) => LoginCubit(),
        ),
        BlocProvider<SignUpCubit>(
          create: (BuildContext context) => SignUpCubit(),
        ),

      ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   ResultScreen(),
    );
  }
}




