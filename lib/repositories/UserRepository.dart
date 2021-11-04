import 'dart:convert';

import 'package:flutter_web/model/UserModel.dart';
import 'package:flutter_web/utils/Constants.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_web/repositories/interfaces/IUserRepository.dart';

class UserRepository implements IUserRepository {
  String PATH = "cliente/";
  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await http.get(Uri.parse(BASE_URL + PATH + "listar"));
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }

  @override
  Future<http.Response> saveUser(UserModel userModel) async {
    final response = await http.post(
      Uri.parse(BASE_URL + PATH + "salvar"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: userModel.toJson(),
    );
    return response;
  }
}
