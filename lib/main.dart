import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moderndesign/pages/first.dart';
import 'package:moderndesign/pages/second.dart';

void main() {
  runApp(SevenDays());
}

class SevenDays extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Second(),
      debugShowCheckedModeBanner: false,
    );
  }
}