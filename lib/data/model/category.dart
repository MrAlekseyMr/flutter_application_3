import '../../domain/entity/category_entity.dart';

class Category extends CategoryEntity {
  Category({
    super.id = 0,
    required super.namecategory,
  });

  Map<String, dynamic> toMap() {
    return {
      'namecategory': namecategory,
    };
  }

  factory Category.toFromMap(Map<String, dynamic> json) {
    return Category(
      id: (json['id'] as int),
      namecategory: json['namecategory'],
    );
  }
}
