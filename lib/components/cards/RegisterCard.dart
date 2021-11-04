import 'package:flutter/material.dart';
import 'package:flutter_web/components/CustomDivider.dart';
import 'package:flutter_web/components/SocialMidia.dart';
import 'package:flutter_web/decorations/CardDecoration.dart';
import 'package:flutter_web/forms/RegisterForm.dart';

class RegisterCard extends StatefulWidget {
  const RegisterCard({Key? key}) : super(key: key);

  @override
  _RegisterCardState createState() => _RegisterCardState();
}

class _RegisterCardState extends State<RegisterCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: RegisterForm(),
        ),
        Container(
          child: Container(
            padding: EdgeInsets.only(bottom: 20, top: 40),
            width: 400,
            child: CustomDivider()
                .getCustomDivider("Acesse com suas mídias sociais", 20),
          ),
        ),
        Container(
          child: Container(
            width: 300,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 20),
            child: SocialMedia(),
          ),
        ),
      ],
    );
  }
}
