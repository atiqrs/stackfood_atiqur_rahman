import '../../../../api/api_provider.dart';
import '../datasources/api_urls.dart';
import '../models/food_campaign_response.dart';

class FoodCampaignRepository {
  final ApiProvider _apiProvider = ApiProvider();

  Future<FoodCampaignResponse> fetchFoodCampaignResponse() async {
    final response = await _apiProvider.getWithoutBearer(foodCampaignApiUrl);
    return FoodCampaignResponse.fromJson(response);
  }
}
