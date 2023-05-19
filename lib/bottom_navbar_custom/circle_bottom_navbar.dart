import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';

class BottomNavBarCircle extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBarCircle> {
  int selectedPos = 0;
  double bottomNavBarHeight = 60;

  List<TabItem> tabItems = List.of([
    new TabItem(Icons.home, "Home", Colors.blue,
        labelStyle: const TextStyle(fontWeight: FontWeight.normal)),
    new TabItem(Icons.search, "Search", Colors.orange,
        labelStyle: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    new TabItem(Icons.layers, "Reports", Colors.red),
    new TabItem(Icons.notifications, "Notification", Colors.cyan),
  ]);

   CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = new CircularBottomNavigationController(selectedPos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            child: _getPage(selectedPos),
            padding: EdgeInsets.only(bottom: bottomNavBarHeight),
          ),
          Align(alignment: Alignment.bottomCenter, child: _buildBottomNav())
        ],
      ),
    );
  }

  Widget _getPage(int page) {
    Color selectedColor = tabItems[page].circleColor;
     String slogan;
    switch (page) {
      case 0:
        slogan = 'HOME SCREEN';
        break;
      case 1:
        slogan = 'SEARCH SCREEN';
        break;
      case 2:
        slogan = 'REPORTS SCREEN';
        break;
      case 3:
        slogan = 'NOTIFICATIONS SCREEN';
        break;
    }
    return Container(
      color: selectedColor,
      child: Center(
        child: Text(
          slogan,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
    return CircularBottomNavigation(
      tabItems,
      controller: _navigationController,
      barHeight: bottomNavBarHeight,
      barBackgroundColor: Colors.white,
      animationDuration: const Duration(milliseconds: 300),
      selectedCallback: (int selectedPos) {
        setState(() {
          this.selectedPos = selectedPos;
          print(_navigationController.value);
        });
      },
    );
  }
}
