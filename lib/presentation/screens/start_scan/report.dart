import 'package:flutter/material.dart';

import '../../../app/app_color.dart';

class Report extends StatelessWidget {
  final List predictions;

  Report({required this.predictions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text(
          "Report",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
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
                      style: TextStyle(color: AppColor.mainColor, fontSize: 16),
                    ),
                  ),
                  const Icon(
                    Icons.file_download_outlined,
                    color: AppColor.mainColor,
                    size: 25,
                  )
                ],
              ),
            ),
            Center(
              child: DataTable(
                columnSpacing: 70,
                border: const TableBorder(),
                decoration: BoxDecoration(
                    color: AppColor.mainColor,
                    border: Border.all(
                      color: AppColor.mainColor,
                    )),
                columns: const [
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
                rows: predictions.map<DataRow>((prediction) {
                  return DataRow(
                    color: WidgetStateProperty.all(
                        predictions.indexOf(prediction) % 2 == 0
                            ? const Color(0xffFFFFFF)
                            : const Color(0xffDCCEC0)),
                    cells: <DataCell>[
                      DataCell(Text(prediction['crop'])),
                      DataCell(Text(prediction['NPK'][0].toString())),
                      DataCell(Text(prediction['NPK'][1].toString())),
                      DataCell(Text(prediction['NPK'][2].toString())),
                    ],
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 25),
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
