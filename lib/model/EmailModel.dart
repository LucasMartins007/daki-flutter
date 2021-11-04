import 'dart:convert';

class EmailModel {
  int? id;
  String? email;
  bool? principal;

  EmailModel({
    this.id,
    this.email,
    this.principal,
  });

  Map<String, dynamic> toMap() {
    return {'id': id, 'descricao': email, 'principal': principal};
  }

  factory EmailModel.fromMap(Map<String, dynamic>? map) {
    if (map == null) {
      return EmailModel();
    }
    return EmailModel(
      id: map['id'] ?? '',
      email: map['descricao'] ?? '',
      principal: map['principal'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory EmailModel.fromJson(String source) =>
      EmailModel.fromMap(json.decode(source));
}
