import 'dart:async';

import '../../../../api/response.dart';
import '../../data/models/banner_response.dart';
import '../../data/repositories/banner_repository.dart';

class BannerBloc {
  final BannerRepository _bannerRepository = BannerRepository();
  final StreamController _streamController = StreamController<Responses>();

  StreamSink<dynamic> get chunkListSink => _streamController.sink;
  Stream<dynamic> get chunkListStream => _streamController.stream;

  BannerBloc() {
    fetchBanner();
  }

  fetchBanner() async {
    chunkListSink.add(Responses.loading('Fetching User Data...'));
    try {
      BannerResponse bannerResponse = await _bannerRepository.fetchBannerResponse();
      chunkListSink.add(Responses.completed(bannerResponse));
    } catch (e) {
      chunkListSink.add(Responses.error(e.toString()));
    }
  }

  dispose() {
    _streamController.close();
  }
}
