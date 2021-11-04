import 'dart:convert';

class TelefoneModel {
  int? id;
  String? number;
  bool? principal;

  TelefoneModel({
    this.id,
    this.number,
    this.principal,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'number': number,
      'principal': principal,
    };
  }

  factory TelefoneModel.fromMap(Map<String, dynamic>? map) {
    if (map == null) {
      return TelefoneModel();
    }
    return TelefoneModel(
      id: map['id'] ?? '',
      number: map['number'] ?? '',
      principal: map['principal'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory TelefoneModel.fromJson(String source) =>
      TelefoneModel.fromMap(json.decode(source));
}
