import '../../domain/entity/manufacture_entity.dart';

class Manufacture extends ManufactureEntity {
  Manufacture({
    super.id = 0,
    required super.namemanufacture,
  });

  Map<String, dynamic> toMap() {
    return {
      'namemanufacture': namemanufacture,
    };
  }

  factory Manufacture.toFromMap(Map<String, dynamic> json) {
    return Manufacture(
      id: (json['id'] as int),
      namemanufacture: json['namemanufacture'],
    );
  }
}
