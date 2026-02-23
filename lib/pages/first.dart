import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x13131E),
      body: Padding(
        padding: const EdgeInsets.only(top: 230, left: 118, right: 118),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/sword_icon.png',
                width: 141,
                height: 141,
              ),
            ),
            SizedBox(height: 170),
            Text(
              'Venture',
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
