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
              Icon(Icons.home, color: Colors.white, size: 28),
              Icon(Icons.phone, color: Colors.white, size: 28),
              Icon(Icons.email, color: Colors.white, size: 28)
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_string.ul.toString(), style: styleHeadBlack),
            Text(_string.tel.toString(), style: styleHeadBlack),
            Text(_string.email.toString(), style: styleHeadBlack),
          ],
        ),
      ],
    );
  }
}
