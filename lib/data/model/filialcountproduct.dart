import 'package:flutter_application_3/data/model/filial.dart';
import 'package:flutter_application_3/data/model/product.dart';

import '../../domain/entity/filialcountproduct_entity.dart';

class FilialCountProduct extends FilialCountProductEntity {
  FilialCountProduct(
      {super.id = 0,
      required super.countfilial,
      required super.id_filial,
      required super.id_product});

  Map<String, dynamic> toMap() {
    return {
      'countfilial': countfilial,
      'id_filial': id_filial.id,
      'id_product': id_product.id,
    };
  }

  factory FilialCountProduct.toFromMap(Map<String, dynamic> json) {
    return FilialCountProduct(
        id: (json['id'] as int),
        countfilial: json['countfilial'],
        id_product: Product.toFromMap(json),
        id_filial: Filial.toFromMap(json));
  }
}
