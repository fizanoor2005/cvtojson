import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class AppTextStyles {
  static TextStyle headerTextStyle(
      {required Color color, fontWeight, fontsize}) {
    return GoogleFonts.rubik(
      fontSize: fontsize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  //  first text
  static TextStyle monteseratTextStyle(
      {required Color color, fontWeight, fontsize}) {
    return GoogleFonts.montserrat(
      fontSize: fontsize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle monteseratStyle(
      {required Color color, fontWeight, fontsize}) {
    return GoogleFonts.montserrat(
      fontSize: fontsize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // app bar
  static TextStyle HeadingStyle({
    required Color color,
    fontWeight,
    fontsize,
  }) {
    return GoogleFonts.rubik(
      fontSize: fontsize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle NormalTextStyle(
      {required Color color, fontWeight, fontsize}) {
    return GoogleFonts.signikaNegative(
      fontSize: fontsize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: 1,
      wordSpacing: 1,
    );
  }

  static TextStyle NormalStyle({required Color color, fontWeight, fontsize}) {
    return GoogleFonts.quicksand(
      fontSize: fontsize,
      // fontWeight: FontWeight.w200,
      color: color,
    );
  }

  static TextStyle simpletextStyle(
      {required Color color,
      fontWeight,
      fontsize,
      letterSpacing,
      wordSpacing}) {
    return GoogleFonts.raleway(
      fontSize: fontsize,
      fontWeight: FontWeight.bold,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      color: color,
    );
  }
}
