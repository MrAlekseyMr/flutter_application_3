import 'package:flutter_application_3/data/model/user.dart';

import '../../domain/entity/customer_entity.dart';

class Customer extends CustomerEntity {
  Customer({
    super.id = 0,
    required super.familia,
    required super.ima,
    required super.phonenumber,
    required super.id_user,
  });

  Map<String, dynamic> toMap() {
    return {
      'familia': familia,
      'ima': ima,
      'phonenumber': phonenumber,
      'id_user': id_user.id,
    };
  }

  factory Customer.toFromMap(Map<String, dynamic> json) {
    return Customer(
        id: (json['id'] as int),
        familia: json['familia'],
        ima: json['ima'],
        phonenumber: json['phonenumber'],
        id_user: User.toFromMap(json));
  }
}
