import 'package:async_redux/async_redux.dart';
import 'package:products_practice/features/product_overview/product_connector.dart';
import 'package:products_practice/model/product_model.dart';
import 'package:products_practice/state/actions/product_actions.dart';
import 'package:products_practice/state/app_state.dart';
import 'package:products_practice/utils/async.dart';
import 'package:products_practice/utils/constant.dart';

class ProductDetailsVmFactory extends VmFactory<AppState, ProductConnector, ProductDetailsVm> {
  /*
  @override
  Vm fromStore() => ProductDetailsVm(productDetail: _productDetail());
*/

  @override
  ProductDetailsVm? fromStore() => ProductDetailsVm(productDetail: _productDetail());

  Async<List<ProductMethod>> _productDetail() {
    if (state.wait.isWaitingFor(GetProductsAction.key)) return const Async.loading();
    if (state.products.isEmpty) return const Async.error(errorMessage);

    return Async(state.products);
  }
}

class ProductDetailsVm extends Vm {
  ProductDetailsVm({
    required this.productDetail,
  }) : super(equals: [productDetail]);

  final Async<List<ProductMethod>> productDetail;
}
