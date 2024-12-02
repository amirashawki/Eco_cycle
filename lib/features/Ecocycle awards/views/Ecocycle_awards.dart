import 'package:flutter/material.dart';

class EcocycleAwardsView extends StatelessWidget {
  const EcocycleAwardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Text(
            'Ecocycle Awards',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
