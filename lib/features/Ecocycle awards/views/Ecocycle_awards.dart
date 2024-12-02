import 'package:ecocycle_app/core/constant.dart';
import 'package:flutter/material.dart';

class EcocycleAwardsView extends StatelessWidget {
  const EcocycleAwardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
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
                child: Text(
                  'Ecocycle Awards',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 80,
                  width: 210,
                  decoration: BoxDecoration(
                    border: Border.all(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/noto_coin.png',
                              height: 20,
                            ),
                            Text(
                              '590',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Your Points',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/Vector (29).png',
                              height: 20,
                            ),
                            Text(
                              '190',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Collectedn Item',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: CardPoint(),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class CardPoint extends StatelessWidget {
  const CardPoint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: kPrimaryColor),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 7,
          ),
          Image.asset(
            'assets/images/c1b943fd8c153a85598a172aa7060822 1.png',
            height: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '600 point get 20% for order',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
