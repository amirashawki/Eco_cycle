import 'package:ecocycle_app/core/constant.dart';
import 'package:flutter/material.dart';

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
                width: 90,
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
                width: 129,
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
                width: 110,
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
