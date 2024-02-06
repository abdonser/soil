import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soil/app/app_color.dart';
import 'package:soil/presentation/screens/start_scan/report.dart';

class ResultScan extends StatelessWidget {
  const ResultScan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reslut Scan"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
         // height: MediaQuery.of(context).size.height,
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: AppColor.mainColor,)
                  ),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 50,
                          child: const Card(
                            shape: Border(),
                            child: ListTile(

                              leading: Text(
                                "element",
                                style: TextStyle(
                                    color: AppColor.mainColor, fontSize: 18),
                              ),
                              trailing: Text("value",
                                  style: TextStyle(
                                      color: AppColor.mainColor, fontSize: 18)),
                            ),
                          ),
                        );
                      },

                      itemCount: 4),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  decoration: BoxDecoration(
                    color: const Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: AppColor.mainColor,)
                  ),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 50,
                          child: const Card(
                            child: ListTile(

                              leading: Text(
                                "element",
                                style: TextStyle(
                                    color: AppColor.mainColor, fontSize: 18),
                              ),
                              trailing: Text("value",
                                  style: TextStyle(
                                      color: AppColor.mainColor, fontSize: 18)),
                            ),
                          ),
                        );
                      },

                      itemCount: 4),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  decoration: BoxDecoration(
                    color: const Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: AppColor.mainColor,)
                  ),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(height: 50,
                          child: const Card(

                            child: ListTile(
                              horizontalTitleGap: 10,
                              minVerticalPadding: 10,

                              leading: Text(
                                "element",
                                style: TextStyle(
                                    color: AppColor.mainColor, fontSize: 18),
                              ),
                              trailing: Text("value",
                                  style: TextStyle(
                                      color: AppColor.mainColor, fontSize: 18)),
                            ),
                          ),
                        );
                      },

                      itemCount: 4),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 327,
                    height: 56,
                    decoration: BoxDecoration(
                      color: AppColor.mainColor,
                      borderRadius: BorderRadius.circular(15)


                    ),

                    child: MaterialButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>const Report()));
                    },child: Text("Stop Scan",style: TextStyle(color: Colors.white,fontSize: 18),),)),
              )


            ],

          ),
        ),


      ),





    );
  }
}
