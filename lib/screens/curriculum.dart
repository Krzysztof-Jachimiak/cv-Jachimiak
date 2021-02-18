import 'package:animation_routes_riverpod_divizion/share/cv.dart';
import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/material.dart';

class Curriculum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.blueGrey[300]),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text('Curriculum Vitae', style: styleHeadBlack),
                ),
                Text('Krzysztof Jachimiak', style: styleHeadBlack),
              ],
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 60, 16, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Image.asset(
                  'assets/ja.png',
                  colorBlendMode: BlendMode.colorDodge,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 340, 16, 0),
              child: Container(height: 500, child: Cv()),
            ),

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16),
            //   child: Container(width: 400, height: 300, child: Cv()),
            // ),
          ],
        ),
      ),
    );
  }
}
