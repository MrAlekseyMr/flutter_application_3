class ManufactureEntity {
  late int id;
  final String namemanufacture;

  ManufactureEntity({
    this.id = 0,
    required this.namemanufacture,
  });
}

enum ManufactureEnum {
  nestle(id: 1, namemanufacture: 'Nestle'),
  mars(id: 2, namemanufacture: 'Mars'),
  miratorg(id: 3, namemanufacture: 'Мираторг');

  const ManufactureEnum({
    required this.id,
    required this.namemanufacture,
  });

  final int id;
  final String namemanufacture;
}
