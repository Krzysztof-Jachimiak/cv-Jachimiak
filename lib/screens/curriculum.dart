import 'package:animation_routes_riverpod_divizion/share/cv.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Curriculum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.blueGrey[200]),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Curriculum Vitae                  Krzysztof Jachimiak',
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
              ),
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
