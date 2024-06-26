import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:soil/Data/cubit/npk_cubit.dart';
import 'package:soil/app/app_color.dart';
import 'package:soil/app/custom_app_bar.dart';
import 'TableResultCrop.dart';
import 'custom_buttons_row.dart';
import 'custom_npk_values.dart';

class YourCropView extends StatefulWidget {
  int id;
  String name;
  String image;
  YourCropView({super.key, required this.id, required this.name,required this.image});

  @override
  State<YourCropView> createState() => _YourCropViewState();
}

class _YourCropViewState extends State<YourCropView> {
  @override
  void initState() {
    // TODO: implement initState
    NpkCubit.get(context).getNpk(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NpkCubit, NpkState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return state is NpkLoading
            ? const Center(
                child: CircularProgressIndicator(
                color: AppColor.mainColor,
              ))
            : Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Scaffold(
                    body: Column(
                      children: [
                        const SizedBox(
                          height: 70,
                          child: CustomAppBar(
                            text: "Your Crop",
                            backArrow: Icons.arrow_back_ios,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                             CircleAvatar(
                              backgroundColor: Color(0xffD9D9D9),
                              radius: 150 / 2,
                              backgroundImage:
                                  AssetImage(widget.image),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              children: [
                                Text(
                                  widget.name,
                                  style: const TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 8),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColor.mainColor),
                                    color: const Color(0xff895B2D)
                                        .withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  height: 70,
                                  width: 120,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      NpkValues(
                                        name: 'N',
                                        value:
                                            "${NpkCubit.get(context).npkModel.npk?.n}",
                                      ),
                                      NpkValues(
                                        name: 'P',
                                        value:
                                            "${NpkCubit.get(context).npkModel.npk?.p}",
                                      ),
                                      NpkValues(
                                        name: 'K',
                                        value:
                                            " ${NpkCubit.get(context).npkModel.npk?.k}",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Column(
                          children: [
                             const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomButtonsRow(
                                  text: 'Irrigation', color: AppColor.secondColor, color2: Colors.brown,
                                  //icon: FontAwesomeIcons.iceCream,
                                ),
                                CustomButtonsRow(
                                  text: 'Fertilizer', color: AppColor.mainColor, color2: Colors.white,
                                  //icon: FontAwesomeIcons.icons,
                                ),
                                CustomButtonsRow(
                                  text: 'Length', color: AppColor.secondColor, color2: Colors.brown,
                                 // icon: FontAwesomeIcons.icons,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Type",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    "Date",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    "Done",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            const CustomTableResult(),
                            const Divider(),
                            const CustomTableResult(),
                            const Divider(),
                            const CustomTableResult(),
                            const Divider(),
                            const CustomTableResult(),
                            const Divider(),
                            const CustomTableResult(),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }
}
