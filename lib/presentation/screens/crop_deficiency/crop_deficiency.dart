import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soil/Data/Reqest/cropDeficiency_info_request.dart';
import 'package:soil/Data/cubit/cropDeficieny_Info/crop_deficieny_info_cubit.dart';

class CropDeficiency extends StatefulWidget {
  int id;
  String name;
  String nImage;
  String pImage;
  String kImage ;

   CropDeficiency({super.key,required this.id,required this.name,required this.nImage,required this.pImage,required this.kImage});

  @override
  State<CropDeficiency> createState() => _CropDeficiencyState();
}

class _CropDeficiencyState extends State<CropDeficiency> {
  // final List<Map<String, dynamic>> cropImage = [
  //   {'image':'assets/npk_difincy/apple n.jpeg'},
  //   {'image':'assets/npk_difincy/apple p.jpeg'},
  //   {'image':'assets/npk_difincy/apple k.jpeg'},
  // ];
  
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
                          child:Image.asset(widget.nImage) ,//Image.network(CropDeficienyInfoCubit.get(context).npkdeficiency.nImage.toString()),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(17.0),
                          child: Text(
                              "1. Slow growth and overall weakness in the plants.\n"
                                  "2. Yellowing of lower leaves.\n"
                                  "3. Smaller and less dense leaves.\n"
                                  "4. Reduced fruit productivity, smaller size, and lower quality.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16 ),),
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
                        child:Image.asset(widget.pImage) ,//Image.network(CropDeficienyInfoCubit.get(context).npkdeficiency.pImage.toString()),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(17.0),
                        child: Text(
                            "1. Slow growth and overall weakness in the plants.\n"
                                "2. Yellowing of lower leaves.\n"
                                "3. Smaller and less dense leaves.\n"
                                "4. Reduced fruit productivity, smaller size, and lower quality.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
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
                        child:Image.asset(widget.kImage),// Image.network(CropDeficienyInfoCubit.get(context).npkdeficiency.kImage.toString()),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(17.0),
                        child: Text(
                            "1. Slow growth and overall weakness in the plants.\n"
                                "2. Yellowing of lower leaves.\n"
                                "3. Smaller and less dense leaves.\n"
                                "4. Reduced fruit productivity, smaller size, and lower quality.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
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
