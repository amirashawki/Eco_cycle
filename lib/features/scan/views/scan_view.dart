import 'package:flutter/material.dart';

class ScanView extends StatelessWidget {
  const ScanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/Group 124.png',
              height: 30,
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Image.asset(
                'assets/images/Group 125.png',
                height: 290,
                width: 230,
              ),
            )
          ],
        ),
      ),
    );
  }
}
