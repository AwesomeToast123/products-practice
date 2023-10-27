import 'package:dio/dio.dart';
import 'package:products_practice/api/api_client.dart';
import 'package:products_practice/model/product_model.dart';

//Sample api
//https://dummyjson.com/products
// "id":1,
// "title":"iPhone 9",
// "description":"An apple mobile which is nothing like apple",
// "price":549,
// "discountPercentage":12.96,
// "rating":4.69,
// "stock":94,
// "brand":"Apple",
// "category":"smartphones",
// "thumbnail":"https://i.dummyjson.com/data/products/1/thumbnail.jpg",
// "images":["https://i.dummyjson.com/data/products/1/1.jpg","https://i.dummyjson.com/data/products/1/2.jpg",
// "https://i.dummyjson.com/data/products/1/3.jpg","https://i.dummyjson.com/data/products/1/4.jpg","https://i.dummyjson.com/data/products/1/thumbnail.jpg"]}

class ProductApi {
  ProductApi({
    required this.apiClient,
    required this.baseUrl,
  });

  final ApiClient apiClient;
  final Uri baseUrl;

  Future<ProductMethod> getProductList({required String offset, required String limit}) async {
    final queryParam = <String, dynamic>{};

    queryParam['limit'] = limit;
    queryParam['offset'] = offset;

    final uri = baseUrl.replace(
      queryParameters: queryParam,
      path: '${baseUrl.path}',
    );

    Response response = await apiClient.dio.getUri(uri);
    return ProductMethod.fromJson(response.data);
  }
}
