import 'package:flutter/material.dart';
import 'package:soil/app/app_color.dart';
import 'package:soil/presentation/screens/start_scan/take_sample.dart';


class ConnectBluetooth extends StatelessWidget {
  const ConnectBluetooth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Skip",
              style: TextStyle(
                  color:AppColor.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/connectBl.png"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Connect bluetooth",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "Please connect bluetooth to  connect it to device and start ",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const Center(
                child: Text(
                  "scan",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.mainColor),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>TakeSample()));
                      },
                      icon: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
