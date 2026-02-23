import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moderndesign/pages/first.dart';

void main() {
  runApp(SevenDays());
}

class SevenDays extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: First(),
      debugShowCheckedModeBanner: false,
    );
  }
}