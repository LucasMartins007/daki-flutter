import 'package:flutter/material.dart';
import 'package:flutter_web/components/CustomDivider.dart';
import 'package:flutter_web/decorations/CardDecoration.dart';
import 'package:flutter_web/pages/Register.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  _SocialMediaState createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.only(bottom: 30),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.facebook,
                  size: 40,
                  color: Colors.blue.shade800,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  LineAwesomeIcons.instagram,
                  size: 40,
                  color: Colors.red.shade500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(),
                child: Icon(
                  LineIcons.googlePlusG,
                  size: 40,
                  color: Colors.red.shade700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
