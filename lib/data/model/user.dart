import 'package:flutter_application_3/domain/entity/role_entity.dart';

import '../../domain/entity/user_entity.dart';

class User extends UserEntity {
  final String password;

  User({
    super.id = 0,
    required super.login,
    required this.password,
    required super.idRole,
  });

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'password': password,
      'id_role': idRole.id,
    };
  }

  factory User.toFromMap(Map<String, dynamic> json) {
    return User(
      id: (json['id'] as int),
      login: json['login'],
      password: json['password'],
      idRole: RoleEnum.values.firstWhere(
        (element) => element.id == (json['id_role'] as int),
      ),
    );
  }
}
