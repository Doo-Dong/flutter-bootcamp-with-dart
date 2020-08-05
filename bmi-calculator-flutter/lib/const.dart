import 'package:flutter/material.dart';

//color
const Color kDefaultBlack = Color(0xFF1D1F33);
const Color kDefaultFuchsia = Color(0xFFEA1556);
const Color kDefaultFuchsiaOpacity = Color(0x1fEA1556); //12% opacity
const Color kInactiveLightGrey = Color(0xFF8E8E9A);
const Color kActiveWhite = Color(0xFFFFFFFF);
const Color kDefaultDeepBlack = Color(0xFF090C22);

//size-value
const double kIconSize = 80.0;
const double kSizedBoxHeight = 10.0;

//size-value
const double kDefaultEdgeInsets = 10.0;
const double kDefaultCardBorderRadius = 5.0;

//text-style
const TextStyle kInactiveFont = TextStyle(
  color: kInactiveLightGrey,
);

const TextStyle kSuperWeightFont = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const TextStyle kSuperResultWeightFont = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.w900,
);

const TextStyle kResultWhiteFont = TextStyle(
    fontSize: 20.0,
    color: kActiveWhite
);

const TextStyle kResultGreenFont = TextStyle(
    fontSize: 20.0,
    color: Colors.green
);