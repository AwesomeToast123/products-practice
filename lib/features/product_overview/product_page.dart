import 'package:flutter/material.dart';
import 'package:products_practice/model/product_model.dart';
import 'package:products_practice/utils/async.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    required this.products,
    Key? key,
  }) : super(key: key);

  final Async<List<ProductMethod>> products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Hello World"),
      ),
    );
  }
}
