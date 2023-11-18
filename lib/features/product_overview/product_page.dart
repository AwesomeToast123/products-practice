import 'package:flutter/material.dart';
import 'package:products_practice/features/product_overview/product_overview.dart';
import 'package:products_practice/model/product_model.dart';
import 'package:products_practice/utils/async.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({
    required this.products,
    Key? key,
  }) : super(key: key);

  final Async<List<ProductMethod>> products;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.products.when(
        error: (errorMessage) {
          WidgetsBinding.instance.addPostFrameCallback((_) => _showErrorMessageSnackbar(context, errorMessage));
          return const Center(
            child: Text("Error"),
          );
        },
        (data) {
          return Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (_, index) {
                  final products = data[index];
                  return ProductOverview(product: products);
                },
              )
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  void _showErrorMessageSnackbar(BuildContext context, String? errorMessage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(errorMessage ?? '')),
    );
  }
}
