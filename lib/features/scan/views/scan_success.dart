import 'package:ecocycle_app/core/constant.dart';
import 'package:flutter/material.dart';

class ScanSuccess extends StatelessWidget {
  const ScanSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Scan Successful',
              style: TextStyle(
                  fontSize: 16,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Image.asset(
              'assets/images/Vector (12).png',
              height: 60,
              width: 70,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'You can go now to see new challange',
              style: TextStyle(
                  fontSize: 10,
                  color: Color(0xff9A9898),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
