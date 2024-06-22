import 'package:flutter/material.dart';
import 'package:pharmacy_project/screans/startpage.dart';

import 'auth/login.dart';
import 'auth/signin.dart';

void main() {
  runApp( Pharmacy());
}

class Pharmacy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StartPage ()
    );

  }

  // startpage() {}
}

/*
Login(),
        routes: {
          "signup" : (context) => SignUp() ,
          "login" : (context) => Login()
        }


*/