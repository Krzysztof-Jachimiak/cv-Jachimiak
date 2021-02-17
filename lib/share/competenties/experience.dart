import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:animation_routes_riverpod_divizion/strings/competenties.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class Experience extends StatelessWidget {
  final _string = StringCEduController.the;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
              text: _string.ex1.toString(),
              style: styleheading,
              children: [
                TextSpan(
                  text: _string.ex2.toString(),
                  style: styleprose,
                ),
                WidgetSpan(
                    child: Image.asset(
                      'assets/flutter.png',
                      colorBlendMode: BlendMode.darken,
                      color: Colors.blueGrey[300],
                      height: 60,
                    ),
                    alignment: PlaceholderAlignment.middle),
              ]),
        ),
        Text(
          _string.ex3.toString(),
          style: styleheading,
        ),
        Text(_string.ex4.toString(), style: styleprose),
        Text(_string.ex5.toString(), style: styleheading),
        Text(_string.ex6.toString(), style: styleprose),
        Text(_string.ex7.toString(), style: styleheading),
        Text(_string.ex8.toString(), style: styleprose),
        Text(_string.ex9.toString(), style: styleheading),
        Text(_string.ex10.toString(), style: styleheading),
      ]),
    );
  }
}
