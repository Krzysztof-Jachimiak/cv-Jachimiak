import 'package:flutter/material.dart';
import 'dart:ui';

class Logo extends StatelessWidget {
  final colorBlendMode;
  final color;
  final double width;
  final double height;
  Logo({this.color, this.width, this.height, this.colorBlendMode});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/dartlogo.png',
      colorBlendMode: colorBlendMode,
      color: color,
      width: width,
      height: height,
    );
  }
}
