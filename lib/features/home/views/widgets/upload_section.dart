import 'dart:io';

import 'package:ecocycle_app/core/utils/app_router.dart';
import 'package:ecocycle_app/features/scan/views/scan_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class UploadSection extends StatefulWidget {
  const UploadSection({
    super.key,
  });

  @override
  State<UploadSection> createState() => _UploadSectionState();
}

File? selectedImage;

class _UploadSectionState extends State<UploadSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 180,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              pickImageFromGallery();
              GoRouter.of(context)
                  .push(AppRouter.kScanProductView, extra: selectedImage);
            },
            child: Image.asset(
              'assets/images/Vector (8).png',
              height: 15,
              width: 15,
            ),
          ),
          Container(
            height: 22,
            width: 2,
            color: Color(0xff9A9898),
          ),
          Image.asset(
            'assets/images/Vector (9).png',
            height: 15,
            width: 15,
          ),
          Container(
            height: 22,
            width: 1,
            color: Color(0xff9A9898),
          ),
          Image.asset(
            'assets/images/Vector (10).png',
            height: 15,
            width: 15,
          ),
        ],
      ),
    );
  }

  Future pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (selectedImage == null) return;
    setState(() {
      selectedImage = File(returnedImage!.path);
    });
  }
}
