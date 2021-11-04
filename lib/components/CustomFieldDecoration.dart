import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customFieldDecoration {
  static InputDecoration setDecoration(String label, String? hint, Icon? icone,
      GestureDetector? detector, bool obscureText) {
    Widget? suffix;

    if (obscureText) {
      suffix = detector;
    } else {
      suffix = icone;
    }

    return InputDecoration(
      labelStyle: TextStyle(color: Colors.black87),
      labelText: label,
      hintText: hint,
      suffixIcon: suffix,
      alignLabelWithHint: true,
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: 1.0,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black54,
        ),
      ),
    );
  }
}
