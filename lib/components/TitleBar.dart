import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class titleBar extends StatefulWidget {
  final String title;

  const titleBar({Key? key, required this.title}) : super(key: key);

  @override
  _titleBarState createState() => _titleBarState();
}

class _titleBarState extends State<titleBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
