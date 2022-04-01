import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
import 'new_off_arrive_widget.dart';
import 'ratings_show_widget.dart';

class FoodCampaignCard extends StatelessWidget {
  const FoodCampaignCard({
    Key? key,
    required this.scrollerPadding,
    required this.size,
    required this.foodCampaignTextList,
    required this.brandText,
    required this.adressText,
    required this.ratings,
    required this.currentPrice,
    required this.oldPrice,
    required this.upIndexValue,
    required this.rateValueOnPercentage,
  }) : super(key: key);

  final EdgeInsets scrollerPadding;
  final Size size;
  final List<String> foodCampaignTextList;
  final String brandText;
  final String adressText;
  final List<int> ratings;
  final double currentPrice;
  final double oldPrice;
  final bool upIndexValue;
  final int rateValueOnPercentage;

  @override
  Widget build(BuildContext context) {
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
              height: size.width * .30,
              width: size.width * .75,
              color: mainWhiteColor,
              child: Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            // TODO: image link
                            child: Container(color: primaryColor),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(),
                              Text(
                                foodCampaignTextList[0],
                                style: secondaryMainTextStyle,
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Text('$brandText, ', style: secondaryBrandTextStyle),
                                  Text(adressText, style: secondaryBrandLocationTextStyle),
                                ],
                              ),
                              const Spacer(),
                              RatingsShow(ratings: ratings[0]),
                              const Spacer(),
                              Row(
                                children: [
                                  Text('\$$currentPrice', style: secondaryMainTextStyle),
                                  const Spacer(),
                                  Text('\$$oldPrice', style: oldPriceTextStyle),
                                  const Spacer(),
                                  const Spacer(),
                                  const Spacer(),
                                  const Spacer(),
                                ],
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 20,
                    left: 0,
                    child: NewOffArrive(upIndexValue: upIndexValue, rateValueOnPercentage: rateValueOnPercentage),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: primaryColor,
                        size: 40,
                      ),
                      onPressed: () {
                        debugPrint('Add Button Pressed!');
                      },
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
