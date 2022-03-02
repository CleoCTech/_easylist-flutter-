import 'package:flutter/material.dart';
import './products.dart';
import './add_product_control_btn.dart';

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
  void _addProduct(String product){
    setState(() {
        _products.add(product);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
      margin: const EdgeInsets.all(10.0),
      child:  AddProductControlBtn(addProduct: _addProduct)
    ),
    Products(products: _products)
    ]);
  }
}