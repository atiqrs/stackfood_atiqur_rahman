import 'dart:async';

import '../../../../api/response.dart';
import '../../data/models/restaurant_paginated_response.dart';
import '../../data/repositories/restaurant_paginated_repository.dart';

class RestaurantPaginatedBloc {
  final RestaurantPaginatedRepository _restaurantPaginatedRepository = RestaurantPaginatedRepository();
  final StreamController _streamController = StreamController<Responses>();

  StreamSink<dynamic> get chunkListSink => _streamController.sink;
  Stream<dynamic> get chunkListStream => _streamController.stream;

  RestaurantPaginatedBloc(int offset, int limit) {
    fetchRestaurantPaginated(offset, limit);
  }

  fetchRestaurantPaginated(int offset, int limit) async {
    chunkListSink.add(Responses.loading('Fetching User Data...'));
    try {
      RestaurantPaginatedResponse restaurantPaginatedResponse = await _restaurantPaginatedRepository.fetchRestaurantPaginatedResponse(offset, limit);
      chunkListSink.add(Responses.completed(restaurantPaginatedResponse));
    } catch (e) {
      chunkListSink.add(Responses.error(e.toString()));
    }
  }

  dispose() {
    _streamController.close();
  }
}
