import 'package:erwan_kurnia/day-7/data/db/app_db.dart';

class ProductDb {

final AppDatabase db;

  ProductDb(this.db);

  Future<void> addProduct(ProductsCompanion data) async {
    await db.into(db.products).insert(data);
  }

  Future<List<Product>> getAllProducts() async {
    return await db.select(db.products).get();
  }

  Future<void> deleteProduct(int id) async {
    await (db.delete(db.products)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> updateProduct(ProductsCompanion data) async {
    await (db.update(db.products)..where((tbl) => tbl.id.equals(data.id.value))).write(data);
  }

}