import 'package:bottom_navbar_flutter_assiment/bottom_navbar_custom/convex_bottom_navbar.dart';
import 'package:flutter/material.dart';

class Convex extends StatefulWidget {
  @override
  _ConvexState createState() => _ConvexState();
}

class _ConvexState extends State<Convex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBarConvex(),
    );
  }
}
