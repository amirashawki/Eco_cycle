import 'package:ecocycle_app/core/constant.dart';
import 'package:flutter/material.dart';

class Materials extends StatelessWidget {
  const Materials({
    super.key,
    required this.image,
    required this.text,
  });
  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 57,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 18,
            width: 25,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 10, color: Colors.white, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
