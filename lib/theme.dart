import 'package:flutter/material.dart';

// Colors

Color green1 = Color(0xFF0097210);
Color green2 = Color(0xFF000880F);

Color dark1 = Color(0xFF01C1C1C);
Color dark2 = Color(0xFF04A4A4A);
Color dark3 = Color(0xFF0999798);
Color dark4 = Color(0xFF0EDEDED);

Color blue1 = Color(0xFF00281A0);
Color blue2 = Color(0xFF000AED5);
Color blue3 = Color(0xFF038BBDA);

Color red = Color(0xFF0ED2739);
Color purple = Color(0xFF087027B);

// Fonts
TextStyle regular12_5 = const TextStyle(
  fontFamily: 'SF-Pro-Display',
  fontSize: 12.5,
);
TextStyle regular14 = regular12_5.copyWith(fontSize: 14);

TextStyle semibold12_5 = regular12_5.copyWith(fontWeight: FontWeight.w600);
TextStyle semibold14 = regular14.copyWith(fontSize: 14, letterSpacing: 0.1, fontWeight: FontWeight.w600);

TextStyle bold16 = regular14.copyWith(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.1,
);
TextStyle bold18 = regular14.copyWith(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  letterSpacing: -0.5,
);
