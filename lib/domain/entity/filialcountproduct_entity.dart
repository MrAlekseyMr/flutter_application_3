import 'package:flutter_application_3/domain/entity/filial_entity.dart';
import 'package:flutter_application_3/domain/entity/product_entity.dart';

class FilialCountProductEntity {
  late int id;
  final int countfilial;
  final ProductEntity id_product;
  final FilialEntity id_filial;

  FilialCountProductEntity(
      {this.id = 0,
      required this.countfilial,
      required this.id_product,
      required this.id_filial});
}
