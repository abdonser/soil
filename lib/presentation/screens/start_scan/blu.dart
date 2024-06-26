import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:soil/app/app_color.dart';
import 'package:soil/presentation/screens/start_scan/report.dart';

import '../my_profile_view/help_view/custom_button.dart';

class Bluetooth extends StatefulWidget {
  const Bluetooth({super.key});

  @override
  State<Bluetooth> createState() => _BluetoothState();
}

class _BluetoothState extends State<Bluetooth> {
  BluetoothConnection? connection;
  String address = '00:22:06:01:99:8C';
  StringBuffer receivedDataBuffer = StringBuffer();
  String receivedData = ''; // Use StringBuffer
  List<String> sensorValues = [];

  @override
  void initState() {
    super.initState();
    connectToDevice(); // Call connect function here
  }

  Future<void> connectToDevice() async {
    var status = await Permission.bluetoothScan.request();

    if (status.isGranted) {
      try {
        connection = await BluetoothConnection.toAddress(address);
        connection!.input?.listen((data) {
          setState(() {
            receivedDataBuffer.write(String.fromCharCodes(data));
            receivedData = receivedDataBuffer.toString();
            parseNPK(receivedData);
          });
        });
      } on IOException catch (error) {
        print("Error connecting: $error");
      }
    } else {
      print("Permission denied: ${status.name}"); // Handle permission denial
    }
  }

  void closeConnection() async {
    if (connection != null) {
      connection!.dispose();
      connection = null;
      print('Bluetooth connection closed');
    } else {
      print('No connection to close');
    }
  }

  void parseNPK(String message) {
    if (message.contains('mg/kg')) {
      // Extract individual values (assuming space separation)
      List<String> parts = message.split(' ');
      sensorValues.add(parts[1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomSheet:BottomSheet(onClosing: () {  }, builder: (BuildContext context) {  },) ,
      appBar: AppBar(
        title: const Text(
          'Result Scan',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Add your back button action here
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15,left: 15,bottom: 15),
        child: Column(
          children: [
            Container(
              height: 565,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                       color: Colors.grey[100],
                        child: Center(
                          child: Text(
                            receivedData,
                            style:  TextStyle(fontSize: 24.0,color:Colors.brown),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Container(


                child:MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: 56,
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    closeConnection();
                    print(sensorValues);
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>Report()));
                  },
                  color: AppColor.mainColor,
                  child: const Text(
                   " Go to report",
                    style:  TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],

        ),
      ),


      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     closeConnection();
      //     print(sensorValues);
      //   },
      //   child: const Text('Stop Scan'),
      // ),
    );
  }
}
