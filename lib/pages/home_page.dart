
import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'chat.dart';
import 'explore.dart';
import 'mytrip.dart';
import 'notifica.dart';
import 'user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// Page ------
  final List<Widget> _pages = const [
    Explore(),
    MyTrip(),
    Chat(),
    Not(),
    User(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onTabChange: (index) => navigationBar(index),
      ),
      body:_pages[_selectedIndex],
    );
  }
}
