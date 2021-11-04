import 'package:flutter/material.dart';
import 'package:flutter_web/decorations/CustomTextStyle.dart';

class CustomButtonStyle {
  ButtonStyle getCustomButtonStyle(double? verticalSize, double? horizontalSize,
      double? textSize, Color buttonColor) {
    if (verticalSize == null) {
      verticalSize = 15;
    }
    if (horizontalSize == null) {
      horizontalSize = 50;
    }

    return ElevatedButton.styleFrom(
        primary: buttonColor,
        textStyle: CustomTextStyle().getDefaultTitleStyle(textSize, false),
        padding: EdgeInsets.only(
            left: horizontalSize,
            right: horizontalSize,
            top: verticalSize,
            bottom: verticalSize));
  }
}
