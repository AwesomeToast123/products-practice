import 'package:dio/dio.dart';
import 'package:products_practice/api/api_client.dart';
import 'package:products_practice/model/product_model.dart';

typedef Json = Map<String, dynamic>;

class ProductApi {
  ProductApi({
    required this.apiClient,
    required this.baseUrl,
  });

  final ApiClient apiClient;
  final Uri baseUrl;

  Future<List<ProductMethod>> getProductList({required String offset, required String limit}) async {
    final queryParam = <String, dynamic>{};

    queryParam['limit'] = limit;
    queryParam['offset'] = offset;

    final uri = baseUrl.replace(
      queryParameters: queryParam,
      path: '${baseUrl.path}/products',
    );

    return await apiClient.dio.getUri(uri).then((response) {
      return response.data['products']
          .map<ProductMethod>((dynamic data) => ProductMethod.fromJson(data as Json))
          .toList();
    });

    Response response = await apiClient.dio.getUri(uri);
    return (response.data as List).map((x) => ProductMethod.fromJson(x)).toList();
  }
}
