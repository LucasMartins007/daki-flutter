import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  TextStyle getDefaultTextStyle(double? size, Color? fontColor) {
    if (size == null) {
      size = 15;
    }
    if (fontColor == null) {
      fontColor = Colors.black;
    }
    return GoogleFonts.alef(
      fontSize: size,
      color: fontColor,
    );
  }

  TextStyle getDefaultTitleStyle(double? size, bool bold) {
    if (size == null) {
      size = 25;
    }
    if (bold) {
      return GoogleFonts.actor(fontSize: size, fontWeight: FontWeight.bold);
    }
    return GoogleFonts.actor(fontSize: size);
  }
}
