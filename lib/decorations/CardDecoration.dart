import 'package:flutter/material.dart';

class CardDecoration {
  BoxDecoration getCardDecoration(
      Color? color, BorderRadius? borderRadius, Border? border) {
    if (borderRadius == null) {
      borderRadius = BorderRadius.all(const Radius.circular(40.0));
    }
    if (border == null) {
      border = Border.all(color: Colors.black54);
    }

    return BoxDecoration(
      color: color,
      borderRadius: borderRadius,
      border: border,
    );
  }
}
