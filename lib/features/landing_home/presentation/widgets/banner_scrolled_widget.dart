import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class BannerScrolledWidget extends StatelessWidget {
  const BannerScrolledWidget({
    Key? key,
    required this.scrollerPadding,
  }) : super(key: key);

  final EdgeInsets scrollerPadding;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: scrollerPadding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: size.width * .25,
          width: size.width * .7,
          color: primaryColor,
          child: SizedBox(),
        ),
      ),
    );
  }
}
