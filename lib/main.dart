import 'package:flutter/material.dart';
import './products_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final barColor = const Color(0xFF192A56);
  final bgColor = const Color(0xFF2C3335);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('EasyList'),
          ),
          body: const ProductsManager(startingProduct: 'Food Tester',)),
    );
  }
}
