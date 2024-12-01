import 'package:ecocycle_app/core/constant.dart';
import 'package:ecocycle_app/features/scan/views/scan_view.dart';
import 'package:flutter/material.dart';

class BOttomNavigationBar extends StatefulWidget {
  @override
  _BOttomNavigationBarState createState() => _BOttomNavigationBarState();
}

class _BOttomNavigationBarState extends State<BOttomNavigationBar> {
  int _selectedIndex = 0;
  List<Widget> bodyContent = [
    ScanView(),
  ];

  void _onItemTapped(int index) {
    if (index < 3) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline),
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
      body: bodyContent[_selectedIndex],
    );
  }
}
