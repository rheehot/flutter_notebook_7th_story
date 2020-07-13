
import 'package:flutter/material.dart';

class MainCustomClipper extends CustomClipper<Path>{
  double radius = 50.0;
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.lineTo(size.width - radius, 0);
    path.lineTo(size.width, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }


}