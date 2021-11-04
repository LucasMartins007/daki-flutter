import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/components/CustomCheckBox.dart';
import 'package:flutter_web/components/CustomDivider.dart';
import 'package:flutter_web/components/PrivacyAgreement.dart';
import 'package:flutter_web/components/SocialMidia.dart';
import 'package:flutter_web/components/CustomFieldDecoration.dart';
import 'package:flutter_web/decorations/CardDecoration.dart';
import 'package:flutter_web/decorations/CustomButtonStyle.dart';
import 'package:flutter_web/decorations/CustomTextStyle.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:validadores/validadores.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: Text("Faça seu Login",
                  style: CustomTextStyle().getDefaultTitleStyle(null, true)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: TextFormField(
              decoration: customFieldDecoration.setDecoration(
                  "E-mail", "Digite seu e-mail", null, null, false),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: TextFormField(
              obscureText: _obscureText,
              decoration: customFieldDecoration.setDecoration(
                  "Senha",
                  "Digite sua senha",
                  Icon(
                    Icons.mail_outline,
                    color: Colors.black87,
                  ),
                  GestureDetector(
                    child: Icon(
                      _obscureText == false
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.black87,
                    ),
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  true),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: CustomCheckBox().getCustomCheckbox(isChecked,
                      (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  }),
                ),
                Expanded(
                  child: PrivacyAgreement().getPrivacyAgreemet(),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                child: Text("Entrar"),
                style: CustomButtonStyle().getCustomButtonStyle(
                    20, 130, 17, Color.fromARGB(1000, 32, 32, 32)),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
