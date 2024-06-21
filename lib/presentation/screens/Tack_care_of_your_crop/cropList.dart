import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soil/Data/cubit/crop_list_cubit.dart';
import 'package:soil/presentation/screens/Tack_care_of_your_crop/your_crop_main.dart';

import '../../../app/app_color.dart';
import '../../../app/custom_text.dart';

class SelectCrop extends StatefulWidget {
  const SelectCrop({super.key});

  @override
  State<SelectCrop> createState() => _SelectCropState();
}

class _SelectCropState extends State<SelectCrop> {
  @override
  void initState() {
    // TODO: implement initState
    CropListCubit.get(context).getCropList();
    super.initState();
  }
  final List<Map<String, dynamic>> cropImage = [
    {
      'image': 'assets/croplist/apple.jpeg',
    },
    {
      'image': 'assets/croplist/banana.jpeg',
    },
    {
      'image': 'assets/croplist/cabbage.jpeg',
    },
    {
      'image': 'assets/croplist/cauliflower.jpeg',
    },
    {
      'image': 'assets/croplist/chilli.jpeg',
    },
    {
      'image': 'assets/croplist/citrus.jpeg',
    },
    {
      'image': 'assets/croplist/coca.jpeg',
    },
    {
      'image': 'assets/croplist/coconut.jpeg',
    },
    {
      'image': 'assets/croplist/field pea.jpeg',
    },
    {
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
      body: BlocConsumer<CropListCubit, CropListState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return state is CropListLoading
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
                                  child: Image.asset(cropImage[index]['image']),
                                ),
                                title: Text(
                                  CropListCubit.get(context)
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
                                          YourCropView(
                                            id:  CropListCubit.get(context)
                                                .cropList[index].npkId
                                                ,
                                            name:  CropListCubit.get(context)
                                                .cropList[index]
                                                .cropName, image:cropImage[index]['image'],
                                          )));
                                  },
                                ));
                          },
                          separatorBuilder: (context, int index) {
                            return const SizedBox(
                              height: 20,
                            );
                          },
                          itemCount: cropImage.length,
                        ) // CropCubit.get(context).cropList.length),
                        )
                  ],
                );
        },
      ),
    );
  }
}
