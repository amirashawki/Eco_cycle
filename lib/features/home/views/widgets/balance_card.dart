import 'package:ecocycle_app/features/home/views/widgets/upload_section.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 130,
      padding: EdgeInsets.all(10),
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
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            '250.000',
            style: TextStyle(
                fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          points(),
          SizedBox(height: 10),
          UploadSection()
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
      width: 77,
      height: 15,
      decoration: BoxDecoration(
          color: Color(0xffFFC374), borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Vector (3).png'),
          Text(
            '200 points',
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
          Image.asset(
            'assets/images/Vector (4).png',
            height: 8,
            width: 8,
          )
        ],
      ),
    );
  }
}
