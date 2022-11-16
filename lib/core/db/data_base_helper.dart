import 'dart:io';
import 'package:flutter_application_3/domain/entity/role_entity.dart';
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import '../../common/data_base_request.dart';
import '../../data/model/role.dart';
import '../../domain/entity/category_entity.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DataBaseHelper {
  static final DataBaseHelper instance = DataBaseHelper._instance();

  DataBaseHelper._instance();

  final int _version = 1;
  late final String _pathDB;
  late final Directory _appDocumentDirectory;
  late final Database database;

  init() async {
    _appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();

    _pathDB = join(_appDocumentDirectory.path, 'test.db');

    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      sqfliteFfiInit();
      var databaseFactory = databaseFactoryFfi;
      database = await databaseFactory.openDatabase(_pathDB,
          options: OpenDatabaseOptions(
              version: _version,
              onCreate: (db, version) => onCreateTable(
                    db,
                  ),
              onUpgrade: ((db, oldVersion, newVersion) => onUpdateTable(db))));
    } else {
      database = await openDatabase(
        _pathDB,
        version: _version,
        onCreate: (db, version) => onCreateTable(db),
        onUpgrade: (db, oldVersion, newVersion) => onUpdateTable(db),
      );
    }
  }

  Future<void> onUpdateTable(Database db) async {
    var tables = await db.rawQuery('SELECT name FROM sqlite_master');

    for (var table in DataBaseRequest.tableList.reversed) {
      if (tables.where((element) => element['name'] == table).isNotEmpty) {
        await db.execute(DataBaseRequest.deleteTable(table));
      }
    }

    await onCreateTable(db);
  }

  Future<void> onCreateTable(Database db) async {
    for (var tableCreate in DataBaseRequest.tableCreateList) {
      await db.execute(tableCreate);
    }

    await onInitTable(db);
  }

  Future<void> onInitTable(Database db) async {
    try {
      for (var element in RoleEnum.values) {
        db.insert(
          DataBaseRequest.tableRole,
          Role(name: element.name).toMap(),
        );
      }
      for (var element in CategoryEnum.values) {
        db.insert(
          DataBaseRequest.tableCategory,
          Role(name: element.namecategory).toMap(),
        );
      }
    } on DatabaseException catch (error) {}
  }

  Future<void> onDropDataBase() async {
    database.close();
    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      sqfliteFfiInit();
      var factory = databaseFactoryFfi;
      await factory.deleteDatabase(_pathDB);
    } else {
      deleteDatabase(_pathDB);
    }
  }
}
