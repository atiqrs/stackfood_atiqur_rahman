import '../../../../api/api_provider.dart';
import '../datasources/api_urls.dart';
import '../models/popular_product_response.dart';

class PopularProductRepository {
  final ApiProvider _apiProvider = ApiProvider();

  Future<PopularProductResponse> fetchPopularProductResponse() async {
    final response = await _apiProvider.getWithoutBearer(popularProductApiUrl);
    return PopularProductResponse.fromJson(response);
  }
}
