import 'package:big_poetry_app/constants/constants.dart';
import 'package:big_poetry_app/screens/home_page.dart';
import 'package:big_poetry_app/screens/poems_page.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

class MenuPageScreen extends StatefulWidget {
  const MenuPageScreen({super.key});

  @override
  State<MenuPageScreen> createState() => _MenuPageScreenState();
}

class _MenuPageScreenState extends State<MenuPageScreen> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    const HomePageScreen(),
    const PoemsPageScreen(),
    const PoemsPageScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: tabItems[_selectedIndex],
        ),
        bottomNavigationBar: FlashyTabBar(
          animationCurve: Curves.linear,
          selectedIndex: _selectedIndex,
          iconSize: 30,
          showElevation: false, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            FlashyTabBarItem(
              activeColor: kBackgroundColor,
              inactiveColor: kSecondaryColor,
              icon: const Icon(Icons.home),
              title: const Text('Home'),
            ),
            FlashyTabBarItem(
              activeColor: kBackgroundColor,
              inactiveColor: kSecondaryColor,
              icon: const Icon(Icons.book),
              title: const Text('Poems'),
            ),
            FlashyTabBarItem(
              activeColor: kBackgroundColor,
              inactiveColor: kSecondaryColor,
              icon: const Icon(Icons.favorite_outline),
              title: const Text('Saved'),
            ),
          ],
        ),
    );
  }
}