import 'dart:async';

import 'package:products_practice/api/api_service.dart';
import 'package:products_practice/state/actions/actions.dart';
import 'package:products_practice/state/app_state.dart';
import 'package:products_practice/utils/constant.dart';

class GetProductsAction extends LoadingAction {
  static const key = "get-products-action";

  GetProductsAction({required super.actionKey});

  @override
  Future<AppState> reduce() async {
    // TODO: implement reduce
    final products = await ApiService().productApi.getProductList(limit: limit, offset: offSet);
    return state.copyWith(products: products);
  }
}
