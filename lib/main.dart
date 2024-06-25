import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soil/Data/cubit/cropDeficieny_Info/crop_deficieny_info_cubit.dart';

import 'package:soil/Data/cubit/crop_list_cubit.dart';
import 'package:soil/Data/cubit/login_cubit/login_cubit.dart';
import 'package:soil/Data/cubit/signup_cubit/sign_up_cubit.dart';
import 'package:soil/presentation/screens/Quantity_crop_expected/choose_crop.dart';
import 'package:soil/presentation/screens/Quantity_crop_expected/quantity_crop_rice.dart';
import 'package:soil/presentation/screens/Tack_care_of_your_crop/cropList.dart';
import 'package:soil/presentation/screens/Tack_care_of_your_crop/your_crop_main.dart';
import 'package:soil/presentation/screens/buy_device_view/buy_device_body.dart';
import 'package:soil/presentation/screens/crop_deficiency/crop_deficiency.dart';
import 'package:soil/presentation/screens/crop_deficiency/select_crop.dart';

import 'package:soil/presentation/screens/home.dart';
import 'package:soil/presentation/screens/layout_screen.dart';
import 'package:soil/presentation/screens/on_broading/login_screen.dart';
import 'package:soil/presentation/screens/on_broading/logo_screen.dart';
import 'package:soil/presentation/screens/on_broading/sign_up.dart';
import 'package:soil/presentation/screens/start_scan/blu.dart';
import 'package:soil/presentation/screens/start_scan/final_start_scan.dart';
import 'package:soil/presentation/screens/start_scan/report.dart';
import 'package:soil/presentation/screens/start_scan/result_scan.dart';
import 'package:soil/presentation/screens/train.dart';

import 'Data/cubit/npk_cubit.dart';



void main() {
  runApp(MultiBlocProvider(
      providers: [

        BlocProvider<CropDeficienyInfoCubit>(
          create: (BuildContext context) => CropDeficienyInfoCubit(),
        ),
        BlocProvider<LoginCubit>(
          create: (BuildContext context) => LoginCubit(),
        ),
        BlocProvider<SignUpCubit>(
          create: (BuildContext context) => SignUpCubit(),
        ),
        BlocProvider<CropListCubit>(
          create: (BuildContext context) => CropListCubit(),
        ),
        BlocProvider<NpkCubit>(
          create: (BuildContext context) => NpkCubit(),
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
      home:const LogoScreen(),
    );
  }
}




