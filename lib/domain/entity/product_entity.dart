import 'dart:ffi';

import 'package:flutter_application_3/domain/entity/category_entity.dart';
import 'package:flutter_application_3/domain/entity/manufacture_entity.dart';

class ProductEntity {
  late int id;
  final String nameproduct;
  final Float price;
  final CategoryEnum id_category;
  final ManufactureEntity id_manufacture;

  ProductEntity(
      {this.id = 0,
      required this.nameproduct,
      required this.price,
      required this.id_category,
      required this.id_manufacture});
}
