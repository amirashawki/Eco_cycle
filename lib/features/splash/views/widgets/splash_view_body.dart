import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 160,
            ),
            Image.asset(
              'assets/images/logo.png',
              height: 186,
              width: 176,
            ),
            Text(
              'Ecocycle',
              style: GoogleFonts.alkatra().copyWith(
                  color: Color(0xff81B449),
                  fontSize: 40,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
