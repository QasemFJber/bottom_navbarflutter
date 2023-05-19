import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBarCurved extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBarCurved> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // وضع الصفحة الحالية هنا
        child: _getPage(currentPage),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.lightBlueAccent.shade100,
        color: Colors.white,
        height: 60,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.message, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.explore, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (int position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  Widget _getPage(int page) {
    switch (page) {
      case 0:
        return Container(
          // تعبئة الصفحة الأولى
          color: Colors.red,
        );
      case 1:
        return Container(
          // تعبئة الصفحة الثانية
          color: Colors.blue,
        );
      case 2:
        return Container(
          // تعبئة الصفحة الثالثة
          color: Colors.green,
        );
      case 3:
        return Container(
          // تعبئة الصفحة الرابعة
          color: Colors.orange,
        );
      case 4:
        return Container(
          // تعبئة الصفحة الخامسة
          color: Colors.purple,
        );
      default:
        return Container();
    }
  }
}
