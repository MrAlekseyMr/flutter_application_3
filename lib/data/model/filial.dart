import 'package:flutter_application_3/domain/entity/filial_entity.dart';

class Filial extends FilialEntity {
  Filial(
      {super.id = 0, required super.namefilial, required super.addressfilial});

  Map<String, dynamic> toMap() {
    return {
      'namefilial': namefilial,
      'addressfilial': addressfilial,
    };
  }

  factory Filial.toFromMap(Map<String, dynamic> json) {
    return Filial(
      id: (json['id'] as int),
      namefilial: json['namefilial'],
      addressfilial: json['addressfilial'],
    );
  }
}
