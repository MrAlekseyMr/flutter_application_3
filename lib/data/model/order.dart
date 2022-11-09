import 'package:flutter_application_3/data/model/product.dart';
import 'package:flutter_application_3/data/model/user.dart';
import 'package:flutter_application_3/domain/entity/order_entity.dart';

class Order extends OrderEntity {
  Order({
    super.id = 0,
    required super.nomerorder,
    required super.countproduct,
    required super.id_product,
    required super.id_user,
  });

  Map<String, dynamic> toMap() {
    return {
      'nomerorder': nomerorder,
      'countproduct': countproduct,
      'id_product': id_product.id,
      'id_user': id_user.id,
    };
  }

  factory Order.toFromMap(Map<String, dynamic> json) {
    return Order(
        id: (json['id'] as int),
        nomerorder: json['nomerorder'],
        countproduct: json['countproduct'],
        id_product: Product.toFromMap(json),
        id_user: User.toFromMap(json));
  }
}
