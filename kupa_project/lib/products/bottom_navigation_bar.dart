import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
          Icons.home_outlined,
        )),
        BottomNavigationBarItem(
            icon: Icon(
          Icons.home_outlined,
        )),
        BottomNavigationBarItem(
            icon: Icon(
          Icons.home_outlined,
        )),
      ],
    );
  }
}
