import 'package:atiqur_rahman/core/utils/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/banner_scrolled_widget.dart';
import '../widgets/categories_item_scrolled_widget.dart';
import '../widgets/daily_deal_card.dart';
import '../widgets/popular_food_button_widget.dart';

class LandingHomePage extends StatefulWidget {
  const LandingHomePage({Key? key}) : super(key: key);
  @override
  State<LandingHomePage> createState() => _LandingHomePageState();
}

class _LandingHomePageState extends State<LandingHomePage> {
  final TextEditingController searchController = TextEditingController();

  final String shopStreetText = '76A eighth evenue, New York, US';
  final String searchHintText = 'Search food or restaurent here...';

  final String categoriesText = 'Categories';
  final String viewAllText = 'View All';
  final String popularFoodNearbyText = 'Popular Food Nearby';
  final String foodCampaignText = 'Food Campaign';
  final String restaurentsText = 'Restaurents';

  final String brandText = 'Mc Donald';
  final double demoPrice = 7.56;
  final double demoRating = 4.9;

  final List<String> restaurentsFilterTextList = ['All', 'Take Away', 'Home Delivery'];
  final List<String> categoriesTextList = ['All', 'Coffee', 'Drink', 'Fast Food', 'Cake', 'Shusi'];
  final List<String> popularFoodTextList = ['Fried Noodles', 'Fried Noodles', 'Fried Noodles'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    final EdgeInsets commonPadding = EdgeInsets.fromLTRB(width * 0.05, height * 0.01, width * 0.05, height * 0.01);
    final EdgeInsets scrollerPadding = EdgeInsets.fromLTRB(width * 0.01, height * 0.01, width * 0.01, height * 0.01);

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: backgroundColor,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: size.width * 0.06),

                // adress & notificaion
                Padding(
                  padding: commonPadding,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.home_rounded,
                        color: secondayColor,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        shopStreetText,
                        style: const TextStyle(
                          color: secondayColor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500, //h1 - 400
                          fontSize: 16,
                          letterSpacing: 0.4,
                        ),
                      ),
                      const Spacer(),
                      Icon(Icons.notification_add, color: mainBlackColor, size: width * .08),
                    ],
                  ),
                ),
                SizedBox(height: size.width * 0.03),

                // search
                Padding(
                  padding: commonPadding,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                    elevation: 5,
                    shadowColor: Colors.white12,
                    color: mainWhiteColor,
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.search_sharp,
                          color: secondayColor,
                        ),
                        hintText: searchHintText,
                        hintStyle: const TextStyle(fontWeight: FontWeight.bold, color: lowSecondayColor),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.width * 0.03),

                // banner
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 20,
                      ),
                      BannerScrolledWidget(scrollerPadding: scrollerPadding),
                      BannerScrolledWidget(scrollerPadding: scrollerPadding),
                      BannerScrolledWidget(scrollerPadding: scrollerPadding),
                    ],
                  ),
                ),
                SizedBox(height: size.width * 0.03),

                // Categories
                Padding(
                  padding: commonPadding,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(categoriesText, style: mainTextStyle),
                          Text(viewAllText, style: primaryTextStyle),
                        ],
                      ),
                    ],
                  ),
                ),
                // scroller item
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: width * .02,
                      ),
                      for (var item in categoriesTextList)
                        CategoriesScrolledItem(
                          scrollerPadding: scrollerPadding,
                          categoriesText: item,
                          secondaryMainTextStyle: secondaryMainTextStyle,
                        )
                    ],
                  ),
                ),
                SizedBox(height: size.width * 0.03),

                // populer food nearby
                Padding(
                  padding: commonPadding,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(popularFoodNearbyText, style: mainTextStyle),
                          Text(viewAllText, style: primaryTextStyle),
                        ],
                      ),
                    ],
                  ),
                ),
                // scroller item
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: width * .02,
                      ),
                      for (var item in popularFoodTextList)
                        PopularFoodScrolledButton(
                            scrollerPadding: scrollerPadding,
                            categoriesText: categoriesText,
                            brandText: brandText,
                            demoPrice: demoPrice,
                            demoRating: demoRating),
                    ],
                  ),
                ),
                SizedBox(height: size.width * 0.03),

                // Food Campaign
                SizedBox(height: size.width * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
