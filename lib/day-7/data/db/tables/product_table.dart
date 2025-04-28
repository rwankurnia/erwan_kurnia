import 'package:drift/drift.dart';

class Products extends Table {
  @override
  String get tableName => 'products';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  RealColumn get price => real()();
}