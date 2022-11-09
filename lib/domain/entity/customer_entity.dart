import 'package:flutter_application_3/domain/entity/user_entity.dart';

class CustomerEntity {
  late int id;
  final String familia;
  final String ima;
  final String phonenumber;
  final UserEntity id_user;

  CustomerEntity(
      {this.id = 0,
      required this.familia,
      required this.ima,
      required this.phonenumber,
      required this.id_user});
}
