import 'package:ecocycle_app/core/constant.dart';
import 'package:flutter/material.dart';

class PointsSection extends StatefulWidget {
  const PointsSection({super.key});

  @override
  State<PointsSection> createState() => _PointsSectionState();
}

class _PointsSectionState extends State<PointsSection> {
  int _counter = 0; // Initialize the counter

  void _incrementCounter() {
    setState(() {
      _counter++; // Increment the counter
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--; // Decrement the counter if greater than 0
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            _incrementCounter();
          },
          child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: kPrimaryColor) // Background color
                  ),
              padding: EdgeInsets.all(7), // Padding inside the circle
              child: Container(
                height: 20,
                child: Icon(
                  Icons.add,
                  size: 15, // Size of the icon
                  color: kPrimaryColor, // Icon color
                ),
              )),
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          '$_counter',
          style: TextStyle(
              fontSize: 18, color: kPrimaryColor, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: 8,
        ),
        GestureDetector(
          onTap: () {
            _decrementCounter();
          },
          child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: kPrimaryColor) // Background color
                  ),
              padding: EdgeInsets.all(7), // Padding inside the circle
              child: Container(
                height: 20,
                child: Icon(
                  Icons.remove,
                  size: 15, // Size of the icon
                  color: kPrimaryColor, // Icon color
                ),
              )),
        )
      ],
    );
  }
}
