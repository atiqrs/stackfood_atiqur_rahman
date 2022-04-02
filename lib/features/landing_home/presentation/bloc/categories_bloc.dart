import 'dart:async';

import '../../../../api/response.dart';
import '../../data/models/categories_response.dart';
import '../../data/repositories/categories_repository.dart';

class CategoryBloc {
  final CategoryRepository _categoryRepository = CategoryRepository();
  final StreamController _streamController = StreamController<Responses>();

  StreamSink<dynamic> get chunkListSink => _streamController.sink;
  Stream<dynamic> get chunkListStream => _streamController.stream;

  CategoryBloc() {
    fetchCategory();
  }

  fetchCategory() async {
    chunkListSink.add(Responses.loading('Fetching User Data...'));
    try {
      CategoryResponse categoryResponse = await _categoryRepository.fetchCategoryResponse();
      chunkListSink.add(Responses.completed(categoryResponse));
    } catch (e) {
      chunkListSink.add(Responses.error(e.toString()));
    }
  }

  dispose() {
    _streamController.close();
  }
}
