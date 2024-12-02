import 'dart:async';

import 'package:ecocycle_app/core/constant.dart';
import 'package:ecocycle_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScanSuccess extends StatefulWidget {
  const ScanSuccess({super.key});

  @override
  State<ScanSuccess> createState() => _ScanSuccessState();
}

class _ScanSuccessState extends State<ScanSuccess> {
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kEcocycleAwardsView);
    });
  }

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
