import 'package:flutter/material.dart';

class CustomCheckBox {
  Checkbox getCustomCheckbox(bool isChecked, Function(bool?) onChange) {
    return Checkbox(
      checkColor: Colors.white,
      value: isChecked,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      onChanged: onChange,
    );
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.black;
    }
    return Colors.black54;
  }
}
