import 'package:flutter/material.dart';
import 'package:soil/app/app_color.dart';
import 'package:soil/presentation/screens/start_scan/report.dart';

import '../my_profile_view/help_view/custom_button.dart';

class ResultScreen extends StatelessWidget {
  final List<Map<String, String>> results = [
    {"Element": "Nitrogen", "Value": "138 mg/kg"},
    {"Element": "Phosphorous", "Value": "116 mg/kg"},
    {"Element": "Potassium", "Value": "159 mg/kg"},
  ];

  ResultScreen({super.key});

  Widget buildResultCard() {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: results.map((result) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(result["Element"] ?? ""),
                Text(result["Value"] ?? ""),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(height: 16.0),
                    buildResultCard(),
                    buildResultCard(),
                    buildResultCard(),
                    buildResultCard(),
                    buildResultCard(),

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: CustomButton(text: 'Go to report', onTap: () {  },),
          ),
        ],
      ),
    );
  }
}