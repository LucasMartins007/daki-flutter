import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/decorations/CustomTextStyle.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyAgreement {
  RichText getPrivacyAgreemet() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              style: CustomTextStyle().getDefaultTextStyle(15, Colors.black),
              text: "Concordo com as "),
          TextSpan(
              style:
                  CustomTextStyle().getDefaultTextStyle(15, Colors.lightBlue),
              text: "Condições de Uso",
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  var url =
                      "https://www.google.com/channel/UCwxiHP2Ryd-aR0SWKjYguxw?view_as=subscriber";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                }),
          TextSpan(
              style: CustomTextStyle().getDefaultTextStyle(15, Colors.black),
              text: " e as "),
          TextSpan(
              style:
                  CustomTextStyle().getDefaultTextStyle(15, Colors.lightBlue),
              text: "Políticas de Privacidade.",
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  var url =
                      "https://www.google.com/channel/UCwxiHP2Ryd-aR0SWKjYguxw?view_as=subscriber";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                }),
        ],
      ),
    );
  }
}
