import 'package:ecocycle_app/core/constant.dart';
import 'package:ecocycle_app/features/home/views/widgets/balance_card.dart';
import 'package:ecocycle_app/features/home/views/widgets/materials.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Text(
                  'Hi,',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  'Ahmed',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.w500),
                )
              ],
            ),
            Text(
              'Let s protect the environment',
              style: TextStyle(
                  color: Color(0xffD9D9D9),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Materials(image: 'assets/images/Vector.png', text: 'paper'),
                Materials(image: 'assets/images/Vector (1).png', text: 'can'),
                Materials(image: 'assets/images/Group.png', text: 'plastic'),
                Materials(image: 'assets/images/Group (1).png', text: 'carton'),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Mission',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Text(
                      'Show more ',
                      style: TextStyle(
                        color: Color(0xff9FA09F),
                        fontSize: 10,
                      ),
                    ),
                    Image.asset(
                      'assets/images/Vector (2).png',
                      height: 9,
                      width: 9,
                    )
                  ],
                ),
              ],
            ),
            // BalanceCard()
          ],
        ),
      ),
    );
  }
}
