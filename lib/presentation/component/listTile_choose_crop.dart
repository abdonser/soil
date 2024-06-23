import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CostomListTile extends StatelessWidget {
  String?image;
  String?text;
  Function()? onTap;
   CostomListTile({super.key,required this.image,required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return   ListTile(
        leading: CircleAvatar(
          child: Image.asset(
           image!,
          ),
        ),
        title: Text(
         text!,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: onTap

          ,
        ));
  }
}
