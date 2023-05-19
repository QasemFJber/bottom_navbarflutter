import 'package:bottom_navbar_flutter_assiment/bottom_navbar_custom/normal_bottom_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NormalBottom extends StatefulWidget {
  @override
  _NormalBottomState createState() => _NormalBottomState();
}

class _NormalBottomState extends State<NormalBottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBarNormal(),
    );
  }
}
