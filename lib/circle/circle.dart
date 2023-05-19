import 'package:bottom_navbar_flutter_assiment/bottom_navbar_custom/circle_bottom_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bottom_navbar_custom/fluid_bottom_nav_bar.dart';

class Circle extends StatefulWidget {
  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBarCircle(),
    );
  }
}
