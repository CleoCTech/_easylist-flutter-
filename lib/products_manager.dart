import 'package:flutter/material.dart';
import './products.dart';

class ProductsManager extends StatefulWidget {
  
  final String startingProduct;
  const ProductsManager({ Key? key, required this.startingProduct }) : super(key: key);
  
  @override
  _ProductsManagerState createState() => _ProductsManagerState();
}

class _ProductsManagerState extends State<ProductsManager> {
  final List<String> _products = [];
  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
      margin: const EdgeInsets.all(10.0),
      child: ElevatedButton(
          onPressed: () {
            setState(() {
                _products.add('Pro Food Tester');
            });
          }, child: const Text('Add Product')),
    ),
    Products(products: _products)
    ]);
  }
}