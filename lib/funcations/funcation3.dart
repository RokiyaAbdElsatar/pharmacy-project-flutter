import 'dart:math';

import 'package:flutter/material.dart';

class CurvedBottomClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    final roundingHeight = size.height * 3 / 5;


    final filledRectangle =
    Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);

    final roundingRectangle = Rect.fromLTRB(
        -160, size.height - roundingHeight * 2, size.width + 160, size.height);

    final path = Path();
    path.addRect(filledRectangle);


    path.arcTo(roundingRectangle, pi, -pi, true);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {

    return true;
  }
}