import 'package:flutter/material.dart';
import 'package:flutter_ddd/presentation/core/app_widget.dart';
import 'package:flutter_ddd/presentation/injection.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppWdidget();
  }
}
