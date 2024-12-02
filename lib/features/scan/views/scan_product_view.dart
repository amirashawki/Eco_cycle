import 'dart:io';

import 'package:ecocycle_app/core/constant.dart';
import 'package:ecocycle_app/core/utils/app_router.dart';
import 'package:ecocycle_app/features/scan/views/widgets/TrashInfoCard.dart';

import 'package:ecocycle_app/features/scan/views/widgets/points.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScanProductView extends StatefulWidget {
  const ScanProductView({super.key});

  @override
  State<ScanProductView> createState() => _ScanProductViewState();
}

class _ScanProductViewState extends State<ScanProductView> {
  @override
  Widget build(BuildContext context) {
    // final selectedImage = GoRouter.of(context).extra as File?;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/Group 124.png',
              height: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child:
                  // selectedImage != null
                  //     ? Image.file(selectedImage) // Display the selected image
                  //     :

                  Stack(
                children: [
                  Image.asset(
                    'assets/images/Group 126 (1).png',
                    height: 260,
                    width: 210,
                  ),
                  Positioned(
                    left: 40,
                    bottom: 30,
                    child: Image.asset(
                      'assets/images/9b8a3a1c09f6dad46ed06086b0b1c095-removebg-preview 1.png',
                      height: 200,
                    ),
                  )
                ],
              ),
            ),
            PointsSection(),
            SizedBox(
              height: 20,
            ),
            TrashInfoCard(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kScanSuccess);
              },
              child: Center(
                child: Text(
                  'Suitable for recycling',
                  style: TextStyle(
                      fontSize: 12,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
