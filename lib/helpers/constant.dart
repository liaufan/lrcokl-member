import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color.fromRGBO(226, 0, 37, 1.0);
const primaryLightColor = Color.fromRGBO(232, 65, 24, 1.0);

const borderColor = Colors.grey;
const colorCloud = Color.fromRGBO(236, 240, 241, 1);
const colorGreen = Color.fromRGBO(46, 204, 113, 1.0);
const colorAlizarin = Color.fromRGBO(231, 76, 60, 1.0);
const colorDarkerRed = Color.fromRGBO(161, 14, 3, 1.0);
const colorSilver = Color.fromRGBO(189, 195, 199, 1);
const colorWetAsphalt = Color.fromRGBO(52, 73, 94, 1.0);
const colorDarkBlue = Color.fromRGBO(41, 128, 185, 1.0);

const gradientColors = [
  [Colors.amber, Colors.red],
  [Colors.blueGrey, Colors.lightBlue],
  [Colors.green, Colors.greenAccent],
  [Colors.greenAccent, Colors.green],
  [Colors.yellow, Colors.green],
  [Colors.yellow, Colors.red],
  [Colors.purple, Colors.purpleAccent],
  [Colors.pink, Colors.orange],
  [Colors.orange, Colors.amber],
  [Colors.brown, Colors.yellow],
];

List<ColorSwatch<int>> getRandomGradient() {
  var rng = new Random();
  var number = rng.nextInt(gradientColors.length - 1);
  return gradientColors[number];
}

// Airlines color theme
const airlinesPrimaryColor = Color.fromRGBO(43, 43, 43, 1);
const airlinesSecondaryColor = Color.fromRGBO(212, 175, 55, 1);

const Map<int, Color> colorCodes = {
  50: Color.fromRGBO(43, 43, 43, .1),
  100: Color.fromRGBO(43, 43, 43, .2),
  200: Color.fromRGBO(43, 43, 43, .3),
  300: Color.fromRGBO(43, 43, 43, .4),
  400: Color.fromRGBO(43, 43, 43, .5),
  500: Color.fromRGBO(43, 43, 43, .6),
  600: Color.fromRGBO(43, 43, 43, .7),
  700: Color.fromRGBO(43, 43, 43, .8),
  800: Color.fromRGBO(43, 43, 43, .9),
  900: Color.fromRGBO(43, 43, 43, 1),
};

MaterialColor airlinesPrimaryColorMaterial =
    MaterialColor(0x292929, colorCodes);

var mServiceItemTitle = GoogleFonts.openSans(
    fontWeight: FontWeight.w600, color: Colors.black, fontSize: 14);

var mServiceItemSubTitle = GoogleFonts.openSans(
    fontWeight: FontWeight.normal, color: Colors.black, fontSize: 11);

var mTitleStyle = GoogleFonts.openSans(color: primaryColor, fontSize: 16);

var mActionBarTitle = GoogleFonts.openSans(
    fontWeight: FontWeight.w600, color: primaryColor, fontSize: 18);

var mServiceTitle = GoogleFonts.openSans(color: Colors.black, fontSize: 10);

var mServiceSubtitle = GoogleFonts.openSans(
    fontWeight: FontWeight.w600, color: primaryColor, fontSize: 11);

var mDetailPageTitle = GoogleFonts.openSans(
    fontWeight: FontWeight.w600, color: primaryColor, fontSize: 24);

var mDetailPageTitleBlack = GoogleFonts.openSans(
    fontWeight: FontWeight.w600, color: Colors.black87, fontSize: 24);

var mOnlineResultTitleTextStyle = GoogleFonts.openSans(
    color: Colors.black87, fontSize: 13, fontWeight: FontWeight.w600);

var mOnlineResultSubtitleTextStyle =
    GoogleFonts.openSans(color: Colors.black45, fontSize: 10);

var comingSoonTextStyle =
    GoogleFonts.openSans(color: Colors.white, fontSize: 10);

var mPaymentAmountTitle =
    GoogleFonts.openSans(color: Colors.white, fontSize: 40);

var mOngoingTitle = GoogleFonts.openSans(color: Colors.black, fontSize: 12);
var mOngoingSubtitle =
    GoogleFonts.openSans(color: Colors.black45, fontSize: 10);

var mPaymentAmountSubTitle = GoogleFonts.openSans(
    color: Colors.white, fontSize: 16, decoration: TextDecoration.lineThrough);

var addressTitleTextStyle = GoogleFonts.openSans(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
var addressSubtitleTextStyle = GoogleFonts.openSans(
  color: Colors.grey,
  fontSize: 13,
  fontWeight: FontWeight.w400,
);

var defaultShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  spreadRadius: 2,
  blurRadius: 7,
  offset: Offset(0, 3), // changes position of shadow
);

var containerShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  spreadRadius: 1,
  blurRadius: 5,
  offset: Offset(2, 3), // changes position of shadow
);

const String TOKEN_PREF = "TOKENPREF";
const String USER_PREF = "USERPREF";
const String FEATURE_PREF = "FEATUREPREF";

const API_KEY =
    "AIzaSyCA2_2vpx55EAnPiPrtXdH8q72-vIQFbh8"; // todo : move to safe storage

const String termsAndPrivacy = "";

const APP_ID = 'f9a33def81164eecb4cbe3d8f7fee203';

statusTextColor(bool ready) {
  TextStyle mOnlineResultSubtitleTextStyle;

  if (ready) {
    mOnlineResultSubtitleTextStyle =
        GoogleFonts.openSans(color: Colors.green, fontSize: 12);
  } else {
    mOnlineResultSubtitleTextStyle =
        GoogleFonts.openSans(color: Colors.white, fontSize: 8);
  }
  return mOnlineResultSubtitleTextStyle;
}
