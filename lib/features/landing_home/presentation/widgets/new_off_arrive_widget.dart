import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class NewOffArrive extends StatelessWidget {
  const NewOffArrive({
    Key? key,
    required this.upIndexValue,
    required this.rateValueOnPercentage,
  }) : super(key: key);

  final bool upIndexValue;
  final int rateValueOnPercentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(10),
          topLeft: Radius.circular(0),
          topRight: Radius.circular(10),
        ),
        color: upIndexValue ? greenColor : redColor,
      ),
      child: Center(
        child: Text(
          "%$rateValueOnPercentage${upIndexValue ? ' off ' : ' plus '}",
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
