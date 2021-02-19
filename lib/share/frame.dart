import 'package:animation_routes_riverpod_divizion/share/style.dart';

import 'package:flutter/material.dart';

class Frame extends StatelessWidget {
  final double width;
  final double height;
  final String assets;
  final Color color;

  Frame({this.width, this.height, this.color, this.assets});
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        width: width,
        height: height,
        decoration: dekoracja.copyWith(color: color),
      ),
      Container(
        decoration: dekoracja.copyWith(
            color: Colors.white,
            image: DecorationImage(
                fit: BoxFit.scaleDown, image: AssetImage(assets))),
        width: width * 0.90,
        height: height * 0.90,
      )
    ]);
  }
}
