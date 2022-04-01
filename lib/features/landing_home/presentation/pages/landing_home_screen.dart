import 'package:atiqur_rahman/core/utils/constants.dart';
import 'package:flutter/material.dart';

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

  final List<String> restaurentsFilterTextList = ['All', 'Take Away', 'Home Delivery'];

  // final String Text = 'View';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    final EdgeInsets commonPadding = EdgeInsets.fromLTRB(width * 0.05, height * 0.01, width * 0.05, height * 0.01);

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
                SizedBox(height: size.width * 0.05),

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
                Padding(
                  padding: commonPadding,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
