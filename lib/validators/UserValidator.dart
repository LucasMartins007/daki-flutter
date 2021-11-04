import 'package:brasil_fields/brasil_fields.dart';
import 'package:validadores/ValidarEmail.dart';

class UserValidator {
  static bool isEmpty(String? value) {
    return value != null && value.length == 0;
  }

  static String? validateName(String? value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (isEmpty(value)) {
      return "O nome é obrigatório";
    }
    if (!regExp.hasMatch(value!)) {
      return "Nome inválido";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    String pattern = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$';
    RegExp regExp = new RegExp(pattern);
    if (isEmpty(value)) {
      return "A senha é obrigatória";
    }
    if (!regExp.hasMatch(value!)) {
      return "A senha deve conter no mínimo 6 caracteres e um número";
    }
    return null;
  }

  static String? validateCpf(String? value) {
    if (isEmpty(value)) {
      return "O CPF é obrigatório";
    }
    if (!CPFValidator.isValid(value!)) {
      return "CPF informado é inválido";
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (isEmpty(value)) {
      return "O email é obrigatório";
    }
    if (!EmailValidator.validate(value)) {
      return "O email digitado é inválido";
    }
    return null;
  }
}
