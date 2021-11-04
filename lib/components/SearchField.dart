import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web/utils/SizeHelper.dart';

class searchField extends StatefulWidget {
  final Color? backgroudColor;

  const searchField({Key? key, this.backgroudColor}) : super(key: key);

  @override
  _searchFieldState createState() => _searchFieldState();
}

class _searchFieldState extends State<searchField> {
  TextEditingController search = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      controller: TextEditingController(),
      enableInteractiveSelection: true,
      cursorColor: widget.backgroudColor,
      style: TextStyle(
        color: Colors.white,
        decorationColor: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: "Procure Aqui...",
        prefixIcon: Icon(
          Icons.search_rounded,
          color: Colors.white,
        ),
        suffixIcon: Icon(
          Icons.filter_alt_outlined,
          color: Colors.amber,
        ),
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white54),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
