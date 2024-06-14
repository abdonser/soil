import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../app/app_color.dart';
import 'LaboratoryReport.dart';

class UploadValue extends StatelessWidget {
   UploadValue({super.key});
  TextEditingController nController=TextEditingController();
  TextEditingController pController=TextEditingController();
  TextEditingController kController=TextEditingController();

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
          "Enter NPK  value",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 40, right: 40, top: 40, bottom: 20),
            child: Image.asset("assets/images/npk_value.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
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
          Center(
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
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
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
                        fillColor: Color(0xffF5F5F5),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                ),
              ),
              Text(
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
                        fillColor: Color(0xffF5F5F5),
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
                        fillColor: Color(0xffF5F5F5),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => LaboratoryReport()));
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
