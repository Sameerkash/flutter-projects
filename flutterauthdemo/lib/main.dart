import 'package:flutter/material.dart';
import 'package:flutterauthdemo/home.dart';
import 'package:flutterauthdemo/login.dart';
import 'package:flutterauthdemo/provider/user_provider.dart';

import 'package:flutterauthdemo/splash.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserProvider.initialize(),
      child: MaterialApp(
        home: Scaffold(
          body: ScreenController(),
          // Home(),
          //  Login(),
          // Center(
          // child: Text("Hello"),)
        ),
      ),
    );
  }
}

class ScreenController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    switch (user.status) {
      case Status.UNINITIALIZED:
        return Splash();
      case Status.UNAUTHENTICATED:
      case Status.AUTHENTICATING:
        return Login();
      case Status.AUTHENTICATED:
        return Home();
      default:
        return Login();
    }
  }
}
