import 'package:flutter_application_3/domain/entity/product_entity.dart';
import 'package:flutter_application_3/domain/entity/user_entity.dart';

class OrderEntity {
  late int id;
  final String nomerorder;
  final int countproduct;
  final UserEntity id_user;
  final ProductEntity id_product;

  OrderEntity(
      {this.id = 0,
      required this.nomerorder,
      required this.countproduct,
      required this.id_user,
      required this.id_product});
}
