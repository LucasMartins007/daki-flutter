import 'package:flutter/material.dart';
import 'package:flutter_web/decorations/CustomTextStyle.dart';

class CustomDivider {
  Row getCustomDivider(String label, double horizontalPadding) {
    return Row(
      children: <Widget>[
        Expanded(
          child: new Container(
              margin: EdgeInsets.only(right: horizontalPadding),
              child: Divider(
                color: Colors.black,
                height: 10,
              )),
        ),
        Text(
          label,
          style: CustomTextStyle().getDefaultTitleStyle(15, false),
        ),
        Expanded(
          child: new Container(
              margin: EdgeInsets.only(left: horizontalPadding),
              child: Divider(
                color: Colors.black,
                height: 10,
              )),
        ),
      ],
    );
  }
}
