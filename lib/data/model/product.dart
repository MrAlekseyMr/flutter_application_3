import 'package:flutter_application_3/data/model/manufacture.dart';
import 'package:flutter_application_3/domain/entity/category_entity.dart';
import 'package:flutter_application_3/domain/entity/product_entity.dart';

class Product extends ProductEntity {
  Product({
    super.id = 0,
    required super.nameproduct,
    required super.price,
    required super.id_category,
    required super.id_manufacture,
  });

  Map<String, dynamic> toMap() {
    return {
      'nameproduct': nameproduct,
      'price': price,
      'id_category': id_category.id,
      'id_manufacture': id_manufacture.id,
    };
  }

  factory Product.toFromMap(Map<String, dynamic> json) {
    return Product(
        id: (json['id'] as int),
        nameproduct: json['nameproduct'],
        price: json['price'],
        id_category: CategoryEnum.values.firstWhere(
          (element) => element.id == (json['id_category'] as int),
        ),
        id_manufacture: Manufacture.toFromMap(json));
  }
}
