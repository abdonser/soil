import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../app/custom_text.dart';


class SelectCropQuantity extends StatelessWidget {
  const SelectCropQuantity({super.key});

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
            height: MediaQuery.of(context).size.height / 2 + 180,
            width: 300,
            child: ListView.separated(
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, ),
                    child: InkWell(
                      onTap: (){},
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
                                backgroundImage: AssetImage("assets/images/potato.png"),
                                

                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("Potato",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),),
                            const SizedBox(
                              width: 180,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.navigate_next)),
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
                itemCount: 9),
          )
        ],
      ),
    );
  }
}
