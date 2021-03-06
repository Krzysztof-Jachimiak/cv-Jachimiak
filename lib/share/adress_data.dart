import 'package:animation_routes_riverpod_divizion/controllers/strings_controllers.dart';
import 'package:animation_routes_riverpod_divizion/share/style.dart';

import 'package:flutter/material.dart';

class AdresData extends StatelessWidget {
  final _string = StringCEduController.the;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            children: [
              Icon(
                Icons.home,
                color: AppColors.accentColor,
                size: 32,
              ),
              Icon(Icons.phone, color: AppColors.accentColor, size: 32),
              Icon(Icons.email, color: AppColors.accentColor, size: 32)
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_string.ul.toString(), style: styleHeadWhite),
            Text(_string.tel.toString(), style: styleHeadWhite),
            Text(_string.email.toString(), style: styleHeadWhite),
          ],
        ),
      ],
    );
  }
}
