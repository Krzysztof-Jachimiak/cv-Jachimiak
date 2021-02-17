import 'package:animation_routes_riverpod_divizion/share/cv.dart';
import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Curriculum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.blueGrey[300]),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Curriculum Vitae', style: styleHeadBlack),
              Text('Krzysztof Jachimiak', style: styleHeadBlack),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 205,
                  child: Image.asset(
                    'assets/ja.png',
                    colorBlendMode: BlendMode.colorDodge,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(width: 400, height: 300, child: Cv()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
