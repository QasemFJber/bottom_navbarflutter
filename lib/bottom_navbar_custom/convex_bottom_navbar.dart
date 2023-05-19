import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class BottomNavBarConvex extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBarConvex> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // وضع الصفحة الحالية هنا
        child: _getPage(currentPage),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        backgroundColor: Colors.amberAccent,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.explore, title: 'Discovery'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: currentPage,
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
          color: Colors.yellowAccent.shade100,
        );
      case 1:
        return Container(
          // تعبئة الصفحة الثانية
          color: Colors.blue.shade200,
        );
      case 2:
        return Container(
          // تعبئة الصفحة الثالثة
          color: Colors.green.shade200,
        );
      case 3:
        return Container(
          // تعبئة الصفحة الرابعة
          color: Colors.orange.shade200,
        );
      case 4:
        return Container(
          // تعبئة الصفحة الخامسة
          color: Colors.pinkAccent.shade100,
        );
      default:
        return Container();
    }
  }
}
