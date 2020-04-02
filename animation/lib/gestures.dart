import 'package:flutter/material.dart';

class Gestures extends StatefulWidget {
  @override
  _GesturesState createState() => _GesturesState();
}

class _GesturesState extends State<Gestures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            print("called");
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(17.0),
            ),
            height: 70,
            width: 100,
            child: Center(child: Text("click me")),
            padding: EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
