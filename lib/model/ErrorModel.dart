import 'dart:convert';

class ErrorModel {
  int? status;
  String? titulo;
  String? dataHora;

  ErrorModel({
    this.status,
    this.titulo,
    this.dataHora,
  });

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'titulo': titulo,
      'dataHora': dataHora,
    };
  }

  factory ErrorModel.fromMap(Map<String, dynamic> map) {
    return ErrorModel(
      status: map['status'],
      titulo: map['titulo'],
      dataHora: map['dataHora'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ErrorModel.fromJson(String source) =>
      ErrorModel.fromMap(json.decode(source));
}
