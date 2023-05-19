import 'package:bottom_navbar_flutter_assiment/bottom_navbar_custom/circle_bottom_navbar.dart';
import 'package:bottom_navbar_flutter_assiment/spincircle/spincircle.dart';
import 'package:flutter/material.dart';

import 'circle/circle.dart';
import 'convex/convex.dart';
import 'curved/curved.dart';
import 'floating/floating.dart';
import 'normal/normal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeBottom(),
    );
  }
}

class HomeBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(17),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.indigo],
                    // تدرج الألوان من الأزرق إلى الكحلي
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.yellow),
                  // لون الحواف الخفيفة
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellow.withOpacity(0.3),
                      // لون الظل الأصفر بشفافية 0.3
                      spreadRadius: 2,
                      // قوة انتشار الظل
                      blurRadius: 5,
                      // قوة التموج في الظل
                      offset:
                          Offset(0, 2), // إزاحة الموضع العمودية والأفقية للظل
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NormalBottom()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    elevation: 0,
                    // تعيين الظل للزر
                    primary: Colors.blue,
                    // اللون الأزرق للزر
                    onPrimary: Colors.indigo,
                    // اللون الكحلي للزر عند التحويل
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Normal",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.indigo],
                    // تدرج الألوان من الأزرق إلى الكحلي
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.yellow),
                  // لون الحواف الخفيفة
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellow.withOpacity(0.3),
                      // لون الظل الأصفر بشفافية 0.3
                      spreadRadius: 2,
                      // قوة انتشار الظل
                      blurRadius: 5,
                      // قوة التموج في الظل
                      offset:
                          Offset(0, 2), // إزاحة الموضع العمودية والأفقية للظل
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Circle()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    elevation: 0,
                    // تعيين الظل للزر
                    primary: Colors.blue,
                    // اللون الأزرق للزر
                    onPrimary: Colors.indigo,
                    // اللون الكحلي للزر عند التحويل
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Circle",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.indigo],
                    // تدرج الألوان من الأزرق إلى الكحلي
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.yellow),
                  // لون الحواف الخفيفة
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellow.withOpacity(0.3),
                      // لون الظل الأصفر بشفافية 0.3
                      spreadRadius: 2,
                      // قوة انتشار الظل
                      blurRadius: 5,
                      // قوة التموج في الظل
                      offset:
                          Offset(0, 2), // إزاحة الموضع العمودية والأفقية للظل
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Convex()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    elevation: 0,
                    // تعيين الظل للزر
                    primary: Colors.blue,
                    // اللون الأزرق للزر
                    onPrimary: Colors.indigo,
                    // اللون الكحلي للزر عند التحويل
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Convex",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.indigo],
                    // تدرج الألوان من الأزرق إلى الكحلي
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.yellow),
                  // لون الحواف الخفيفة
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellow.withOpacity(0.3),
                      // لون الظل الأصفر بشفافية 0.3
                      spreadRadius: 2,
                      // قوة انتشار الظل
                      blurRadius: 5,
                      // قوة التموج في الظل
                      offset:
                          Offset(0, 2), // إزاحة الموضع العمودية والأفقية للظل
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Floating()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    elevation: 0,
                    // تعيين الظل للزر
                    primary: Colors.blue,
                    // اللون الأزرق للزر
                    onPrimary: Colors.indigo,
                    // اللون الكحلي للزر عند التحويل
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Floating",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.indigo],
                    // تدرج الألوان من الأزرق إلى الكحلي
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.yellow),
                  // لون الحواف الخفيفة
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellow.withOpacity(0.3),
                      // لون الظل الأصفر بشفافية 0.3
                      spreadRadius: 2,
                      // قوة انتشار الظل
                      blurRadius: 5,
                      // قوة التموج في الظل
                      offset:
                          Offset(0, 2), // إزاحة الموضع العمودية والأفقية للظل
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Curved()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    elevation: 0,
                    // تعيين الظل للزر
                    primary: Colors.blue,
                    // اللون الأزرق للزر
                    onPrimary: Colors.indigo,
                    // ال
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Curved",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
