import 'package:flutter_web/repositories/UserRepository.dart';
import 'package:flutter_web/repositories/UserController.dart';
import 'package:flutter_web/repositories/interfaces/IUserRepository.dart';
import 'package:get/get.dart';

class UserBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserRepository());
    Get.put(UserController(Get.find()));
  }
}
