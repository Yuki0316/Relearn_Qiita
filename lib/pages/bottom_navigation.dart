import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _navBarItems[_selectedIndex].title,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 0.5,
            ),
          ),
        ),
        child: SalomonBottomBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue[900],
          items: _navBarItems,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

final _navBarItems = [
  SalomonBottomBarItem(
    icon: const Icon(Icons.view_list),
    title: const Text('Feed'),
    selectedColor: Colors.blue[900],
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.label_important_outline_sharp),
    title: const Text('Tag'),
    selectedColor: Colors.blue[900],
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.person_outline),
    title: const Text('My Page'),
    selectedColor: Colors.blue[900],
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.settings_suggest_outlined),
    title: const Text('Settings'),
    selectedColor: Colors.blue[900],
  ),
];
