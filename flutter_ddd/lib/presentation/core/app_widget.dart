import 'package:flutter/material.dart';
import 'package:flutter_ddd/presentation/sign_in/sign_in.dart';

class AppWdidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes',
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.deepPurple[800],
          accentColor: Colors.purple,
          inputDecorationTheme: InputDecorationTheme(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)))),
      home: Scaffold(body: SignInPage()),
    );
  }
}
