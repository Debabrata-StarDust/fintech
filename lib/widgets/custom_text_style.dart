import 'dart:ui';

import 'package:fintech/core/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  static bigHeading(
      {required Color color, double? fontSize, FontWeight? fontWeight}) {
    return GoogleFonts.roboto(
      fontSize: fontSize ?? 35,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color,
    );
  }

  static title(
      {required Color color, double? fontSize, FontWeight? fontWeight}) {
    return GoogleFonts.roboto(
        fontSize: fontSize ?? 27,
        fontWeight: FontWeight.w600,
        color: color,
       );
  }

  static subHeading(
      {required Color color, double? fontSize, FontWeight? fontWeight}) {
    return GoogleFonts.roboto(
      fontSize: fontSize ?? 17,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color,
    );
  }

  static subtitle(
      {required Color color, double? fontSize, FontWeight? fontWeight}) {
    return GoogleFonts.roboto(
      fontSize: fontSize ?? 17,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color,
    );
  }
}
