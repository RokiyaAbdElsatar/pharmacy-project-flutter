

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemTerbaru extends StatelessWidget {
  final String image;
  final Function() ontap;
  ItemTerbaru({ required this.image, required this.ontap}) ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      child: Column(
          children: [
             Image.asset(image,
               width: 230,
               height: 230,
             ),
          ]),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // تحديد حجم الزوايا للمربع
          side:BorderSide(
              color: Color(0xff7FBDEA)) ,

        ),
        // padding: EdgeInsets.all(0), // تحديد الهامش الداخلي للزر
      ),);}}
