import 'package:flutter/material.dart';

typedef StringCallback = void Function(String);

const Color white = Colors.white;
final Color light = Colors.grey[300]!;
final Color lighter = Colors.grey[200]!;
final Color dark = Colors.grey[700]!;
final Color darker = Colors.grey[800]!;
const Color blue = Colors.blue;
const Color green = Colors.green;
const Color black = Colors.black;
const Color grey = Colors.grey;
const Color red = Colors.red;
const Color danger = Color(0xFFDD2020);
final Color warning = Colors.yellow[900]!;
const Color gold = Color(0xFFFFD700);
const Color maroon = Color(0xFF800000);
const Color slateGray = Color(0xFF708090);

const double xxs = 4;
const double xs = 8;
const double xsm = 12;
const double sm = 16;
const double md = 24;
const double lg = 32;
const double xl = 40;
const double xxl = 56;
const double xxxl = 126;

const double pagePadding = sm;
const pageInset = EdgeInsets.all(sm);

const spaceXxs = SizedBox(width: xxs, height: xxs);
const spaceXs = SizedBox(width: xs, height: xs);
const spaceXsm = SizedBox(width: xsm, height: xsm);
const spaceSm = SizedBox(width: sm, height: sm);
const spaceMd = SizedBox(width: md, height: md);
const spaceLg = SizedBox(width: lg, height: lg);
const spaceXl = SizedBox(width: xl, height: xl);
const spaceXxl = SizedBox(width: xxl, height: xxl);
const space2xl = spaceXxl;
const space3xl = SizedBox(width: xxxl, height: xxxl);

/// Extra body text sizes.
///
const TextStyle bodyText3 = TextStyle(fontSize: 14);
const TextStyle bodyText4 = TextStyle(fontSize: 12);
const TextStyle bodyText5 = TextStyle(fontSize: 10);

// ignore: constant_identifier_names
const String ERROR_NAVIGATOR_KEY = 'ERROR_NAVIGATOR_KEY';
