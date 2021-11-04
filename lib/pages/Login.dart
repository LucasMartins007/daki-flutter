import 'package:flutter/material.dart';
import 'package:flutter_web/components/CustomAppBar.dart';
import 'package:flutter_web/components/CustomDivider.dart';
import 'package:flutter_web/components/SocialMidia.dart';
import 'package:flutter_web/components/BottomBar.dart';
import 'package:flutter_web/components/cards/LoginCard.dart';
import 'package:flutter_web/components/CustomFieldDecoration.dart';
import 'package:flutter_web/components/SearchField.dart';
import 'package:flutter_web/components/TabBar.dart';
import 'package:flutter_web/components/TitleBar.dart';
import 'package:flutter_web/components/TopAppBar.dart';
import 'package:flutter_web/decorations/CardDecoration.dart';
import 'package:flutter_web/decorations/CustomButtonStyle.dart';
import 'package:flutter_web/forms/LoginForm.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBar(null).getCustomAppBar(screenSize, null, false),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40),
        child: Center(
          child: Container(
            width: 500,
            height: 600,
            decoration: CardDecoration().getCardDecoration(null, null, null),
            child: LoginCard(),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
