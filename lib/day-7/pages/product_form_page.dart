import 'package:flutter/material.dart';

class ProductFormPage extends StatefulWidget {

  final String? name;
  final double? price;

  const ProductFormPage({
    super.key,
    this.name,
    this.price,
  });

  @override
  State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {

  final _nameController = TextEditingController();
  final _priceController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
   _nameController.text = widget.name ?? '';
   _priceController.text = widget.price?.toString() ?? '';
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 16,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Product Name',
                  hintText: 'Enter product name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter product name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _priceController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Product Price',
                  hintText: 'Enter product price',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter product price';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  child: Text('Save'),
                  onPressed: () {
                    if (_formKey.currentState!.validate() ?? false) {
                      final name = _nameController.text;
                      final price = double.tryParse(_priceController.text) ?? 0.0;
                      Navigator.pop(context, {'name': name, 'price': price});
                    }  
                  }, 
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}