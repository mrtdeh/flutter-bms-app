import 'package:flutter/material.dart';

import 'package:bms_app/Pages/HomePage.dart';
import 'package:bms_app/Pages/ProfilePage.dart';
import 'package:bms_app/Pages/RemotePage.dart';

class Starter extends StatefulWidget {
  @override
  _StarterState createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          )
        ],
        onTap: _onTappedBar,
        selectedItemColor: Colors.orange,
        currentIndex: _selectedIndex,
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          ProfilePage(),
          HomePage(),
          RemotePage(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
