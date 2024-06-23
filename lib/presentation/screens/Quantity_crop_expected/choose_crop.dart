import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soil/presentation/component/listTile_choose_crop.dart';
import 'package:soil/presentation/screens/Quantity_crop_expected/quantity_crop_maize.dart';
import 'package:soil/presentation/screens/Quantity_crop_expected/quantity_crop_rice.dart';
import 'package:soil/presentation/screens/Quantity_crop_expected/quantity_crop_soybean.dart';
import 'package:soil/presentation/screens/Quantity_crop_expected/quantity_crop_wheat.dart';

import '../../../app/custom_text.dart';

class ChooseCrop extends StatelessWidget {
  ChooseCrop({super.key});

  final List<Map<String, dynamic>> cropImage = [
    {
      'name': "wheat",
      'image': 'assets/croplist/wheat.jpeg',
    },
    {
      'name': "rice",
      'image': 'assets/croplist/rice.jpeg',
    },
    {
      'name': "soybean",
      'image': 'assets/croplist/soybean.jpeg',
    },
    {
      'name': "maize",
      'image': 'assets/croplist/maize.jpeg',
    },
    {
      'name': "chilli",
      'image': 'assets/croplist/chilli.jpeg',
    },
    {
      'name': "citrus",
      'image': 'assets/croplist/citrus.jpeg',
    },
    {
      'name': "coca",
      'image': 'assets/croplist/coca.jpeg',
    },
    { 'name': "coconut",
      'image': 'assets/croplist/coconut.jpeg',
    },
    { 'name': "fieldpea",
      'image': 'assets/croplist/field pea.jpeg',
    },
    { 'name': "cabbage",
      'image': 'assets/croplist/cabbage.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: const CustomText(
          title: "Select your crop",
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: 50,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Color(0xffF5F5F5)),
                  ),
                  hintText: "search",
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                  fillColor: const Color(0xffF5F5F5),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              height: MediaQuery.of(context).size.height / 2 + 240,
              width: 300,
              child: ListView(
                children: [
                  CostomListTile(
                      image: cropImage[0]['image'],
                      text: cropImage[0]['name'],
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (builder)=>WheateQuantity()));}),
                  SizedBox(
                    height: 20,
                  ),
                  CostomListTile(
                      image: cropImage[1]['image'],
                      text: cropImage[1]['name'],
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (builder)=>RiceQuantity()));}),
                  SizedBox(
                    height: 20,
                  ),
                  CostomListTile(
                      image: cropImage[2]['image'],
                      text: cropImage[2]['name'],
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (builder)=>SoyBeanQuantity()));}),
                  SizedBox(
                    height: 20,
                  ),
                  CostomListTile(
                      image: cropImage[3]['image'],
                      text: cropImage[3]['name'],
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (builder)=>MaizeQuantity()));}),
                  SizedBox(
                    height: 20,
                  ),
                  CostomListTile(
                      image: cropImage[4]['image'],
                      text: cropImage[4]['name'],
                      onTap: () {}),
                  SizedBox(
                    height: 20,
                  ),
                  CostomListTile(
                      image: cropImage[5]['image'],
                      text: cropImage[5]['name'],
                      onTap: () {}),
                  SizedBox(
                    height: 20,
                  ),
                  CostomListTile(
                      image: cropImage[6]['image'],
                      text: cropImage[6]['name'],
                      onTap: () {}),
                  SizedBox(
                    height: 20,
                  ),
                  CostomListTile(
                      image: cropImage[7]['image'],
                      text: cropImage[7]['name'],
                      onTap: () {}),
                  SizedBox(
                    height: 20,
                  ),
                  CostomListTile(
                      image: cropImage[8]['image'],
                      text: cropImage[8]['name'],
                      onTap: () {}),
                  SizedBox(
                    height: 20,
                  ),
                  CostomListTile(
                      image: cropImage[9]['image'],
                      text: cropImage[9]['name'],
                      onTap: () {}),
                ],
              ) // CropCubit.get(context).cropList.length),
              )
        ],
      ),
    );
  }
}
