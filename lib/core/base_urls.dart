import '../features/home/data/models/configuration_response.dart';

mixin LocalBaseURLS {
  static BaseUrls baseUrls = BaseUrls();
  static String? bannerBaseUrl = baseUrls.bannerImageUrl;
  static String? categoryBaseUrl = baseUrls.categoryImageUrl;
  static String? foodCampaignBaseUrl = baseUrls.campaignImageUrl;
  static String? popularProductBaseUrl = baseUrls.productImageUrl;
  static String? restaurantPaginatedBaseUrl = baseUrls.restaurantImageUrl;
  // static String? bannerBaseUrl = baseUrls.bannerImageUrl;
}
