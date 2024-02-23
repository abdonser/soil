import 'package:flutter/material.dart';
import 'package:soil/app/app_color.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [   Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
        ),],
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext, int) {
            return ListTile(
              leading: Image.asset("assets/images/remender.png"),
              title: const Text("Reminder!",style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: const Text("It’s time to fertilize your soil "),
              trailing: const Text("2m"),
            );
          },
          separatorBuilder: (BuildContext, int) {
            return const Divider();
          },
          itemCount: 10),
    floatingActionButton:  FloatingActionButton(
      onPressed: () {

      },
      child: const Icon(Icons.delete_outline,color: AppColor.mainColor,),
    ),
    );
  }
}
