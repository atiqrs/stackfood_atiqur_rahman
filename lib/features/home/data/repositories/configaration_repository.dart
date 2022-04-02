import '../../../../api/api_provider.dart';
import '../datasources/api_urls.dart';
import '../models/configuration_response.dart';

class ConfigarationRepository {
  final ApiProvider _apiProvider = ApiProvider();

  Future<ConfigarationResponse> fetchConfigarationResponse() async {
    final response = await _apiProvider.getWithoutBearer(configApiUrl);
    return ConfigarationResponse.fromJson(response);
  }
}
