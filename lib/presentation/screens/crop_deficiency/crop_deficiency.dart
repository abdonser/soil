import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CropDeficiency extends StatelessWidget {
  const CropDeficiency({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Tomatoes",
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
  }
}
