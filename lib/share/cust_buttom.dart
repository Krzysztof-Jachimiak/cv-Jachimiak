import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustButtom extends StatelessWidget {
  final onPres;
  final color;
  final text;

  const CustButtom({Key key, this.color, this.text, this.onPres})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        onPressed: onPres,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            text,
            style: styleHeadWhite,
          ),
        ),
      ),
    );
  }
}
