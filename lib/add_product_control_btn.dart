import 'package:flutter/material.dart';

class AddProductControlBtn extends StatelessWidget {
  final Function addProduct;
  const AddProductControlBtn({ Key? key, required this.addProduct }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: () {
        addProduct('Sweets');
      }, child: const Text('Add Product')
    );
  }
}