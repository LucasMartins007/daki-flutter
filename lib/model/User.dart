import 'dart:convert';

import 'package:flutter_web/model/UserType.dart';

class User {
  late String id;
  late String name;
  late String userName;
  late List<UserType> types;

  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'userName': userName,
      'types': types.map((x) => x.toMap()).toList(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      userName: map['userName'] ?? '',
      types: List<UserType>.from(
          map['types']?.map((x) => UserType.fromMap(x)) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
