import 'package:flutter/material.dart';
import 'package:hacker_cmd/service/locator.dart';
import 'views/home.dart';

void main() {
  setUp();
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
      home: HomeView(),
    );
  }
}
