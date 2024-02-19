import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Quantity crop'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Land area', style: TextStyle(fontSize: 18)),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {},
              ),
              Expanded(
                child: TextFormField(
                  initialValue: '2.0',
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(suffixText: 'Acre'),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 16),
          Image.asset("assets/images/login.png"),
          // Radio buttons for area unit selection
          // (Acre, Carat, Meter)
          SizedBox(height: 16),
          Text('Quantity of seeds', style: TextStyle(fontSize: 18)),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {},
              ),
              Expanded(
                child: TextFormField(
                  initialValue: '50',
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(suffixText: 'gm'),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Calculate button logic
            },
            child: Text('Calculate'),
          ),
          SizedBox(height: 16),
          Text('Quantity crop expected', style: TextStyle(fontSize: 18)),
          Text('0 Tons', style: TextStyle(fontSize: 24)),
        ],
      ),
    ),
    );
  }
}

