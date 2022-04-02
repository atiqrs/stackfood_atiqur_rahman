import '../../../../api/api_provider.dart';
import '../datasources/api_urls.dart';
import '../models/banner_response.dart';

class BannerRepository {
  final ApiProvider _apiProvider = ApiProvider();

  Future<BannerResponse> fetchBannerResponse() async {
    final response = await _apiProvider.getWithoutBearer(bannerApiUrl);
    return BannerResponse.fromJson(response);
  }
}
