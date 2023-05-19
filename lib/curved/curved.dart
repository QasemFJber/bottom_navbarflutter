import 'package:bottom_navbar_flutter_assiment/bottom_navbar_custom/curved_bottom_navbar.dart';
import 'package:flutter/material.dart';

class Curved extends StatefulWidget {
  @override
  _CurvedState createState() => _CurvedState();
}

class _CurvedState extends State<Curved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBarCurved(),
    );
  }
}
