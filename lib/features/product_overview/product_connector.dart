import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:products_practice/features/product_overview/product_page.dart';
import 'package:products_practice/features/product_overview/product_vm.dart';
import 'package:products_practice/state/actions/product_actions.dart';
import 'package:products_practice/state/app_state.dart';

class ProductConnector extends StatelessWidget {
  const ProductConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ProductDetailsVm>(
      vm: () => ProductDetailsVmFactory(),
      onInit: (store) => store.dispatchAsync(GetProductsAction(actionKey: '')),
      onDispose: null,
      builder: (context, vm) => ProductPage(
        products: vm.productDetail,
      ),
    );
  }
}
