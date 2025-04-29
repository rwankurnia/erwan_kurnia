import 'package:drift/drift.dart';
import 'package:erwan_kurnia/day-7/data/db/app_db.dart';
import 'package:erwan_kurnia/day-7/data/db/product_db.dart';
import 'package:erwan_kurnia/day-7/pages/product_form_page.dart';
import 'package:erwan_kurnia/injector.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  final db = ProductDb(getIt<AppDatabase>());
  final products = <Product>[];

  @override
  void initState() {
    getProducts();
    super.initState();
  }

  Future<void> getProducts() async {
    try {
      final result = await db.getAllProducts();
      setState(() {
        products.clear();
        products.addAll(result);
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> delete(int id) async {
    try {
      await db.deleteProduct(id);
      await getProducts();
    } catch (e) {
      print(e);
    }
  }

  Future<void> addProduct({
    String name = '',
    double price = 0,
  }) async {
    try {
      final product = ProductsCompanion(
        name: Value(name),
        price: Value(price),
      );
      await db.addProduct(product);
      await getProducts();
    } catch (e) {
      print(e);
    }
  }
  Future<void> editProduct({
    required int id,
    String name = '',
    double price = 0,
  }) async {
    try {
      final product = ProductsCompanion(
        id: Value(id),
        name: Value(name),
        price: Value(price),
      );
      await db.updateProduct(product);
      await getProducts(); 
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk'),
        actions: [
          IconButton(
            onPressed: () async {
              final result = await Navigator.push(
              context,
                MaterialPageRoute(
                  builder: (context) => ProductFormPage(),
                ),
              );
              if(result != null) {
                addProduct(
                  name: result['name'], 
                  price: result['price'],
                );                
              }
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: products.length,
        separatorBuilder: (_, __) => SizedBox(height: 16),
        itemBuilder: (_, index) => Card(
          child: ListTile(
            title: Text(products[index].name),
            subtitle: Text(products[index].price.toString()),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductFormPage(
                          name: products[index].name,
                          price: products[index].price,
                        ),
                      ),
                    );
                    if(result != null) {
                      editProduct(
                        id: products[index].id,
                        name: result['name'], 
                        price: result['price'],
                      );                
                    }
                  },
                  icon: Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () {
                    delete(products[index].id);
                  },
                  icon: Icon(Icons.delete),
                ),
              ],
            ), 
          ),
        ), 
      )
    );
  }
}