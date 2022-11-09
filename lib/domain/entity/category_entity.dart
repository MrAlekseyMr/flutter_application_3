class CategoryEntity {
  late int id;
  final String namecategory;

  CategoryEntity({
    this.id = 0,
    required this.namecategory,
  });
}

enum CategoryEnum {
  householdgoods(id: 1, namecategory: 'Товары для дома'),
  dairyproducts(id: 2, namecategory: 'Молочная продукция'),
  householdchemicals(id: 3, namecategory: 'Бытовая химия'),
  snacks(id: 4, namecategory: 'Снэки'),
  fruits(id: 5, namecategory: 'Фрукты'),
  vegetables(id: 6, namecategory: 'Овощи');

  const CategoryEnum({
    required this.id,
    required this.namecategory,
  });

  final int id;
  final String namecategory;
}
