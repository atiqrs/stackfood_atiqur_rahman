import 'dart:async';

import '../../../../api/response.dart';
import '../../data/models/configuration_response.dart';
import '../../data/repositories/configaration_repository.dart';

class ConfigarationBloc {
  final ConfigarationRepository _configarationRepository = ConfigarationRepository();
  // StreamController _streamController = StreamController<Responses<ConfigarationResponse>>();
  final StreamController _streamController = StreamController<Responses>();

  StreamSink<dynamic> get chunkListSink => _streamController.sink;
  Stream<dynamic> get chunkListStream => _streamController.stream;

  ConfigarationBloc() {
    fetchConfigaration();
  }

  fetchConfigaration() async {
    chunkListSink.add(Responses.loading('Fetching User Data...'));
    try {
      ConfigarationResponse configarationResponse = await _configarationRepository.fetchConfigarationResponse();
      chunkListSink.add(Responses.completed(configarationResponse));
    } catch (e) {
      chunkListSink.add(Responses.error(e.toString()));
    }
  }

  dispose() {
    _streamController.close();
  }
}
