import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bottom_navbar_custom/fluid_bottom_nav_bar.dart';

class Floating extends StatefulWidget {
  @override
  _FloatingState createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FluidNavBarDemo(),
    );
  }
}
