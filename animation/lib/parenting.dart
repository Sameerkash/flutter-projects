import 'package:flutter/material.dart';

class Parenting extends StatefulWidget {
  @override
  _ParentState createState() => _ParentState();
}

class _ParentState extends State<Parenting> with TickerProviderStateMixin {
  Animation animation, childAnimation;
  Animation delayedAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);

    animation = Tween(begin: -.25, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    childAnimation = Tween(begin: 20.0, end: 125.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    animationController.forward();
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
          body: Align(
            alignment: Alignment.center,
            child: Transform(
              transform:
                  Matrix4.translationValues(animation.value * width, 0.0, 0.0),
              child: Center(
                child: AnimatedBuilder(
                  animation: childAnimation,
                  builder: (BuildContext context, Widget child) {
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: childAnimation.value * 1.25,
                            width: childAnimation.value * 1.25,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 150,
                            width: 150,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          FlatButton(
                            color: Colors.black,
                            child: Text(
                              "Tap",
                              style:
                                  TextStyle(fontSize: 100, color: Colors.white),
                            ),
                            onPressed: () {
                              animationController.reverse();
                              
                            },
                          )
                        ]);
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
