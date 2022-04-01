import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class CategoriesScrolledItem extends StatelessWidget {
  const CategoriesScrolledItem({
    Key? key,
    required this.scrollerPadding,
    required this.categoriesText,
    required this.secondaryMainTextStyle,
  }) : super(key: key);

  final EdgeInsets scrollerPadding;
  final String categoriesText;
  final TextStyle secondaryMainTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          elevation: 5,
          shadowColor: Colors.white12,
          color: mainWhiteColor,
          child: const SizedBox(
            height: 70,
            width: 70,
          ),
        ),
        Text(categoriesText, style: secondaryMainTextStyle),
      ],
    );
  }
}
