import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_web/model/ErrorModel.dart';
import 'package:flutter_web/model/UserModel.dart';
import 'package:flutter_web/repositories/UserRepository.dart';
import 'package:http/http.dart' as http;

class UserService extends UserRepository {
  onSave(UserModel userModel, BuildContext context) async {
    try {
      http.Response response = await saveUser(userModel);

      ErrorModel? _error = response.statusCode == 400
          ? ErrorModel.fromMap(jsonDecode(response.body))
          : null;

      UserModel? _user = response.statusCode == 201
          ? UserModel.fromMap(jsonDecode(response.body))
          : null;

      if (_error != null) {
        message(context, _error);
      }

      if (_user != null) {
        message(context, _user);
      }
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
            "Ocorreu um erro no servidor, por favor entre em contato conosco."),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 2),
      ));
    }
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> message(
      BuildContext context, dynamic) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(utf8.decode(dynamic is UserModel
          ? dynamic.nome!.runes.toList()
          : dynamic.titulo!.runes.toList())),
      backgroundColor: dynamic is UserModel ? Colors.green : Colors.redAccent,
      duration: Duration(seconds: 2),
    ));
  }
}
