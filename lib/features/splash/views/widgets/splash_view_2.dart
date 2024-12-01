import 'package:ecocycle_app/features/on_boarding/on_bording_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView2 extends StatefulWidget {
  const SplashView2({super.key});

  @override
  State<SplashView2> createState() => SplashView2State();
}

class SplashView2State extends State<SplashView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
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
