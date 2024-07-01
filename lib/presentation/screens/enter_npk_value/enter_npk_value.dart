import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../app/app_color.dart';
import '../start_scan/report.dart';
import 'LaboratoryReport.dart';

class UploadValue extends StatelessWidget {
  UploadValue({super.key});

  final TextEditingController nController = TextEditingController();
  final TextEditingController pController = TextEditingController();
  final TextEditingController kController = TextEditingController();

  Future<void> _submitData(BuildContext context) async {
    final n = int.tryParse(nController.text);
    final p = int.tryParse(pController.text);
    final k = int.tryParse(kController.text);

    if (n == null || p == null || k == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter valid NPK values')),
      );
      return;
    }

    try {
      final response = await http.post(
        Uri.parse('https://7936-2c0f-fc88-41-4382-cdf2-bd35-3ed5-cc49.ngrok-free.app/predict'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'N': n, 'P': p, 'K': k}),
      );

      if (response.statusCode == 200) {
        print(response.statusCode);
        final predictions = json.decode(response.body)['predictions'];
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Report(predictions: predictions),
          ),
        );
      } else {
        print(response.statusCode);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to get predictions')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 30,
          ),
        ),
        title: const Text(
          "Enter NPK value",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 40, right: 40, top: 100, bottom: 20),
            child: Image.asset("assets/images/npk_value.jpg",fit: BoxFit.fill,height: 240,),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Enter NPK value",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Center(
            child: Text(
              "If you do not have our device and you perform an analysis \n "
              "in a laboratory you can enter NPK value here to tell you the\n "
              " appropriate crops.",
              style: TextStyle(
                  color: Color(0xff6B6B6B),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "N :",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff895B2D)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 50,
                  width: 70,
                  child: TextFormField(
                    controller: nController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        fillColor: const Color(0xffF5F5F5),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                ),
              ),
              const Text(
                "P :",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff895B2D)),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 50,
                  width: 70,
                  child: TextFormField(
                    controller: pController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        fillColor: const Color(0xffF5F5F5),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                ),
              ),
              const Text(
                "K :",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff895B2D)),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 50,
                  width: 70,
                  child: TextFormField(
                    controller: kController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        fillColor: const Color(0xffF5F5F5),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                width: 327,
                height: 56,
                decoration: BoxDecoration(
                    color: AppColor.mainColor,
                    borderRadius: BorderRadius.circular(15)),
                child: MaterialButton(
                  onPressed: () {
                    _submitData(context);
                  },
                  child: const Text(
                    "Go to report",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )),
          )
        ],
      ),
    );
  }
}

