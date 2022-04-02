import 'dart:async';

import '../../../../api/response.dart';
import '../../data/models/food_campaign_response.dart';
import '../../data/repositories/food_campaign_repository.dart';

class FoodCampaignBloc {
  final FoodCampaignRepository _foodCampaignRepository = FoodCampaignRepository();
  final StreamController _streamController = StreamController<Responses>();

  StreamSink<dynamic> get chunkListSink => _streamController.sink;
  Stream<dynamic> get chunkListStream => _streamController.stream;

  FoodCampaignBloc() {
    fetchFoodCampaign();
  }

  fetchFoodCampaign() async {
    chunkListSink.add(Responses.loading('Fetching User Data...'));
    try {
      FoodCampaignResponse foodCampaignResponse = await _foodCampaignRepository.fetchFoodCampaignResponse();
      chunkListSink.add(Responses.completed(foodCampaignResponse));
    } catch (e) {
      chunkListSink.add(Responses.error(e.toString()));
    }
  }

  dispose() {
    _streamController.close();
  }
}
