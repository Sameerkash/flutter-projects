import 'package:flutter/material.dart';

class Transforming extends StatefulWidget {
  @override
  _TransformingState createState() => _TransformingState();
}

class _TransformingState extends State<Transforming>
    with SingleTickerProviderStateMixin {
  Animation animation, transformation;
  Animation delayedAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);

    animation = Tween(begin: -.25, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    transformation = BorderRadiusTween(
            begin: BorderRadius.circular(125.0),
            end: BorderRadius.circular(0.0))
        .animate(
            CurvedAnimation(parent: animationController, curve: Curves.ease));
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
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
                     
                    ]),
              ),
            ),
          ),
        );
      },
    );
  }
}
