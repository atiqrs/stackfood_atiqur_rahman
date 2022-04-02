import 'dart:async';

import '../../../../api/response.dart';
import '../../data/models/popular_product_response.dart';
import '../../data/repositories/popular_product_repository.dart';

class PopularProductBloc {
  final PopularProductRepository _popularProductRepository = PopularProductRepository();
  final StreamController _streamController = StreamController<Responses>();

  StreamSink<dynamic> get chunkListSink => _streamController.sink;
  Stream<dynamic> get chunkListStream => _streamController.stream;

  PopularProductBloc() {
    fetchPopularProduct();
  }

  fetchPopularProduct() async {
    chunkListSink.add(Responses.loading('Fetching User Data...'));
    try {
      PopularProductResponse popularProductResponse = await _popularProductRepository.fetchPopularProductResponse();
      chunkListSink.add(Responses.completed(popularProductResponse));
    } catch (e) {
      chunkListSink.add(Responses.error(e.toString()));
    }
  }

  dispose() {
    _streamController.close();
  }
}
