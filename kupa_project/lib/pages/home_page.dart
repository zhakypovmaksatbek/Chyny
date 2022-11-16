// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kupa_project/constant.dart';
import 'package:kupa_project/pages/cart_page.dart';
import 'package:kupa_project/pages/home.dart';
import 'package:kupa_project/pages/menu_page.dart';
import 'package:kupa_project/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<Widget> allPage = [
    const Home(),
    const MenuPage(),
    const CartPage(),
    const ProfilePage()
  ];
  @override
  void initState() {
    super.initState();
    allPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavBarMenu(),
      body: allPage[index],
    );
  }

  NavigationBar _bottomNavBarMenu() {
    return NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) {
          setState(() {
            this.index = index;
          });
        },
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        backgroundColor: kPrimaryLightColor,
        animationDuration: const Duration(milliseconds: 500),
        destinations: [
          BottomNavBar(
            tooltip: "Башкыбет",
            icon: Icons.home_outlined,
            title: "Башкыбет",
            selectedIcon: Icon(
              Icons.home,
              color: kPrimaryColor,
              size: 35,
            ),
          ),
          BottomNavBar(
              tooltip: "Меню",
              icon: Icons.restaurant_menu_outlined,
              title: "Меню",
              selectedIcon: Icon(
                Icons.restaurant_menu,
                color: kPrimaryColor,
                size: 35,
              )),
          BottomNavBar(
              tooltip: "Корзина",
              icon: Icons.shopping_cart_outlined,
              title: "Корзина",
              selectedIcon: Icon(
                Icons.shopping_cart,
                color: kPrimaryColor,
                size: 35,
              )),
          BottomNavBar(
              tooltip: "Профил",
              icon: Icons.person_outline_outlined,
              title: "Профил",
              selectedIcon: Icon(
                Icons.person,
                color: kPrimaryColor,
                size: 35,
              )),
        ]);
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.title,
    required this.tooltip,
    required this.icon,
    required this.selectedIcon,
  }) : super(key: key);
  final String title;
  final String tooltip;
  final IconData icon;
  final Widget selectedIcon;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      
      tooltip: tooltip,
      icon: Icon(
        icon,
        color: const Color.fromARGB(255, 203, 201, 201),
        size: 35,
      ),
      label: title,
      selectedIcon: selectedIcon,
    );
  }
}
