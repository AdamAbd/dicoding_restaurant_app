import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFontWeight {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;
}

class CustomTextStyle {
  final TextStyle light = GoogleFonts.roboto(
    fontWeight: CustomFontWeight.light,
  );
  final TextStyle regular = GoogleFonts.roboto(
    fontWeight: CustomFontWeight.regular,
  );
  final TextStyle medium = GoogleFonts.roboto(
    fontWeight: CustomFontWeight.medium,
  );
  final TextStyle semiBold = GoogleFonts.roboto(
    fontWeight: CustomFontWeight.semiBold,
  );
  final TextStyle bold = GoogleFonts.roboto(
    fontWeight: CustomFontWeight.bold,
  );
  final TextStyle extraBold = GoogleFonts.roboto(
    fontWeight: CustomFontWeight.extraBold,
  );
  final TextStyle black = GoogleFonts.roboto(
    fontWeight: CustomFontWeight.black,
  );
}
