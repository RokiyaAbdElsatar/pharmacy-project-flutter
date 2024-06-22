import 'package:flutter/material.dart';

import '../components/customlogo.dart';
import '../components/custumbutton.dart';
import '../components/textfield.dart';
import '../homepage.dart';
import '../screans/homepage.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 50),
              const CustomLogoAuth(),
              Container(height: 50),
              const Text("Login",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)
              ),
              Container(height: 20),
              const Text("Login To Continue Using The App",
                  style: TextStyle(color: Colors.grey)),
              Container(height: 25),
              const Text(
                "Email",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Container(height: 15),
              CustomTextForm(
                  hinttext: "ُEnter Your Email", mycontroller: email),
              Container(height: 25),
              const Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(height: 15),
              CustomTextForm(
                  hinttext: "ُEnter Your Password", mycontroller: password),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 23),
                alignment: Alignment.topRight,
                child: const Text(
                  "Forgot Password ?",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          CustomButtonAuth(
              title: "login",
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Homepage();
              }));
              }),
                Container(height: 25),
                Padding(
                  padding:  EdgeInsets.only(left: 58),
                  child: Row(
                      children: [
                      Text(
                      "Don't Have An Account ? ",
                     ),
                     GestureDetector(
                       onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  SignUp();
                   }
                   ));},
                       child: Text(
                       "Register",
                       style: TextStyle(
                       color: Colors.blue,
                           fontWeight: FontWeight.bold)),
                     ),
                    ]
                      ),
                ),
        ]),
      ),
    );
  }
}