import 'package:products_practice/api/api_client.dart';

class ProductApi {
  ProductApi({
    required this.apiClient,
    required this.baseUrl,
  });

  final ApiClient apiClient;
  final Uri baseUrl;
}
