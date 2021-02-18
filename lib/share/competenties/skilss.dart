import 'package:animation_routes_riverpod_divizion/controllers/strings_controllers.dart';
import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class Skills extends StatelessWidget {
  final _string = StringCEduController.the;
  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  text: _string.s1.toString(),
                  style: styleheading,
                  children: [
                    WidgetSpan(
                        child: Image.asset(
                          'assets/flutter.png',
                          filterQuality: FilterQuality.high,
                          colorBlendMode: BlendMode.darken,
                          color: Colors.blueGrey[300],
                          height: 60,
                        ),
                        alignment: PlaceholderAlignment.middle),
                    TextSpan(text: _string.s2.toString(), style: styleprose),
                  ]),
            ),
            Text(_string.s3.toString(), style: styleheading),
            Text(_string.s4.toString(), style: styleprose),
          ],
        ));
  }
}
