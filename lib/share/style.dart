import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/painting.dart';

final TextStyle styleHeadBlack = GoogleFonts.lato(
    color: AppColors.Black, fontSize: 24, fontWeight: FontWeight.w300);
final TextStyle styleHeadWhite = GoogleFonts.lato(
    color: AppColors.White, fontSize: 24, fontWeight: FontWeight.w300);
final TextStyle styleprose = GoogleFonts.roboto(
    color: AppColors.Grey, fontWeight: FontWeight.w400, fontSize: 16);
final TextStyle styleheading = GoogleFonts.lato(
    color: AppColors.White, fontWeight: FontWeight.w600, fontSize: 18);
final BoxDecoration dekoracja = BoxDecoration(
  borderRadius: BorderRadius.circular(8),
);

abstract class AppColors {
  static const Color Grey = Colors.grey;
  static const Color Black = Colors.black;
  static const Color White = Colors.white;

  static const Color backgroundColor = Color(0xFF191D1F);

  static const Color backgroundFadedColor = Color(0xFF191B1C);

  static const Color cardColor = Color(0xFF1F2426);

  static const Color accentColor = Color(0xFFef8354);
}
