import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/material.dart';

class VerticalKJ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(48))),
      child: RotatedBox(
        quarterTurns: 3,
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Krzysztof Jachimiak',
              style: styleHeadWhite,
              textScaleFactor: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
