import 'package:flutter_web/model/UserModel.dart';
import 'package:http/http.dart' as http;

abstract class IUserRepository {
  Future<List<UserModel>> findAllUsers();

  Future<http.Response> saveUser(UserModel userModel);
}
