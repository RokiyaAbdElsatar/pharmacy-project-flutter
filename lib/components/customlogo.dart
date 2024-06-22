import 'package:flutter/material.dart';

class CustomLogoAuth extends StatelessWidget {
  const CustomLogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          width: 120,
          height: 120,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(560)),
          child: Image.asset(
            "assets/logn and signup/login.png",
            height: 550,
            // fit: BoxFit.fill,
          )),
    );
  }
}