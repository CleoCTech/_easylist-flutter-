import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('EasyList'),
          ),
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                         _products.add('Pro Food Tester');
                      });
                    }, child: const Text('Add Product')),
              ),
              Column(
                  children: _products
                      .map((product) => Card(
                            child: Column(
                              children: <Widget>[
                                Image.asset('assets/pic1.jpg'),
                                Text(product),
                              ],
                            ),
                          ))
                      .toList(),
              ),
            ],
          )),
    );
  }
}
