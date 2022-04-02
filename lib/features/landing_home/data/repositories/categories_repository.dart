import '../../../../api/api_provider.dart';
import '../../../home/data/datasources/api_urls.dart';
import '../models/categories_response.dart';

class CategoryRepository {
  final ApiProvider _apiProvider = ApiProvider();

  Future<CategoryResponse> fetchCategoryResponse() async {
    final response = await _apiProvider.getWithoutBearer(categoryApiUrl);
    return CategoryResponse.fromJson(response);
  }
}
