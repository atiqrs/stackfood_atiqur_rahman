import 'package:atiqur_rahman/features/landing_home/data/models/banner_response.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../api/response.dart';
import '../../../../core/base_urls.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/toast.dart';
import '../bloc/banner_bloc.dart';
import '../widgets/banner_scrolled_widget.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({Key? key}) : super(key: key);

  @override
  _BannerSectionState createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  late BannerBloc _bloc;

  _BannerSectionState();

  @override
  void initState() {
    _bloc = BannerBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<dynamic>(
      stream: _bloc.chunkListStream,
      builder: (context, data) {
        if (data.hasData) {
          switch (data.data.status) {
            case Status.LOADING:
              return const BannerLoading();
            case Status.COMPLETED:
              return Banner(
                baseUrl: LocalBaseURLS.bannerBaseUrl.toString(),
                bannerResponse: data.data.data,
              );

            case Status.ERROR:
              return _bloc.fetchBanner();
          }
        }
        return Container();
      },
    );
  }
}

class Banner extends StatelessWidget {
  final String baseUrl;
  final BannerResponse bannerResponse;

  const Banner({Key? key, required this.baseUrl, required this.bannerResponse}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (bannerResponse.banners != null)
        ? SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                const SizedBox(
                  width: 20,
                ),
                for (Banners item in bannerResponse.banners ?? []) BannerScrolledWidget(imageUrl: '$baseUrl/${item.image.toString()}'),
              ],
            ),
          )
        : const SizedBox();
  }
}

class BannerLoading extends StatelessWidget {
  const BannerLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Shimmer.fromColors(
            baseColor: shimmerColor,
            highlightColor: lowShimmerColor,
            enabled: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var i = 0; i < 4; i++)
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 80,
                                width: 180,
                                color: Colors.white,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
