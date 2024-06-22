import 'package:flutter/material.dart';


import 'auth/login.dart';
import 'components/customlogo.dart';
import 'components/custumbutton.dart';
import 'components/textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
            children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 50),
              const CustomLogoAuth(),
              Container(height: 50),
              const Text("Sign Up",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  )),
              Container(height: 20),
              const Text("Sign Up To Continue Using The App",
                  style: TextStyle(color: Colors.grey)),
              Container(height: 22),
              const Text(
                "username",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(height: 15),
              CustomTextForm(
                  hinttext: "ُEnter Your username", mycontroller: username),
              Container(height: 22),
              const Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(height: 15),
              CustomTextForm(
                  hinttext: "ُEnter Your Email", mycontroller: email),
              Container(height: 22),
              const Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(height: 15),
              CustomTextForm(
                  hinttext: "ُEnter Your Password", mycontroller: password),
            ],
          ),
              Container(height: 30),

              CustomButtonAuth(title: "Sign Up", onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  Login();
                })
                );}
              ) ,
              Container(height: 20),

          Container(height: 20),
        ]),
      ),
    );
  }
}