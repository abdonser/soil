import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soil/Data/Reqest/cropDeficiency_info_request.dart';
import 'package:soil/Data/cubit/cropDeficieny_Info/crop_deficieny_info_cubit.dart';

class CropDeficiency extends StatefulWidget {
  int id;
  String name;
   CropDeficiency({super.key,required this.id,required this.name});

  @override
  State<CropDeficiency> createState() => _CropDeficiencyState();
}

class _CropDeficiencyState extends State<CropDeficiency> {
  @override
  void initState() {
    // TODO: implement initState

    CropDeficienyInfoCubit.get(context).getCropInfo(id: widget.id);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CropDeficienyInfoCubit, CropDeficienyInfoState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return state is CropDeficienyInfoLoading?CircularProgressIndicator():
      DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title:  Text(
            widget.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: const Icon(Icons.arrow_back_ios),
        ),
        body: Column(
          children: [
            const TabBar(
                automaticIndicatorColorAdjustment: true,
                labelColor: Colors.brown,
                unselectedLabelColor: Colors.black54,
                tabs: [
                  Tab(
                    height: 20,
                    child: Text(
                      "N defficiency",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "P defficiency",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "K defficiency",
                    ),
                  ),
                ]),
            Expanded(
              child: TabBarView(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          color: Colors.teal,
                          //CropDeficienyInfoCubit.get(context).npkdeficiency.nImage.toString()
                          child: Image.asset("assets/images/n.png"),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(17.0),
                          child: Text(
                              "1. Slow growth and overall weakness in the plants.\n"
                                  "2. Yellowing of lower leaves.\n"
                                  "3. Smaller and less dense leaves.\n"
                                  "4. Reduced fruit productivity, smaller size, and lower quality."),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        color: Colors.teal,
                        child: Image.asset("assets/images/p_deficiency.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(17.0),
                        child: Text(
                            "1. Slow growth and overall weakness in the plants.\n"
                                "2. Yellowing of lower leaves.\n"
                                "3. Smaller and less dense leaves.\n"
                                "4. Reduced fruit productivity, smaller size, and lower quality."),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        color: Colors.teal,
                        child: Image.asset("assets/images/k_deficiency.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(17.0),
                        child: Text(
                            "1. Slow growth and overall weakness in the plants.\n"
                                "2. Yellowing of lower leaves.\n"
                                "3. Smaller and less dense leaves.\n"
                                "4. Reduced fruit productivity, smaller size, and lower quality."),
                      ),
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  },
);
  }
}
