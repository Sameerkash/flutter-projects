// import 'package:animation/animated_widget_page.dart';
// import 'package:animation/animations.dart';
// import 'package:animation/delayed.dart';
// import 'package:animation/gestures.dart';
import 'package:animation/parenting.dart';
import 'package:animation/value_change.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ValueChange(),
    );
  }
}
