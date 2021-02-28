import 'package:animation_routes_riverpod_divizion/share/cv.dart';
import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/material.dart';

class Curriculum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: AppColors.backgroundFadedColor),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text('Curriculum Vitae', style: styleHeadWhite),
                ),
                Text('Krzysztof Jachimiak', style: styleHeadWhite),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.16,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.64,
                child: Image.asset(
                  'assets/profilePicture.png',
                  colorBlendMode: BlendMode.colorDodge,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.68,
              ),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  child: Cv()),
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
