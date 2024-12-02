import 'package:flutter/material.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        child: Image.asset(
          'assets/images/9b8a3a1c09f6dad46ed06086b0b1c095 1 (1).png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
