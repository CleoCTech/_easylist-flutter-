import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  final List<String> products;
  const Products({ Key? key, required this.products }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: products
          .map((product) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/pic1.jpg'),
                    Text(product),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
