import 'package:ecocycle_app/core/constant.dart';

import 'package:ecocycle_app/features/scan/views/widgets/points.dart';
import 'package:flutter/material.dart';

class PointsView extends StatefulWidget {
  const PointsView({super.key});

  @override
  State<PointsView> createState() => _PointsViewState();
}

class _PointsViewState extends State<PointsView> {
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
              height: 50,
            ),
            Center(
              child: Image.asset(
                'assets/images/Group 126.png',
                height: 290,
                width: 230,
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
      padding: EdgeInsets.all(20),
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
                width: 115,
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
