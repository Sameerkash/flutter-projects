import 'package:flutter/material.dart';

class Delayed extends StatefulWidget {
  @override
  _DelayedState createState() => _DelayedState();
}

class _DelayedState extends State<Delayed> with TickerProviderStateMixin {
  Animation animation;
  Animation delayedAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Transform(
                transform: Matrix4.translationValues(
                  animation.value * width,
                  0.0,
                  0.0,
                ),
                child: Center(
                  child: Container(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(
                  delayedAnimation.value * width,
                  0.0,
                  0.0,
                ),
                child: Center(
                  child: Text("Second"),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
