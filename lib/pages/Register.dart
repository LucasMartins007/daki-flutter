import 'package:flutter/material.dart';
import 'package:flutter_web/components/CustomDivider.dart';
import 'package:flutter_web/components/SocialMidia.dart';
import 'package:flutter_web/components/BottomBar.dart';
import 'package:flutter_web/components/cards/RegisterCard.dart';
import 'package:flutter_web/components/TopAppBar.dart';
import 'package:flutter_web/decorations/CardDecoration.dart';
import 'package:flutter_web/forms/RegisterForm.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        toolbarHeight: 100,
        backgroundColor: Color.fromARGB(1000, 32, 32, 32),
        title: TopAppBar(),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40),
        child: Center(
          child: Container(
            width: 500,
            decoration: CardDecoration().getCardDecoration(null, null, null),
            child: RegisterCard(),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
