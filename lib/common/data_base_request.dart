abstract class DataBaseRequest {
  static const String tableRole = 'role'; //1
  static const String tableUser = 'user'; //2
  static const String tableCategory = 'category'; //3
  static const String tableManufacture = 'manufacture'; //4
  static const String tableProduct = 'product'; //5
  static const String tableFilial = 'filial'; //6
  static const String tableFilialCountProduct = 'filialcountproduct'; //7
  static const String tableCustomers = 'customers'; //8
  static const String tableOrder = 'order'; //9

  static String deleteTable(String table) => 'DROP TABLE $table';

  static const List<String> tableList = [
    tableRole,
    tableUser,
    tableCategory,
    tableManufacture,
    tableProduct,
    tableFilial,
    tableFilialCountProduct,
    tableCustomers,
    tableOrder,
  ];

  static const List<String> tableCreateList = [
    _createTableRole,
    _createTableUsers,
    _createTableCategory,
    _createTableManufacture,
    _createTableProduct,
    _createTableFilial,
    _createTableFilialCountProduct,
    _createtableCustomers,
    _createtableOrder,
  ];

  /// Запрос для создания таблицы Role
  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы User
  static const String _createTableUsers =
      'CREATE TABLE "$tableUser" ("id" INTEGER,"login" TEXT NOT NULL UNIQUE,"password"	TEXT NOT NULL,"id_role"	INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT) )';

  /// Запрос для создания таблицы Category
  static const String _createTableCategory =
      'CREATE TABLE "$tableCategory" ("id"	INTEGER, "namecategory" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Manufacture
  static const String _createTableManufacture =
      'CREATE TABLE "$tableManufacture" ("id"	INTEGER, "namemanufacture" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Product
  static const String _createTableProduct =
      'CREATE TABLE "$tableProduct" ("id"	INTEGER, "nameproduct" TEXT NOT NULL UNIQUE, "price" REAL NOT NULL, "id_category" INTEGER NOT NULL, "id_manufacture" INTEGER NOT NULL, FOREIGN KEY("id_category") REFERENCES "Category"("id") ON DELETE CASCADE, FOREIGN KEY("id_manufacture") REFERENCES "manufacture"("id") ON DELETE CASCADE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Filial
  static const String _createTableFilial =
      'CREATE TABLE "$tableFilial" ("id"	INTEGER,"namefilial" TEXT NOT NULL UNIQUE, "addressfilial" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы FilialCountProduct
  static const String _createTableFilialCountProduct =
      'CREATE TABLE "$tableFilialCountProduct" ("id"	INTEGER,"countfilial" INTEGER NOT NULL, "id_filial" INTEGER NOT NULL, "id_product" INTEGER NOT NULL, FOREIGN KEY("id_product") REFERENCES "product"("id") ON DELETE CASCADE, FOREIGN KEY("id_filial") REFERENCES "filial"("id") ON DELETE CASCADE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Customers
  static const String _createtableCustomers =
      'CREATE TABLE "$tableCustomers" ("id"	INTEGER, "familia" TEXT NOT NULL, "ima" TEXT NOT NULL, "phonenumber" TEXT NOT NULL, "id_user" INTEGER NOT NULL, FOREIGN KEY("id_user") REFERENCES "user"("id") ON DELETE CASCADE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Order
  static const String _createtableOrder =
      'CREATE TABLE "$tableOrder" ("id"	INTEGER, "nomerorder" TEXT NOT NULL, "countproduct" INTEGER NOT NULL, "id_user" INTEGER NOT NULL, "id_product" INTEGER NOT NULL, FOREIGN KEY("id_user") REFERENCES "user"("id") ON DELETE CASCADE, FOREIGN KEY("id_product") REFERENCES "product"("id") ON DELETE CASCADE, PRIMARY KEY("id" AUTOINCREMENT))';
}
