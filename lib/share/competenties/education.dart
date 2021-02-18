import 'package:animation_routes_riverpod_divizion/controllers/strings_controllers.dart';
import 'package:animation_routes_riverpod_divizion/share/style.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class Education extends StatelessWidget {
  final _string = StringCEduController.the;
  @override
  Widget build(BuildContext context) {
    return Obx(() =>
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            _string.e1.toString(),
            style: styleheading,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            _string.e2.toString(),
            style: styleheading,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            _string.e3.toString(),
            style: styleprose,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            _string.e4.toString(),
            style: styleheading,
          ),
        ]));
  }
}
