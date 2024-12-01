import 'package:flutter/material.dart';

class WalkThrougth extends StatelessWidget {
  WalkThrougth({super.key, required this.title, required this.image});
  final controller = PageController();
  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        const SizedBox(
          height: 180,
        ),
        Image.asset(
          image,
          height: 230,
          width: 210,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
        ),
      ]),
    ));
  }
}
