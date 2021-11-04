import 'dart:convert';

import 'package:flutter_web/model/EmailModel.dart';
import 'package:flutter_web/model/TelefoneModel.dart';

class UserModel {
  int? id;
  String? nome;
  TelefoneModel? telefone;
  EmailModel? email;
  String? cpf;
  String? cnpj;
  String? senha;
  bool? ativo;

  UserModel({
    this.id,
    this.nome,
    this.telefone,
    this.email,
    this.cpf,
    this.cnpj,
    this.senha,
    this.ativo,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'telefone': telefone?.toMap(),
      'email': email?.toMap(),
      'cpf': cpf,
      'cnpj': cnpj,
      'senha': senha,
      'ativo': ativo,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      nome: map['nome'] ?? '',
      telefone: TelefoneModel.fromMap(map['telefone']),
      email: EmailModel.fromMap(map['email']),
      cpf: map['cpf'] ?? '',
      cnpj: map['cnpj'] ?? '',
      senha: map['senha'] ?? '',
      ativo: map['ativo'] ?? true,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
