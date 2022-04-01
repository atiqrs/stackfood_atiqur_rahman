import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class PopularFoodScrolledButton extends StatelessWidget {
  const PopularFoodScrolledButton({
    Key? key,
    required this.scrollerPadding,
    required this.categoriesText,
    required this.brandText,
    required this.demoPrice,
    required this.demoRating,
  }) : super(key: key);

  final EdgeInsets scrollerPadding;
  final String categoriesText;
  final String brandText;
  final double demoPrice;
  final double demoRating;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: scrollerPadding,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        elevation: 5,
        shadowColor: Colors.white54,
        color: mainWhiteColor,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
              height: size.width * .45,
              width: size.width * .45,
              color: mainWhiteColor,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: primaryColor,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          Text(
                            categoriesText,
                            style: secondaryMainTextStyle,
                          ),
                          const Spacer(),
                          Text(brandText, style: brandTextStyle),
                          const Spacer(),
                          Row(
                            children: [
                              Text('\$$demoPrice', style: secondaryMainTextStyle),
                              const Spacer(),
                              const Icon(Icons.star_rate_rounded, color: primaryColor, size: 20),
                              Text('$demoRating', style: ratingTextStyle),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
