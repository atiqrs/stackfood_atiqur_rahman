import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class RatingsShow extends StatelessWidget {
  const RatingsShow({
    Key? key,
    required this.ratings,
  }) : super(key: key);

  final int ratings;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < ratings; i++) const Icon(Icons.star_rate_rounded, color: primaryColor, size: 18),
      ],
    );
  }
}
