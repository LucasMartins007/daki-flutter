import 'package:flutter/material.dart';
import 'package:flutter_web/components/CustomDivider.dart';
import 'package:flutter_web/components/SocialMidia.dart';
import 'package:flutter_web/decorations/CustomButtonStyle.dart';
import 'package:flutter_web/forms/LoginForm.dart';

class LoginCard extends StatefulWidget {
  const LoginCard({Key? key}) : super(key: key);

  @override
  _LoginCardState createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: LoginForm(),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          width: 150,
          child: SocialMedia(),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          width: 400,
          child: CustomDivider().getCustomDivider("Novo na Daki?", 10),
        ),
        Container(
          width: 400,
          padding: EdgeInsets.only(top: 20),
          child: Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              child: Text("Crie sua conta"),
              style: CustomButtonStyle().getCustomButtonStyle(
                  20, 100, 17, Color.fromARGB(1000, 32, 32, 32)),
              onPressed: () => Navigator.pushNamed(context, 'register'),
            ),
          ),
        ),
      ],
    );
  }
}
