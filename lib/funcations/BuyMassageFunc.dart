// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
//
// void showCustomDialog(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text("Cart Number"),
//         content: TextField(),
//         actions: [
//           ElevatedButton(
//             onPressed: () async {
//               final player = AudioPlayer();
//               await player.play(AssetSource('audio/Pay.mp3'));
//               Navigator.of(context).pop();
//
//             },
//
//             child: Text("Buy Now"),
//           ),
//
//         ],
//       );
//     },
//   );
// }
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
//
// void showCustomDialog(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return StatefulBuilder(
//         builder: (context, setState) {
//           bool showImage = false; // Initially, the image is not visible
//
//           return AlertDialog(
//             title: Text("Cart Number"),
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextField(),
//                 if (showImage) Image(image: AssetImage('assets/verification/check validation.jpg')),
//               ],
//             ),
//             actions: [
//               ElevatedButton(
//                 onPressed: () async {
//                   final player = AudioPlayer();
//                   await player.play(AssetSource('audio/Pay.mp3'));
//
//                   // Show the image when "Buy Now" is clicked
//                   setState(() {
//                     showImage = true;
//                   });
//                 },
//                 child: Text("Buy Now"),
//               ),
//             ],
//           );
//         },
//       );
//     },
//   );
// }
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
//
// void showCustomDialog(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return StatefulBuilder(
//         builder: (context, setState) {
//           bool showImage = false; // Initially, the image is not visible
//
//           return AlertDialog(
//             title: Text("Cart Number"),
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextField(),
//                 if (showImage) Image(image: AssetImage('assets/verification/check validation.jpg')),
//               ],
//             ),
//             actions: [
//               ElevatedButton(
//                 onPressed: () async {
//                   final player = AudioPlayer();
//                   await player.play(AssetSource('audio/Pay.mp3'));
//
//                   // Show the image when "Buy Now" is clicked
//                   setState(() {
//                     showImage = true;
//                   });
//                 },
//                 child: Text("Buy Now"),
//               ),
//             ],
//           );
//         },
//       );
//     },
//   );
// }
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Cart Number"),
        content: TextField(),
        actions: [
          ElevatedButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource('audio/short-success.mp3'));
              Fluttertoast.showToast(
                msg: 'Purchase successful',
                toastLength: Toast.LENGTH_SHORT, // time it takes to still appear
                gravity: ToastGravity.BOTTOM, // where it appear
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.lightBlue[500],
                textColor: Colors.white,
                fontSize:20,
              );
              Navigator.of(context).pop();
            },
            child: Text("Buy Now"),
          ),
        ],
      );
    },
  );
}