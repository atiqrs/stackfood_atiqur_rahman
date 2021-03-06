import 'package:flutter/material.dart';

const primaryColor = Color.fromARGB(255, 255, 152, 0);

const secondayColor = Color.fromARGB(255, 158, 158, 158);
const lowSecondayColor = Color.fromARGB(150, 158, 158, 158);

const mainBlackColor = Color.fromARGB(255, 0, 0, 0);
const mainWhiteColor = Color.fromARGB(255, 255, 255, 255);

const mainTextColor = Color.fromARGB(255, 15, 15, 120);
const secondaryMainTextColor = Color.fromARGB(221, 15, 15, 120);

const backgroundColor = Color.fromARGB(10, 158, 158, 158);

const redColor = Color.fromARGB(255, 245, 3, 3);
const greenColor = Color.fromARGB(255, 0, 184, 15);

const shimmerColor = Color.fromRGBO(224, 224, 224, 1);
const lowShimmerColor = Color.fromRGBO(245, 245, 245, 1);

const mainTextStyle = TextStyle(
    color: mainTextColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700, //h1 - 400
    fontSize: 24,
    letterSpacing: 0.15);

const secondaryMainTextStyle = TextStyle(
    color: secondaryMainTextColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500, //h1 - 400
    fontSize: 18,
    letterSpacing: 0.15);

const restaurentsCategoriesTextStyle = TextStyle(
    color: secondayColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500, //h1 - 400
    fontSize: 14,
    letterSpacing: 0.4);

const currentPriceTextStyle = TextStyle(
    color: secondaryMainTextColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500, //h1 - 400
    fontSize: 18,
    letterSpacing: 0.15);

const oldPriceTextStyle = TextStyle(
    color: lowSecondayColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500, //h1 - 400
    fontSize: 18,
    letterSpacing: 0.15,
    decoration: TextDecoration.lineThrough);

const brandTextStyle = TextStyle(
    color: secondayColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold, //h1 - 400
    fontSize: 14,
    letterSpacing: 0.4);

const secondaryBrandTextStyle = TextStyle(
    color: secondayColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold, //h1 - 400
    fontSize: 12,
    letterSpacing: 0.1);

const secondaryBrandLocationTextStyle = TextStyle(
    color: secondayColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal, //h1 - 400
    fontSize: 12,
    letterSpacing: 0.1);

const primaryTextStyle = TextStyle(
    color: primaryColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500, //h1 - 400
    fontSize: 18,
    letterSpacing: 0.15,
    decoration: TextDecoration.underline);

const ratingTextStyle = TextStyle(
  color: primaryColor,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500, //h1 - 400
  fontSize: 18,
  letterSpacing: 0.15,
);

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
