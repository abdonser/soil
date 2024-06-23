import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RiceQuantity extends StatefulWidget {
  const RiceQuantity({super.key});

  @override
  State<RiceQuantity> createState() => _RiceQuantityState();
}

class _RiceQuantityState extends State<RiceQuantity> {
  final mycontroller = TextEditingController();
  final TextEditingController _areaController = TextEditingController();
  final TextEditingController _seedsController = TextEditingController();
  int area = 1;
  int seeds = 1;
  String? measure = "Meter";
  double result = 0.0;

  @override
  void dispose() {
    _areaController.dispose();
    _seedsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: const Text(
          "Quantity crop",
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Land area",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: FloatingActionButton(
                  backgroundColor: Color(0xff895B2D),
                  shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      area--;
                      _areaController.text = area.toString();
                    });
                  },
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 150,
                  height: 100,
                  child: TextField(
                    controller: _areaController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: '1',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    onChanged: (text) {
                      // Handle user input here (optional)
                      try {
                        setState(() {
                          area = int.parse(text);
                        });
                      } catch (e) {
                        // Handle invalid input (optional)
                      }
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                shape: CircleBorder(),
                backgroundColor: Color(0xff895B2D),
                onPressed: () {
                  setState(() {
                    area++;
                    _areaController.text = area.toString();
                  });
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Choose the area unit",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          RadioListTile(
              title: Text("Acre"),
              value: "Acre",
              groupValue: measure,
              onChanged: (val) {
                setState(() {
                  measure = val;
                  result = 0;
                });
              }),
          RadioListTile(
              title: Text("Carat"),
              value: "Carat",
              groupValue: measure,
              onChanged: (val) {
                setState(() {
                  measure = val;
                  result = 0;
                });
              }),
          RadioListTile(
              title: Text("Meter"),
              value: "Meter",
              groupValue: measure,
              onChanged: (val) {
                setState(() {
                  measure = val;
                  result = 0;
                });
              }),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Quantity of seeds",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: FloatingActionButton(
                  backgroundColor: Color(0xff895B2D),
                  shape: CircleBorder(),
                  onPressed: () {
                    setState(() {
                      seeds--;
                      _seedsController.text = seeds.toString();
                    });
                  },
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 150,
                  height: 100,
                  child: TextField(
                    controller: _seedsController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "1",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    onChanged: (seed) {
                      // Handle user input here (optional)
                      try {
                        setState(() {
                          seeds = int.parse(seed);
                        });
                      } catch (e) {
                        // Handle invalid input (optional)
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                shape: CircleBorder(),
                backgroundColor: Color(0xff895B2D),
                onPressed: () {
                  setState(() {
                    seeds++;
                    _seedsController.text = seeds.toString();
                  });
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff895B2D),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      if (measure == "Acre") {
                        result = (area * 125/24).toDouble() ;
                      } else if (measure == "Carat") {
                        result = (area * 125).toDouble() ;
                      } else {
                        result = (area).toDouble() * seeds / 10;
                      }
                      print(result);
                      //   }
                    });
                  },
                  child: const Center(
                    child: Text(
                      "Calculate",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Quantity crop expected",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 25, right: 150, bottom: 10, top: 10),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.brown)),
                width: 150,
                height: 70,
                // color:Colors.brown,
                child: Center(
                    child: Text(
                  "$result kg/$measure",
                  style: const TextStyle(fontSize: 20),
                ))),
          )
        ],
      ),
    );
  }
}
