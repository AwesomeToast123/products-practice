import 'package:products_practice/api/api_client.dart';
import 'package:products_practice/api/handler/product_api.dart';

class ApiService {
  static final ApiService _apiService = ApiService._internal();

  factory ApiService() => _apiService;

  ApiService._internal();

  late final ApiClient _apiClient = ApiClient();

  late final Uri _baseUrl = Uri.parse(ApiClient.baseUrl);

  ProductApi? _productApi;

  ProductApi get productApi => _productApi ??= ProductApi(apiClient: _apiClient, baseUrl: _baseUrl);
}
