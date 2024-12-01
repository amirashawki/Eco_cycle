import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 150,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffECF7DD),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Your Balance',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            '250.000',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          points(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class points extends StatelessWidget {
  const points({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
          color: Color(0xffFFC374), borderRadius: BorderRadius.circular(7)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Vector (3).png'),
          Text(
            '200 points',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          Image.asset(
            'assets/images/Vector (4).png',
            height: 9,
            width: 9,
          )
        ],
      ),
    );
  }
}
