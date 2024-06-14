import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soil/Data/cubit/cropDeficieny_cubit/crop_cubit.dart';
import 'package:soil/app/app_color.dart';

import '../../../app/custom_text.dart';
import 'crop_deficiency.dart';

class SelectCropQuantity extends StatefulWidget {
  const SelectCropQuantity({super.key});

  @override
  State<SelectCropQuantity> createState() => _SelectCropQuantityState();
}

class _SelectCropQuantityState extends State<SelectCropQuantity> {
  final List<Map<String, dynamic>> cropImage = [
    {
      'name': 'cheese',
      'price': 2.2,
      'image': 'assets/croplist/apple.jpeg',
      'quantity': 1,
    },
    {
      'name': 'milk',
      'price': 17,
      'image': 'assets/croplist/banana.jpeg',
      'quantity': 2,
    },
    {
      'name': 'pizza',
      'price': 3.99,
      'image': 'assets/croplist/cabbage.jpeg',
      'quantity': 3,
    },
    {
      'image': 'assets/croplist/cauliflower.jpeg',
    },
    { 'image': 'assets/croplist/chilli.jpeg',},
    { 'image': 'assets/croplist/citrus.jpeg',},
    { 'image': 'assets/croplist/coca.jpeg',},
    { 'image': 'assets/croplist/coconut.jpeg',},
    { 'image': 'assets/croplist/field pea.jpeg',},
    { 'image': 'assets/croplist/cabbage.jpeg',},

  ];
  @override
  void initState() {
    // TODO: implement initState
    CropCubit.get(context).getCrop();
    super.initState();
  }

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
      body: BlocConsumer<CropCubit, CropState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return state is CropLoading
              ? const Center(
                  child: CircularProgressIndicator(
                  color: AppColor.mainColor,
                ))
              : ListView(
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
                              borderSide:
                                  const BorderSide(color: Color(0xffF5F5F5)),
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
                      child: ListView.separated(
                          itemBuilder: (context, int index) {
                            return ListTile(
                                leading: CircleAvatar(
                                  child:Image.asset(cropImage[index]['image']),
                                ),
                                title: Text(
                                  CropCubit.get(context)
                                      .cropList[index]
                                      .cropName,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) =>
                                                CropDeficiency(
                                                  id: CropCubit.get(context)
                                                      .cropList[index]
                                                      .id,
                                                  name: CropCubit.get(context)
                                                      .cropList[index]
                                                      .cropName,
                                                )));
                                  },
                                ));
                          },
                          separatorBuilder: (context, int index) {
                            return const SizedBox(
                              height: 20,
                            );
                          },
                          itemCount:cropImage.length,)// CropCubit.get(context).cropList.length),
                    )
                  ],
                );
        },
      ),
    );
  }
}
