import 'package:flutter_web/model/UserModel.dart';
import 'package:flutter_web/repositories/interfaces/IUserRepository.dart';
import 'package:get/get.dart';

class UserController extends GetxController with StateMixin {
  final IUserRepository _iUserRepository;

  UserController(this._iUserRepository);

  @override
  void onInit() {
    super.onInit();
  }

  void findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _iUserRepository.findAllUsers();
      change(dados, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error('Erro ao buscar usuários'));
    }
  }

  Future<dynamic> saveUser(UserModel userModel) async {
    final dynamic dados;
    try {
      dados = await _iUserRepository.saveUser(userModel);
    } catch (e) {
      return 'Erro ao salvar usuário';
    }
  }
}
