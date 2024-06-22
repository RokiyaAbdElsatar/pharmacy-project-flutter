// import 'package:flutter/material.dart';
//
// import '../components/customlogo.dart';
// import '../components/custumbutton.dart';
// import '../components/textfield.dart';
// import 'login.dart';
//
//
// class SignUp extends StatefulWidget {
//   const SignUp({super.key});
//
//   @override
//   State<SignUp> createState() => _SignUpState();
// }
//
// class _SignUpState extends State<SignUp> {
//   TextEditingController email = TextEditingController();
//   TextEditingController password = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         child: ListView(children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(height: 50),
//               const CustomLogoAuth(),
//               Container(height: 20),
//               const Text("Sign Up",
//                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
//               Container(height: 10),
//               const Text("Sign Up To Continue Using The App",
//                   style: TextStyle(color: Colors.grey)),
//               Container(height: 20),
//
//               const Text(
//                 "Email",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//               ),
//               Container(height: 10),
//               CustomTextForm(
//                   hinttext: "ُEnter Your Email", mycontroller: email),
//               Container(height: 10),
//               const Text(
//                 "Password",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//               ),
//               Container(height: 10),
//               CustomTextForm(
//                   hinttext: "ُEnter Your Password", mycontroller: password),
//               // Container(
//               //   margin: const EdgeInsets.only(top: 10, bottom: 20),
//               //   alignment: Alignment.topRight,
//               //   child: const Text(
//               //     "Forgot Password ?",
//               //     style: TextStyle(
//               //       fontSize: 14,
//               //     ),
//               //   ),
//               // ),
//             ],
//           ),
//           CustomButtonAuth(title: "SignUp", onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                 return  Login();
//                 })
//                 );}
//           )
//
//         ]),
//       ),
//     );
//   }
// }