import 'package:atiqur_rahman/api/response.dart';
import 'package:atiqur_rahman/features/home/presentation/bloc/configaration_bloc.dart';
import 'package:flutter/material.dart';

import '../../../../core/base_urls.dart';
import '../../../../core/utils/toast.dart';
import '../widgets/error_shimmer.dart';
import '../widgets/loading_shimmer.dart';
import 'main_home.dart';

class GettingStartHome extends StatefulWidget {
  const GettingStartHome({Key? key}) : super(key: key);

  @override
  _GettingStartHomeState createState() => _GettingStartHomeState();
}

class _GettingStartHomeState extends State<GettingStartHome> {
  late ConfigarationBloc _bloc;

  _GettingStartHomeState();

  @override
  void initState() {
    _bloc = ConfigarationBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<dynamic>(
      stream: _bloc.chunkListStream,
      builder: (context, data) {
        if (data.hasData) {
          switch (data.data.status) {
            case Status.LOADING:
              return LoadingPage(loadingMessage: data.data.message);
            case Status.COMPLETED:
              toast(context, '${data.data.data.businessName}');
              debugPrint(data.data.data.baseUrls!.bannerImageUrl);

              LocalBaseURLS.baseUrls = data.data.data.baseUrls;

              return const MyHomePage();
            case Status.ERROR:
              return ErrorPage(errorMessage: 'Something Went Wrong', onRetryPressed: () => _bloc.fetchConfigaration());
          }
        }
        return Container();
      },
    ));
  }
}
