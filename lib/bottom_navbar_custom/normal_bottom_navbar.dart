import 'package:bottom_navbar_flutter_assiment/pages/add.dart';
import 'package:bottom_navbar_flutter_assiment/pages/discovery.dart';
import 'package:bottom_navbar_flutter_assiment/pages/home.dart';
import 'package:bottom_navbar_flutter_assiment/pages/message.dart';
import 'package:bottom_navbar_flutter_assiment/pages/profile.dart';
import 'package:flutter/material.dart';

class BottomNavBarNormal extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBarNormal> {
  int currentIndex = 0;
  final List<Widget> pages = [
    Home(),
    Message(),
    Add(),
    Discovery(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.amberAccent,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.deepOrange,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Discovery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
