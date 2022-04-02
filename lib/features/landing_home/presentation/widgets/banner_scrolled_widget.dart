import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class BannerScrolledWidget extends StatelessWidget {
  const BannerScrolledWidget({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    final EdgeInsets scrollerPadding = EdgeInsets.fromLTRB(width * 0.01, height * 0.01, width * 0.01, height * 0.01);

    return Padding(
      padding: scrollerPadding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: size.width * .25,
          width: size.width * .7,
          color: lowShimmerColor,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
