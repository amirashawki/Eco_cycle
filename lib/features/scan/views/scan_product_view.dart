import 'dart:io';

import 'package:ecocycle_app/core/constant.dart';

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

                  Image.asset(
                'assets/images/Group 126.png',
                height: 260,
                width: 210,
              ),
            ),
            PointsSection(),
            SizedBox(
              height: 20,
            ),
            TrashInfoCard()
          ],
        ),
      ),
    );
  }
}

class TrashInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 250,
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColor),
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Trash Type:',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 105,
              ),
              Text(
                'Plastic',
                style: TextStyle(
                    fontSize: 12,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Text(
                'Weight',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                width: 144,
              ),
              Text(
                '2 kg',
                style: TextStyle(
                    fontSize: 12,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(),
          Text(
            'Price ',
            style: TextStyle(fontSize: 12),
          ),
          Row(
            children: [
              Text(
                '26*100',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                width: 125,
              ),
              Text(
                '2600 Eg',
                style: TextStyle(
                    fontSize: 12,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
