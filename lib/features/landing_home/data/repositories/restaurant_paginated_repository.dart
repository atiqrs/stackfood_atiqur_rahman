import 'package:atiqur_rahman/features/home/data/datasources/api_urls.dart';

import '../../../../api/api_provider.dart';
import '../models/restaurant_paginated_response.dart';

class RestaurantPaginatedRepository {
  final ApiProvider _apiProvider = ApiProvider();

  Future<RestaurantPaginatedResponse> fetchRestaurantPaginatedResponse(int offset, int limit) async {
    final response = await _apiProvider.getWithoutBearer('$restaurantApiUrl$restaurantOffsetUrl$offset$restaurantLimitUrl$limit');
    return RestaurantPaginatedResponse.fromJson(response);
  }
}
