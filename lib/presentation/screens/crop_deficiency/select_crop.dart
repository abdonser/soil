import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:soil/Data/cubit/crop_list_cubit.dart';
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
      'image': 'assets/croplist/apple.jpeg',
      'n':'assets/npk_difincy/apple n.jpeg',
      'p':'assets/npk_difincy/apple p.jpeg',
      'k':'assets/npk_difincy/apple k.jpeg',
    },
    {
      'image': 'assets/croplist/banana.jpeg',
      'n':'assets/croplist/banana n .jpeg',
      'p':'assets/croplist/banana p.jpeg',
      'k':'assets/croplist/banana k.jpeg',
    },
    {
      'image': 'assets/croplist/cabbage.jpeg',
      'n':'assets/croplist/cabbage-N.jpg',
      'p':'assets/croplist/cabbage-P.jpg',
      'k':'assets/croplist/cabbage-K.jpg',


    },
    {
      'image': 'assets/croplist/cauliflower.jpeg',
      'n':'assets/croplist/cauliflower-N.jpg',
      'p':'assets/croplist/cauliflower-P.jpg',
      'k':'assets/croplist/cauliflower-K.jpg',
    },
    {
      'image': 'assets/croplist/chilli.jpeg',
      'n':'assets/croplist/chilli-N.jpg',
      'p':'assets/croplist/cilli-P.jpg',
      'k':'assets/croplist/cilli-K.jpg',
    },
    {
      'image': 'assets/croplist/citrus.jpeg',
      'n':'assets/croplist/citrus n.jpeg',
      'p':'assets/croplist/citrus p .jpeg',
      'k':'assets/croplist/citrus k.jpeg',

    },
    {
      'image': 'assets/croplist/coca.jpeg',
      'n':'assets/croplist/cocoa-N.jpg',
      'p':'assets/croplist/cocoa-P.jpg',
      'k':'assets/croplist/cocoa-K.jpg',
    },
    {
      'image': 'assets/croplist/coconut.jpeg',
      'n':'assets/croplist/coconut-N.jpg',
      'p':'assets/croplist/coconut-P.jpg',
      'k':'assets/croplist/coconut-K.jpg',
    },
    {
      'image':'assets/croplist/pomegranate.jpeg',
      'n':'assets/croplist/pomegranate-N.jpg',
      'p':'assets/croplist/pomegranate-P.jpg',
      'k':'assets/croplist/pomegranate-K.jpg',
    },
    {
      'image': 'assets/croplist/field pea.jpeg',
      'n':'assets/croplist/field pea n .jpeg',
      'p':'assets/croplist/field pea p.jpeg',
      'k':'assets/croplist/field pea k.jpeg',
    },

  ];
  @override
  void initState() {
    // TODO: implement initState
   CropListCubit.get(context).getCropList();
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
                                                CropDeficiency(
                                                  id: CropListCubit.get(context)
                                                      .cropList[index].cropId
                                                      ,
                                                  name: CropListCubit.get(context)
                                                      .cropList[index]
                                                      .cropName, nImage:cropImage[index]['n'], pImage:cropImage[index]['p'], kImage:cropImage[index]['k'],
                                                )));
                                  },
                                ));
                          },
                          separatorBuilder: (context, int index) {
                            return const SizedBox(
                              height: 20,
                            );
                          },
                          itemCount:cropImage.length,
                        ) // CropCubit.get(context).cropList.length),
                        )
                  ],
                );
        },
      ),
    );
  }
}
