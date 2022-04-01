import 'package:flutter/material.dart';

class DailyDealCart extends StatelessWidget {
  final Widget image;
  final double circularBorderRadiusValOfMainConteiner;
  final String productName;
  final String newPrice;
  final String oldPrice;

  final bool upIndexValue;
  final String rateValue;
  const DailyDealCart(
      {Key? key,
      required this.image,
      required this.circularBorderRadiusValOfMainConteiner,
      required this.productName,
      required this.newPrice,
      required this.oldPrice,
      required this.upIndexValue,
      required this.rateValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Container(
      height: width * .45,
      width: width * .45,
      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0), side: BorderSide.none),
        color: Colors.white,
        elevation: 2,
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    productName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: width * 0.045,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Text.rich(Text(data),TextSpan(children: [Text('sd'),], ))
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\$$newPrice ',
                          style: TextStyle(
                            fontSize: width * 0.045,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '\$$oldPrice ',
                          style: TextStyle(
                              fontSize: width * 0.035, color: Colors.black45, fontWeight: FontWeight.bold, decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
