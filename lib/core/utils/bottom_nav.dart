import 'dart:io';

import 'package:ecocycle_app/core/constant.dart';
import 'package:ecocycle_app/core/utils/app_router.dart';
import 'package:ecocycle_app/features/Ecocycle%20awards/views/Ecocycle_awards.dart';
import 'package:ecocycle_app/features/camera/views/camera_view.dart';
import 'package:ecocycle_app/features/home/views/home_view.dart';
import 'package:ecocycle_app/features/scan/views/scan_product_view.dart';
import 'package:ecocycle_app/features/scan/views/scan_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class BOttomNavigationBar extends StatefulWidget {
  @override
  _BOttomNavigationBarState createState() => _BOttomNavigationBarState();
}

File? selectedImage;

class _BOttomNavigationBarState extends State<BOttomNavigationBar> {
  int _selectedIndex = 0;
  List<Widget> bodyContent = [
    HomeView(),
    ScanView(),
    CameraView(),
    ScanProductView(),
    EcocycleAwardsView(),
  ];

  void _onItemTapped(int index) {
    if (index < 5) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          iconSize: 22,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.delete_outline_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    pickImageFromCamera();
                    GoRouter.of(context).push(AppRouter.kScanProductView);
                  },
                  icon: Icon(Icons.camera_alt_outlined)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_vert_rounded),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Color(0xff9A9898),
          // Set current index
          selectedItemColor: kPrimaryColor,
          // Color of selected item
          onTap: _onItemTapped, // Callback when an item is tapped
        ),
      ),
      body: bodyContent[_selectedIndex],
    );
  }

  Future pickImageFromCamera() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (selectedImage == null) return;
    setState(() {
      selectedImage = File(returnedImage!.path);
    });
  }
}
