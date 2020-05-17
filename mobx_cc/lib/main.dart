import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart/cart.dart';
import 'home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<Cart>(
      create: (_) => Cart(),
      // dispose: (_,cart)=> cart.dispose(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
