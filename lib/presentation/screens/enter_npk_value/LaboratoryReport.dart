import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../app/app_color.dart';

class LaboratoryReport extends StatelessWidget {
  const LaboratoryReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded,size: 30,),
        ),
        title: const Text(
          "Report",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Download",
                    style: TextStyle(color: AppColor.mainColor, fontSize: 20),
                  ),
                ),
                const Icon(Icons.file_download_outlined,
                  color: AppColor.mainColor,size: 33,)



              ],
            ),
          ),
          Center(
            child: DataTable(
              columnSpacing: 70,
              border: const TableBorder(),
              decoration: BoxDecoration(
                  color:AppColor.mainColor,
                  border: Border.all(
                    color: AppColor.mainColor,
                  )),
              columns: const[
                DataColumn(
                    label: Text(
                      'Crops',
                      style: TextStyle(color: Colors.white),
                    )),
                DataColumn(
                  label: Text('N', style: TextStyle(color: Colors.white)),
                ),
                DataColumn(
                    label: Text('P', style: TextStyle(color: Colors.white))),
                DataColumn(
                    label: Text('K', style: TextStyle(color: Colors.white))),
              ],
              rows: const [
                DataRow(
                    color: MaterialStatePropertyAll(Color(0xffFFFFFF)),
                    cells: <DataCell>[
                      DataCell(Text('Potatos')),
                      DataCell(Text('2.6')),
                      DataCell(Text('1')),
                      DataCell(Text('4.5')),
                    ]),
                DataRow(
                    color: MaterialStatePropertyAll(Color(0xffDCCEC0)),
                    cells: <DataCell>[
                      DataCell(Text('Tomatoes')),
                      DataCell(Text('2.6')),
                      DataCell(Text('1')),
                      DataCell(Text('4.5')),
                    ]),
                DataRow(
                    color: MaterialStatePropertyAll(Color(0xffFFFFFF)),
                    cells: <DataCell>[
                      DataCell(Text('Tomatoes')),
                      DataCell(Text('2.6')),
                      DataCell(Text('1')),
                      DataCell(Text('4.5')),
                    ]),
                DataRow(
                    color: MaterialStatePropertyAll(Color(0xffDCCEC0)),
                    cells: <DataCell>[
                      DataCell(Text('Tomatoes')),
                      DataCell(Text('2.6')),
                      DataCell(Text('1')),
                      DataCell(Text('4.5')),
                    ]),
                DataRow(
                    color: MaterialStatePropertyAll(Color(0xffFFFFFF)),
                    cells: <DataCell>[
                      DataCell(Text('Tomatoes')),
                      DataCell(Text('2.6')),
                      DataCell(Text('1')),
                      DataCell(Text('4.5')),
                    ]),
                DataRow(
                    color: MaterialStatePropertyAll(Color(0xffDCCEC0)),
                    cells: <DataCell>[
                      DataCell(Text('Tomatoes')),
                      DataCell(Text('2.6')),
                      DataCell(Text('1')),
                      DataCell(Text('4.5')),
                    ]),
                DataRow(
                    color: MaterialStatePropertyAll(Color(0xffFFFFFF)),
                    cells: <DataCell>[
                      DataCell(Text('Tomatoes')),
                      DataCell(Text('2.6')),
                      DataCell(Text('1')),
                      DataCell(Text('4.5')),
                    ]),
                DataRow(
                    color: MaterialStatePropertyAll(Color(0xffDCCEC0)),
                    cells: <DataCell>[
                      DataCell(Text('Tomatoes')),
                      DataCell(Text('2.6')),
                      DataCell(Text('1')),
                      DataCell(Text('4.5')),
                    ]),

                // ... more rows
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                width: 327,
                height: 56,
                decoration: BoxDecoration(
                    color: AppColor.mainColor,
                    borderRadius: BorderRadius.circular(15)),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "Select crop",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
