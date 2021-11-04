import 'package:flutter/material.dart';

class Utils {
  static double socialMidiaSize(
      Size screenSize, double maxWidth, double iconSize) {
    if (screenSize.width > maxWidth) {
      return iconSize;
    }
    return 0;
  }

  static Icon? resolveIcon(
      Size screenSize, IconData? icon, double maxWidth, double iconSize) {
    if (screenSize.width > maxWidth) {
      return Icon(
        icon,
        size: socialMidiaSize(screenSize, maxWidth, iconSize),
      );
    }
    return null;
  }
}
