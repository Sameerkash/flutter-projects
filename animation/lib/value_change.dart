import 'package:flutter/material.dart';

class ValueChange extends StatefulWidget {
  @override
  _ValueChangeState createState() => _ValueChangeState();
}

class _ValueChangeState extends State<ValueChange>
    with SingleTickerProviderStateMixin {
  Animation animation;
  //  childAnimation;
  // Animation delayedAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);

    animation = Tween(begin: 10.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    // childAnimation = Tween(begin: 20.0, end: 125.0).animate(
    //     CurvedAnimation(parent: animationController, curve: Curves.easeIn));
   animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
   
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
          body: Align(
              alignment: Alignment.center,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('loading...'),
                    Text(
                      animation.value.toString(),
                      style: TextStyle(fontSize: 52,),
                    ),
                  ],
                ),
              )),
        );
      },
    );
  }
}
