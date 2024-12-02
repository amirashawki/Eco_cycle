import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  const Gridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 6,
        clipBehavior: Clip.none,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            childAspectRatio: 1.0,
            mainAxisSpacing: 12),
        itemBuilder: (context, index) {
          return Image.asset(
            'assets/images/Frame 4 (2).png',
          );
        });
  }
}
