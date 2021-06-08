import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const kBlueColor = Color(0xFF2980B9);
const kDarkGrey = Color(0xFF262D40);
const kLightGrey = Color(0xFFF7F8FA);
const kBlackColor = Color(0xFF181818);

const kGreetingStyle = TextStyle(
  color: kDarkGrey,
  fontSize: kIsWeb ? 22.0 : 16.0,
  fontWeight: FontWeight.w400,
);

const kHeadlineStyle = TextStyle(
  color: kDarkGrey,
  fontWeight: FontWeight.bold,
  fontSize: kIsWeb ? 28.0 : 22,
);

const kProgrammingLanguageCardTextStyle = TextStyle(
  color: kDarkGrey,
  fontSize: 14.0,
);

const kProjectCardTitleStyle = TextStyle(
  color: kDarkGrey,
  fontWeight: FontWeight.w800,
  fontSize: kIsWeb ? 20.0 : 16,
);

const kSectionTitleStyle = TextStyle(
  color: kDarkGrey,
  fontWeight: FontWeight.w500,
  fontSize: kIsWeb ? 28.0 : 22,
);
