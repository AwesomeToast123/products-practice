import 'package:flutter/material.dart';
import 'package:products_practice/model/product_model.dart';

class ProductOverview extends StatelessWidget {
  const ProductOverview({
    required this.product,
    super.key,
  });

  final ProductMethod product;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(product.title),
        ],
      ),
    );
  }
}
