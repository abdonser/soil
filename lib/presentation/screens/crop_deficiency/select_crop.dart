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
                      height: MediaQuery.of(context).size.height / 2 + 180,
                      width: 300,
                      child: ListView.separated(
                          itemBuilder: (context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    // color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  height: 50,
                                  width: 370,
                                  child: Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundImage: AssetImage(
                                              "assets/images/potato.png"),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        CropCubit.get(context)
                                            .cropList[index]
                                            .cropName,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 200),
                                        child: IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (builder) =>
                                                          CropDeficiency(
                                                            id: CropCubit.get(
                                                                    context)
                                                                .cropList[index]
                                                                .id,
                                                            name: CropCubit.get(
                                                                    context)
                                                                .cropList[index]
                                                                .cropName,
                                                          )));
                                            },
                                            icon: Icon(Icons.navigate_next)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, int index) {
                            return const SizedBox(
                              height: 20,
                            );
                          },
                          itemCount: CropCubit.get(context).cropList.length),
                    )
                  ],
                );
        },
      ),
    );
  }
}
