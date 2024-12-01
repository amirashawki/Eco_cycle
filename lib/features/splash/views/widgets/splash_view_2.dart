import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView2 extends StatelessWidget {
  const SplashView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/background.png'), // Path to your image
            fit: BoxFit.cover, // Covers the entire screen
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 190,
              ),
              Image.asset(
                'assets/images/logo2.png',
                height: 150,
                width: 150,
              ),
              Text(
                'ECOCYCLE',
                style: GoogleFonts.dynaPuff().copyWith(
                    color: Color(0xff33AA56),
                    fontSize: 32,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
