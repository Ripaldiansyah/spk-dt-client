// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../core.dart';

class NavigationMenu {
  NavigationMenu({
    required this.label,
    required this.icon,
    required this.iconActive,
    this.count = 0,
  });
  final String label;
  final IconData icon;
  final IconData iconActive;
  final int count;
}

class QNavigation extends StatefulWidget {
  const QNavigation({
    required this.pages,
    required this.menus,
    super.key,
    this.initialIndex = 0,
  });
  final List<Widget> pages;
  final List<NavigationMenu> menus;
  final int initialIndex;

  @override
  State<QNavigation> createState() => Q_NavigationState();
}

class Q_NavigationState extends State<QNavigation> {
  int selectedIndex = 0;

  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.pages.length,
      initialIndex: selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: widget.pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: updateIndex,
            type: BottomNavigationBarType.fixed,
            items: List.generate(widget.menus.length, (index) {
              final item = widget.menus[index];
              return BottomNavigationBarItem(
                icon: Icon(
                  item.icon,
                  color: primaryColor,
                ),
                activeIcon: Icon(
                  item.iconActive,
                ),
                label: item.label,
              );
            }),
            selectedItemColor: primaryColor,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              color: primaryColor,
            )),
      ),
    );
  }
}
